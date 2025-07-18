#This I made with dockerdocs combined with ChatGPT
FROM python:3.10-slim

WORKDIR /app
COPY /app/ app/
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
ENV FLASK_APP=app.main
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000
CMD ["flask", "run"]