FROM python:3.10.5-slim-buster AS poetry

ENV HOME=/usr/local/lib

RUN set -eux; \
        apt-get update; \
        apt-get install -y --no-install-recommends \
            curl \
        ; \
	rm -rf /var/lib/apt/lists/* ; \
    curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python - ;

ENV PATH=$HOME/.poetry/bin:$PATH 

CMD ["poetry"]

FROM poetry

WORKDIR /usr/src/app

COPY . .

RUN poetry install

CMD ["poetry", "run", "python", "bot.py"]





