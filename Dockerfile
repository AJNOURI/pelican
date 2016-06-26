FROM python

RUN pip install --upgrade pip
RUN pip install pelican Markdown typogrify
RUN apt-get update && apt-get install -y vim

# Clean up APT
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN mkdir /var/www
VOLUME /var/www
