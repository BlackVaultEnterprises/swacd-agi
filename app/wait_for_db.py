import time
import sys
from sqlalchemy import create_engine
from sqlalchemy.exc import OperationalError
import os

def wait_for_db(max_retries=30, retry_interval=2):
    """Wait for the database to be available."""
    db_uri = os.getenv("DATABASE_URL", "postgresql://postgres:postgres@db:5432/postgres")
    retries = 0
    while retries < max_retries:
        try:
            print(f"Attempt {retries+1}/{max_retries}: Connecting to database...")
            engine = create_engine(db_uri)
            engine.connect()
            print("Database is available!")
            return True
        except OperationalError as e:
            retries += 1
            print(f"Database not available yet. Retry {retries}/{max_retries}")
            print(f"Error: {e}")
            if retries < max_retries:
                print(f"Waiting {retry_interval} seconds...")
                time.sleep(retry_interval)
    
    print("Could not connect to the database after multiple retries")
    return False

if __name__ == "__main__":
    if not wait_for_db():
        sys.exit(1)
