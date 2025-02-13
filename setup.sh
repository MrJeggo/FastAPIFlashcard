#!/bin/bash

# Define project name
PROJECT_NAME="flashcard_app"

# Create project directories
mkdir -p $PROJECT_NAME/app/routes
mkdir -p $PROJECT_NAME/tests

# Create empty Python files
touch $PROJECT_NAME/app/__init__.py
touch $PROJECT_NAME/app/main.py
touch $PROJECT_NAME/app/models.py
touch $PROJECT_NAME/app/database.py
touch $PROJECT_NAME/app/crud.py
touch $PROJECT_NAME/app/routes/__init__.py
touch $PROJECT_NAME/app/routes/flashcards.py
touch $PROJECT_NAME/app/config.py
touch $PROJECT_NAME/tests/test_main.py
touch $PROJECT_NAME/.env
touch $PROJECT_NAME/requirements.txt
touch $PROJECT_NAME/README.md
touch $PROJECT_NAME/run.py

# Add dependencies
echo "fastapi
uvicorn
sqlalchemy
pydantic
python-dotenv
pytest
httpx" > $PROJECT_NAME/requirements.txt

echo "Project setup completed. Navigate to $PROJECT_NAME and start coding!"

