// Based on example from https://github.com/johnste/finicky
module.exports = {
  defaultBrowser: "Safari",
  handlers: [
    {
      // Open apple.com and example.org urls in Safari
      match: finicky.matchHostnames([
        "epam.com",
        /.*\.epam.com$/,      // match all Epam.com subdomains 
        "epa.ms",             // http://epa.ms/holidays, Telescope shortcut
        "urldefense.com",     // yammer access
        /.*\.yammer.com$/,    // yammer access
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
