FROM elixir:1.10-alpine as build

# install build dependencies
RUN apk add --update git build-base nodejs npm yarn #python

RUN mkdir petal_demo
WORKDIR petal_demo

# install Hex + Rebar
RUN mix do local.hex --force, local.rebar --force

# set build ENV
ENV MIX_ENV=prod


# Install mix dependecies
COPY mix.* ./
RUN mix deps.get --only $MIX_ENV
RUN mix deps.compile

# Install JS dependencies
COPY ./assets/package*.json ./assets/
RUN yarn --cwd ./assets

# Build front-end
COPY ./assets ./assets
RUN npm run deploy --prefix ./assets

# Copy app code
# COPY config ./config
COPY . ./

RUN mix phx.digest

# build release
COPY rel ./rel
RUN PORT=4001 mix release standard

# prepare release image
FROM alpine:3.9 AS app
# install runtime dependencies
RUN apk add --update openssl postgresql-client

EXPOSE 4001
# copy release to app container
COPY --from=build /petal_demo/_build/prod/rel/standard/ .

CMD ["sh", "/bin/standard", "start"]
