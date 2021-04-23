FROM elixir:latest

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN mix local.hex  --force
RUN mix do compile
RUN chmod -R 777  /app/entrypoint.sh

CMD ["/app/entrypoint.sh"]