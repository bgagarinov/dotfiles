// Based on example from https://github.com/johnste/finicky
module.exports = {
  defaultBrowser: "Safari",
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
      // Open any url including the string "workplace" in Firefox
      match: /workplace/,
      browser: "Firefox"
    }
  ]
};
