FROM chromadb/chroma:latest

EXPOSE 8000

# Updated command for newer Chroma versions
CMD ["uvicorn", "chromadb.app:app", "--host", "0.0.0.0", "--port", "8000", "--workers", "1"]