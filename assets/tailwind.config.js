module.exports = {
  purge: {
    enabled: process.env.NODE_ENV === "production",
    content: [
      "../lib/**/*.ex",
      "../lib/**/*.eex",
      "../lib/**/*.leex",
      "../lib/**/*_view.ex",
      "./js/**/*.js",
    ],
    options: {
      whitelist: [/phx/, /nprogress/],
    },
    darkMode: false, // or 'media' or 'class'
    theme: {
      extend: {},
    },
    variants: {
      extend: {},
    },
    plugins: [],
  },
};
