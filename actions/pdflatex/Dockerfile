# Container image that runs your code
FROM debian:10.9

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/compile_to_pdf.sh"]

RUN apt-get update && \
    apt-get install --yes --no-install-recommends \
    texlive-fonts-recommended \
    texlive-generic-recommended \
    texlive-lang-english \
    texlive-xetex \
    latex2html && \
    apt-get autoclean && apt-get --purge --yes autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY compile_to_pdf.sh /compile_to_pdf.sh

RUN chmod a+x /compile_to_pdf.sh

ENTRYPOINT ["/compile_to_pdf.sh"]
