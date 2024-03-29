c.colors.webpage.preferred_color_scheme = 'dark'
c.content.blocking.adblock.lists = [
    'https://easylist.to/easylist/easylist.txt',
    'https://easylist.to/easylist/easyprivacy.txt',
    'https://secure.fanboy.co.nz/fanboy-annoyance.txt',
    'https://easylist.to/easylistgermany/easylistgermany.txt'
]
c.content.blocking.method = 'adblock'
c.fonts.default_size = '16pt'
c.input.insert_mode.auto_load = True
c.input.insert_mode.leave_on_load = True
c.scrolling.smooth = True
c.tabs.background = False
c.tabs.show = 'multiple'
c.url.default_page = 'https://svenmoeller.xyz'
c.url.searchengines = {
    'DEFAULT': 'https://www.mojeek.com/search?q={}',
    'ap': 'https://archlinux.org/packages/?q={}',
    'aur': 'https://aur.archlinux.org/packages?K={}',
    'aw': 'https://wiki.archlinux.org/?search={}',
    'ddg': 'https://duckduckgo.com/?q={}',
    'gh': 'https://github.com/search?q={}',
    'lg': 'http://libgen.li/search.php?req={}',
    'w': 'https://en.wikipedia.org/w/index.php?search={}',
    'wd': 'https://de.wikipedia.org/w/index.php?search={}'
}
c.url.start_pages = ['https://svenmoeller.xyz']

config.load_autoconfig(False) # Load config done via GUI

# Key bindings
config.bind('yf', 'hint links yank')
config.bind(',y', 'hint links spawn mpv {hint-url}')
config.bind('gh', 'home')
config.bind('gr', 'spawn --userscript readability-js')
config.bind('<Ctrl-b>', 'spawn -v todo.sh add {url} @reading')
config.bind('<Ctrl-s>', 'spawn lh -g {url}')
config.bind(',s', 'hint links spawn lh -g {hint-url}')
