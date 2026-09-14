# ---------- BUILD STAGE ----------
FROM python:3.11-slim AS build
WORKDIR /app
COPY app/server.py .
RUN pip install flask --target /app/deps

# ---------- RUNTIME STAGE ----------
FROM python:3.11-slim
WORKDIR /app
COPY --from=build /app/server.py .
COPY --from=build /app/deps ./deps
ENV PYTHONPATH="/app/deps"
CMD ["python", "server.py"]
