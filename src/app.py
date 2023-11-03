from fastapi import FastAPI, APIRouter
from classifier import Classifier
import logging

logging.basicConfig(level = logging.INFO)

logger = logging.getLogger(__name__)

app = FastAPI()
router = APIRouter()
classifier = Classifier()

@router.get("/")
async def home():
  return {"message": "Machine Learning service"}

@router.post("/sentiment")
async def data(data: dict):
  try:
    input_text = data["text"]
    res = classifier.get_sentiment_label_and_score(input_text)
    return res
  except Exception as e:
    logger.error("Something went wrong")

app.include_router(router)
