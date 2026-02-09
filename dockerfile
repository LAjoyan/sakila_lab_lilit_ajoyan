FROM python:3.11-slim

WORKDIR /app

COPY pyproject.toml uv.lock ./
RUN pip install uv && uv pip install --system --project .


COPY . .

EXPOSE 8501

CMD ["streamlit", "run", "dashboard/app.py"]
