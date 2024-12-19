from transformers import pipeline

sentiment_pipeline = pipeline("sentiment-analysis", model="distilbert-base-uncased-finetuned-sst-2-english")
data = ["I loved this video.", "I hated this video."]
results = sentiment_pipeline(data)
print(results)


