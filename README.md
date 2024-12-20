# Twitter Sentiment Analysis

## Set up environment
I am assuming python and pip are already installed on your system. If not, please install them first.

1. Enter a python virtual environment
    On Linux/MacOS
    ```bash
    python -m venv venv
    source venv/bin/activate
    ```
    On Windows
    ```bash
    python -m venv venv
    venv\Scripts\activate
    ```
2. Download the packages
    ```bash
    pip install -r requirements.txt
    ```

## Code
The project is located in `[./twitter_sentiment_analysis.ipynb](./twitter_sentiment.ipynb)`. You can run the code in a Jupyter notebook. 

The otherfile `[sentiment.py](./sentiment.py)` contains a small playground that I had to test a pretrained sentiment analysis model. 

## Data
The data is located in the `data` folder. The data is a csv file containing tweets and their sentiment. I have included only the zip files as it is too large to be uploaded to GitHub. You can download the data from [here](https://www.kaggle.com/kazanova/sentiment140).

Running the notebook might result in long compute times as I preprocess the data and train the model. Therefore, I have included the trained model in the `model` folder. You can load the model and use it to predict the sentiment of a tweet.

I use joblib to store it, so you have to use joblib to load it. 

```python
import joblib

model = joblib.load('./models/sentiment_classifier.joblib')
```