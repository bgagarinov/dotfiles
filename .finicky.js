// Based on example from https://github.com/johnste/finicky
module.exports = {
  // defaultBrowser was: "Safari"
  defaultBrowser: "Firefox",
  handlers: [
    {
      // Open apple.com and example.org urls in Safari
      match: finicky.matchHostnames([
        "epam.com",
        /.*\.epam.com$/,      // match all Epam.com subdomains 
        // http://epa.ms/holidays, Telescope shortcut
        "epa.ms",
        // yammer access
        "urldefense.com",
        /.*\.yammer.com$/,
        "contactmonkey.com", // EPAM digests with that
        /.*\.contactmonkey.com\/api$/,
        // example
        "example.org"]),
      browser: "Google Chrome"
    },
    {
      match: finicky.matchHostnames([
        // docs.google.com
        "docs.google.com", /.*\.docs.google.com$/
      ]),
      browser: "Safari"
    },
    {
      // Open any url including the string "workplace" in Safari:
      match: /workplace/,
      browser: "Safari"
    }
  ]
};
