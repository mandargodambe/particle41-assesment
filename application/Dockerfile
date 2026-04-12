FROM python:3.12-slim

WORKDIR /app

# Copy requirements first (better caching)
COPY requirements.txt app.py /app/

# Install deps + create user + fix permissions in one layer
RUN pip install --no-cache-dir -r requirements.txt 
    
# Fix ownership only for new files
RUN useradd -m appuser \
    && chown -R appuser:appuser /app

# Switch user
USER appuser

EXPOSE 8080

CMD ["gunicorn", "-w", "2", "-b", "0.0.0.0:8080", "app:app"]