FROM python:3.8-slim

WORKDIR docs/

RUN apt update \
	&& apt install -y make \
	&& rm -rf /var/lib/apt/lists/*


# COPY . .
# RUN cd documentation/ \
#     && pip install -r requirements.txt --no-cache-dir \
#     && make

# Exec into the running container and run these commands to finish the build
# RUN cd documentation/ \
#     && pip install -r requirements.txt --no-cache-dir \
#     && make

CMD ["sleep", "infinity"]

