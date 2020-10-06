FROM python:3.8.6-alpine

RUN useradd -ms /bin/bash docker
RUN su docker

WORKDIR /src

COPY requirements.txt .
RUN pip install -r requirements.txt

CMD ["jupyter", "notebook", "--allow-root", "--notebook-dir=.", "--ip=0.0.0.0", "--port=8888", "--no-browser"]
