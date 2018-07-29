FROM microsoft/vsts-agent:ubuntu-16.04-docker-17.12.0-ce-standard

# Add Yarn capability
ENV yarn=/usr/bin/yarn

# Install Google Chrome
RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add - \
    && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list \
    && apt-get update \
    && apt-get -y install google-chrome-stable \
    && rm -rf /var/lib/apt/lists/*
ENV chrome=/usr/bin/google-chrome
