local db = require('dashboard')

db.custom_header = {
[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⠿⠿⠿⠻⠿⢿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
[[⣿⣿⣿⣿⣿⣿⡿⠟⠉⠈⠉⠉⠄⢠⠄⠄⢀⠄⠄⡬⠛⢿⢿⣿⣿⣿⣿⣿⣿⣿]],
[[⣿⣿⣿⡿⡿⠉⠄⠄⠄⠄⠄⠄⠅⠄⠅⠄⠐⠄⠄⠄⠁⠤⠄⠛⢿⢿⣿⣿⣿⣿]],
[[⣿⣿⣿⠍⠄⠄⠄⠄⠄⠄⠄⠄⣀⣀⠄⣀⣠⣀⠄⢈⣑⣢⣤⡄⠔⠫⢻⣿⣿⣿]],
[[⣿⡏⠂⠄⠄⢀⣠⣤⣤⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣔⠂⡙⣿⣿]],
[[⡿⠄⠄⣠⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣈⣿]],
[[⠇⠄⢠⣿⣿⣿⣿⣿⡿⠿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠿⠿⢿⡿⣿⣿⣿⣿⣿⡧⣼]],
[[⠄⠄⠽⠿⠟⠋⠁⠙⠄⢠⣿⡿⢿⣿⣿⣿⣿⣿⣷⡠⢌⣧⠄⠈⠛⠉⠛⠐⡋⢹]],
[[⠄⠄⠄⠄⠄⠄⠄⢀⣠⣾⡿⠑⠚⠋⠛⠛⠻⢿⣿⣿⣶⣤⡄⢀⣀⣀⡀⠈⠄⢸]],
[[⣄⠄⠄⠄⢰⣾⠟⠋⠛⠛⠂⠄⠄⠄⠄⠒⠂⠛⡿⢟⠻⠃⠄⢼⣿⣿⣷⠤⠁⢸]],
[[⣿⡄⠄⢀⢝⢓⠄⠄⠄⠄⠄⠄⠄⠄⠠⠠⠶⢺⣿⣯⣵⣦⣴⣿⣿⣿⣿⡏⠄⢸]],
[[⣿⣿⡀⠄⠈⠄⠄⠄⠠⢾⣷⣄⢄⣀⡈⡀⠠⣾⣿⣿⣿⣿⣿⣿⣿⡿⠿⢏⣀⣾]],
[[⣿⣿⣷⣄⠄⠄⠄⢀⠈⠈⠙⠑⠗⠙⠙⠛⠄⠈⠹⠻⢿⡻⣿⠿⢿⣝⡑⢫⣾⣿]],
[[⣿⣿⣿⣿⣿⣆⡀⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠑⠐⠚⣨⣤⣾⣿⣿]],
[[⣿⣿⣿⣿⣿⣿⣿ STEFAN OLIVIER ⣿⣿⣿⣿⣿⣿⣿]],
[[⣿⣿⣿⣿ Friendly ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
[[⣿⣿⣿⣿⣿⣿⣿ Neighbourhood ⣿⣿⣿⣿⣿⣿⣿⣿]],
[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ Sloth ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
[[                              ]],
[[   ~- Welcome, traveller -~   ]],
}

db.preview_file_height = 12
db.preview_file_width = 40
db.hide_statusline = true
db.hide_tabline = true

db.custom_center = {
    {icon = '  ',
        desc = 'Open Browser                            ',
        action = 'NvimTreeToggle',
        shortcut = 'Ctrl-B'},
    {icon = '  ',
        desc = 'Find  File                              ',
        action = 'Telescope find_files find_command=rg,--hidden,--files',
        shortcut = 'Ctrl-P'},
    {icon = '﬍  ',
        desc = 'Find  Word                              ',
        action = 'Telescope live_grep',
        shortcut = 'Ctrl-F'},
}
