# Petal

A simple repository exploring the basic deployment of phoenix to digital oceans kubernetes.

This is based of a starting stack, coined as [Petal](https://changelog.com/posts/petal-the-end-to-end-web-stack).

- Phoenix
- Elixir
- Tailwind
- Alpine
- LiveView

I've been a fan of atomic css for a few years, and that today means tailwind.
For most of us, a separate spa, js framework is too much, so `LiveView` and `AlpineJS` are a breath of fresh air.

The plan is to explore deploying this to a digital ocean kubernetes cluster. It comes with a dockerfile and a docker-compose, suitable for local development. There will also be podman support as I'm finding this of interest recently.

Using this as petal base?
You could. Just fork and replace the Petal/petal references. Or look at the early commits. There really isn't a lot to it and if anything doing each step is valuable learning. The chances are high that nuances of each step change with time, e.g. tailwind upgrades, postcss upgrades a dependency, it really is good to step through and figure out each step.

To start:

`docker-compose up`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Original readme begin:

To start your Phoenix server:

- Install dependencies with `mix deps.get`
- Create and migrate your database with `mix ecto.setup`
- Install Node.js dependencies with `npm install` inside the `assets` directory
- Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

- Official website: https://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Forum: https://elixirforum.com/c/phoenix-forum
- Source: https://github.com/phoenixframework/phoenix
