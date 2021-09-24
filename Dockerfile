FROM paperspace/first-order-model:latest
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive
ENV MODEL=config/vox-256.yaml
RUN apt update && apt-get install python3-tk -y
ADD . ./
CMD ["uvicorn", "server:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]
