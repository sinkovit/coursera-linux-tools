FROM jupyter/minimal-notebook:latest

# Switch to root for system-level changes
USER root

# Restore man pages and install man-db
RUN yes | unminimize && \
    apt-get update && \
    apt-get install -y man-db less vim && \
    rm -rf /var/lib/apt/lists/*

# Switch back to default non-root user
USER $NB_UID
