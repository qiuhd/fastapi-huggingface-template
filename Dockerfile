FROM nvidia/cuda:12.4.1-devel-ubuntu22.04

RUN apt-get update 
RUN apt-get install -y python3-pip
RUN pip install transformers datasets soundfile speechbrain accelerate
# CMD ["python", "src/app.py"]

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80", "--app-dir", "src"]