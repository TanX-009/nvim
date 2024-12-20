local header = {
  "                              ",
  "⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣶⣶⣿⣿⣿⣿⣿⣷⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀",
  "⠀⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀",
  "⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀",
  "⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆",
  "⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷",
  "⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿",
  "⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠁⠈⠻⣿⡿⠁⠈⠙⢿⣿⣿⣿⡇",
  "⠀⠙⠙⢿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠁⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⣸⣿⣿⣿⠀",
  "⠀⡞⠀⢈⣿⣿⣿⣿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣧⠀⢠⣿⣿⣿⠇⠀",
  "⢈⣽⣦⣼⣿⣿⣿⣡⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⠀⣼⣿⣿⠏⠀⠀",
  "⠸⣿⣿⡿⡟⣿⣿⣿⣿⣶⣶⣶⣤⣤⣤⣤⣤⣼⣿⣿⣿⣿⡟⠰⠿⠛⠁⠀⠀⠀",
  "⠀⠙⢿⣹⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⠀⠹⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⢿⣶⣿⣿⣿⣿⣿⣿⠟⡙⣿⣿⣿⣿⣧⡀⠹⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⡟⢸⡇⢸⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠈⣿⢿⣿⣿⣿⣇⠘⠁⢸⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⢹⣼⣿⢸⣿⣿⣶⠀⢸⣿⣿⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⢈⡇⣿⡇⣿⣿⣿⣆⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠉⠻⠧⢹⣿⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "                              ",
  "                              ",
  "                              ",
}

local M = {
  load_on_startup = false,
  -- header = header,
  buttons = {
    { txt = " Get Lost!", keys = "gl", cmd = ":q" },
  },
}

return M
