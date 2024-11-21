# Base Image
FROM debian:bookworm-slim

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV START_URL="https://www.fast.com"

# Install essential tools and libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
    wget \
    python3-pyqt5 \
    python3-pyqt5.qtwebengine \
    libqt5gui5 \
    libqt5webkit5 \
    libqt5webenginecore5 \
    libqt5webenginewidgets5 \
    libxcb-keysyms1 \
    libnss3 \
    libasound2 \
    libxkbcommon0 \
    fonts-liberation \
    cage \
    qutebrowser \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy qutebrowser config
COPY qute-config.py /root/.config/qutebrowser/config.py

# Copy startup script
COPY start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh

# Expose port (if needed for VNC or debugging)
EXPOSE 8080

# Entrypoint
ENTRYPOINT ["/usr/local/bin/start.sh"]
