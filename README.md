# FastAPI Task Management API

A simple task management API built with FastAPI, SQLAlchemy, and PostgreSQL.

## Setup and Run

1. Make sure you have Docker and Docker Compose installed
2. Run `docker-compose up --build`
3. Access the API at http://localhost:8000
4. API documentation is available at http://localhost:8000/docs

## API Endpoints

- `POST /tasks/` - Create a new task
- `GET /tasks/` - List all tasks
- `GET /tasks/{task_id}` - Get a specific task
- `PUT /tasks/{task_id}` - Update a task
- `DELETE /tasks/{task_id}` - Delete a task

## Database Migrations

Migrations are handled by Alembic:

- To create a new migration: `docker-compose exec app alembic revision --autogenerate -m "description"`
- To apply migrations: `docker-compose exec app alembic upgrade head`
