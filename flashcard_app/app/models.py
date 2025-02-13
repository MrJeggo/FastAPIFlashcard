from pydantic import BaseModel
from typing import Optional

# Pydantic model for request validation
class Flashcard(BaseModel):
    question: str
    answer: str
    category: Optional[str] = None
