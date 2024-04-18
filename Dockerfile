FROM nvidia/cuda:12.4.1-devel-ubuntu22.04

ENV HTTP_PROXY http://bjproxy2.cicc.group:8080
ENV HTTPS_PROXY http://bjproxy2.cicc.group:8080

RUN apt-get update 
RUN apt-get install -y python-pip3
RUN pip3 install transformers
# CMD ["python", "src/app.py"]

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80", "--app-dir", "src"]