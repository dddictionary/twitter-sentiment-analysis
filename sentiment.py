from transformers import pipeline

sentiment_pipeline = pipeline("sentiment-analysis", model="distilbert-base-uncased-finetuned-sst-2-english")
data = [":(", "I don't dislike this product."]
results = sentiment_pipeline(data)
print(results)


