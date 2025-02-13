from fastapi import FastAPI
from typing import List
from .models import Flashcard

app = FastAPI()

# Define your flashcards storage
flashcards = []

# Endpoint to create a new flashcard
@app.post("/flashcards/")
async def create_flashcard(flashcard: Flashcard):
    flashcards.append(flashcard)
    return {"message": "Flashcard created successfully"}

# Endpoint to get all flashcards
@app.get("/flashcards/")
async def get_flashcards():
    return flashcards

# Endpoint to get flashcards by category
@app.get("/flashcards/{category}")
async def get_flashcards_by_category(category: str):
    return [card for card in flashcards if card.category == category]
