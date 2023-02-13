FROM python:3.11.1 

RUN pip install websockets
COPY app.py /usr/bin
RUN chmod +x /usr/bin/app.py

EXPOSE 443
CMD ["python", "/usr/bin/app.py"]