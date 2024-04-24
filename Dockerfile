FROM python:latest

RUN apt-get update 
RUN apt-get install -y python3-pip
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN pip install torch 
RUN rm -Rf /root/.cache/pip
RUN pip install transformers 
RUN rm -Rf /root/.cache/pip
RUN pip install datasets
RUN rm -Rf /root/.cache/pip
RUN pip install speechbrain 
RUN rm -Rf /root/.cache/pip
RUN pip install soundfile
RUN rm -Rf /root/.cache/pip
RUN pip install speechbrain
RUN rm -Rf /root/.cache/pip
RUN pip install accelerate
RUN rm -Rf /root/.cache/pip

# CMD ["python", "src/app.py"]

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80", "--app-dir", "src"]