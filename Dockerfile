FROM python:3.12-slim

WORKDIR /app

COPY pyproject.toml .
COPY app.py .
RUN pip install --no-cache-dir .

EXPOSE 8080

CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]
