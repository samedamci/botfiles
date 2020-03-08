#                   _         _
#      __ _  _   _ | |_  ___ | |__   _ __  ___ __      __ ___   ___  _ __
#     / _` || | | || __|/ _ \| '_ \ | '__|/ _ \\ \ /\ / // __| / _ \| '__|
#    | (_| || |_| || |_|  __/| |_) || |  | (_) |\ V  V / \__ \|  __/| |
#     \__, | \__,_| \__|\___||_.__/ |_|   \___/  \_/\_/  |___/ \___||_|
#        |_|

#~~~~~~~~~~~
# keepassxc 
#~~~~~~~~~~~
config.bind('<Alt-Shift-u>', 'spawn --userscript qute-keepassxc --key C4CBEF7165AF77F85F602943D7B78D6D41CF569E', mode='insert')
config.bind('pw', 'spawn --userscript qute-keepassxc --key C4CBEF7165AF77F85F602943D7B78D6D41CF569E', mode='normal')

#~~~~~~~~
# config
#~~~~~~~~
c.colors.completion.category.bg = '#0a0200'
c.colors.completion.category.border.bottom = '#0a0200'
c.colors.completion.category.border.top = '#0a0200'
c.colors.completion.item.selected.bg = '#0e0f0e'
c.colors.completion.item.selected.fg = '#ffffff'
c.colors.completion.odd.bg = '#0a0200'
c.colors.completion.even.bg = '#0a0200'
c.colors.completion.fg = '#ffffff'
c.colors.completion.item.selected.border.top = '#757575'
c.colors.completion.item.selected.border.bottom = '#757575'

c.colors.tabs.bar.bg = '#0a0200'
c.colors.tabs.even.bg = '#0a0200'
c.colors.tabs.even.fg = '#ffffff'
c.colors.tabs.odd.bg = '#0a0200'
c.colors.tabs.selected.even.bg = '#666'
c.colors.tabs.selected.odd.bg = '#666'

c.url.start_pages = 'file:///home/samedamci/.config/homepage/index.html'
c.url.default_page = 'file:///home/samedamci/.config/homepage/index.html'

config.set("tabs.padding", {"top": 1, "bottom": 2, "left": 5, "right": 5})
config.set("tabs.indicator.width", 0)
config.set("tabs.favicons.scale", 1.2)

#c.fonts.monospace = '"DejaVu Sans Mono"'
