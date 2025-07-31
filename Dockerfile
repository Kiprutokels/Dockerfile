FROM chromadb/chroma:latest

# Set environment variables
ENV CHROMA_SERVER_HOST=0.0.0.0
ENV CHROMA_SERVER_HTTP_PORT=8000
ENV CHROMA_SERVER_GRPC_PORT=50051

# Create data directory
RUN mkdir -p /data/chroma

# Run Chroma server (new syntax)
CMD ["chroma", "run", "--path", "/data/chroma"]