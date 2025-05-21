#!/bin/bash

echo "Waiting for API to be available..."
until $(curl --output /dev/null --silent --head --fail http://localhost:8000); do
    printf '.'
    sleep 5
done

echo -e "\nAPI is up! Testing endpoints..."

# Create a task
echo -e "\nCreating a task..."
CREATE_RESPONSE=$(curl -s -X POST "http://localhost:8000/tasks/" \
  -H "Content-Type: application/json" \
  -d '{"title":"Test Task", "description":"This is a test task"}')
echo $CREATE_RESPONSE

# Extract the task ID
TASK_ID=$(echo $CREATE_RESPONSE | grep -o '"id":[0-9]*' | grep -o '[0-9]*')

# Get all tasks
echo -e "\nGetting all tasks..."
curl -s -X GET "http://localhost:8000/tasks/"

# Get the specific task
echo -e "\nGetting task $TASK_ID..."
curl -s -X GET "http://localhost:8000/tasks/$TASK_ID"

# Update the task
echo -e "\nUpdating task $TASK_ID..."
curl -s -X PUT "http://localhost:8000/tasks/$TASK_ID" \
  -H "Content-Type: application/json" \
  -d '{"title":"Updated Task", "completed":true}'

# Get the updated task
echo -e "\nGetting updated task $TASK_ID..."
curl -s -X GET "http://localhost:8000/tasks/$TASK_ID"

# Delete the task
echo -e "\nDeleting task $TASK_ID..."
curl -s -X DELETE "http://localhost:8000/tasks/$TASK_ID"

# Verify deletion
echo -e "\nVerifying task $TASK_ID is deleted..."
curl -s -X GET "http://localhost:8000/tasks/$TASK_ID"

echo -e "\nTest completed!"
