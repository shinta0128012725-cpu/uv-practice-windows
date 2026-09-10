FROM python:3.12

WORKDIR /app

COPY pyproject.toml uv.lock README.md ./
COPY src ./src
RUN pip install uv
RUN uv sync

COPY . .

CMD ["uv", "run", "python", "main.py"]

