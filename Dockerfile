# Use the official Chroma DB image
FROM chromadb/chroma:latest

# Expose port 8000 (the port Chroma runs on)
EXPOSE 8000

# Command to run Chroma when the container starts
CMD ["chroma", "run", "--path", "/data", "--host", "0.0.0.0", "--port", "8000"]