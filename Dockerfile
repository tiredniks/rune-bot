FROM python:3.11-slim

WORKDIR /app

# Копируем файлы
COPY requirements.txt .
COPY bot_fixed.py .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Запускаем бота
CMD ["python", "bot_fixed.py"]
