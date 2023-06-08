# use Python 3.10
FROM python:3.10

# clone code and install requirements
RUN mkdir /apps && cd /apps && git clone https://github.com/ImYrS/aliyun-auto-signin.git && cd /apps/aliyun-auto-signin && pip install -r requirements.txt

# work dir aliyun-auto-signin
WORKDIR /apps/aliyun-auto-signin

# entrypoint 
CMD ["python", "app.py"]