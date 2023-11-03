from transformers import AutoModelForSequenceClassification, TFAutoModelForSequenceClassification, AutoTokenizer

# download the model
MODEL = "cardiffnlp/twitter-roberta-base-sentiment"
tokenizer = AutoTokenizer.from_pretrained(MODEL)
model = AutoModelForSequenceClassification.from_pretrained(MODEL)

# save the model
save_dir = "./models/roberta-base"
tokenizer.save_pretrained(save_dir)
model.save_pretrained(save_dir)