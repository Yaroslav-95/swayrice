# Uncomment this to still load settings configured via autoconfig.yml
config.load_autoconfig()

# ------------ Color scheme ----------------

ultramar = {
    'light0': '#faf6e5',
    'light1': '#e6e3d6',
    'light2': '#d2d0c8',
    'light3': '#b0afa8',
    'dark0': '#151517',
    'dark1': '#232328',
    'dark2': '#33333a',
    'dark3': '#404049',
    'yellow': '#e2b55a',
    'orange': '#af5539',
    'red': '#b73030',
    'magenta': '#b48ead',
    'violet': '#9c6992',
    'blue': '#3f6e90',
    'cyan': '#5b8277',
    'cyan2': '#7fac96',
    'green': '#6d974b'
}

## Notifications for websites are retarded

c.content.notifications = False

## Disable JS by default
c.content.javascript.enabled = False

# Enable JS for certain sites
js_whitelist = [
    "*://localhost/*",
    "*://127.0.0.1/*",
    "*://github.com/*",
    "*://duckduckgo.com/*",
    "*://*.youtube.com/*",
    "*://*.google.com/*",
    '*://*.namecheap.com/*',
    '*://*.wikipedia.org/*',
    '*://yandex.ru/*',
    '*://*.yaroslavps.com/*',
    '*://openedu.ru/*',
    '*://developer.mozilla.org/*',
    '*://*.vultr.com/*',
    '*://*.ifmo.ru/*',
    '*://*.4chan.org/*',
    '*://*.4channel.org/*',
]
for site in js_whitelist:
    with config.pattern(site) as p:
        p.content.javascript.enabled = True

## Disable 3rd party cookies
c.content.cookies.accept = "no-3rdparty"

## Pretend that we are Chrome
c.content.headers.user_agent = "Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}"

## Downloads

# Automatically remove finished downloads from list
c.downloads.remove_finished = 3000

## Default search engine

# c.url.searchengines = { "DEFAULT": "https://searx.be/?q={}" }
c.url.searchengines = { "DEFAULT": "https://srx.yaroslavps.com/?q={}" }

# c.url.default_page = "https://searx.be"
c.url.default_page = "https://srx.yaroslavps.com"

# c.url.start_pages = "https://searx.be"
c.url.start_pages = "https://srx.yaroslavps.com"

## Default fonts
c.fonts.default_size = "10pt"

## Prefer dark mode in websites that support it
c.colors.webpage.prefers_color_scheme_dark = True

## Background color of the completion widget category headers.
## Type: QssColor
c.colors.completion.category.bg = ultramar['dark0']

## Bottom border color of the completion widget category headers.
## Type: QssColor
c.colors.completion.category.border.bottom = ultramar['dark0']

## Top border color of the completion widget category headers.
## Type: QssColor
c.colors.completion.category.border.top = ultramar['dark0']

## Foreground color of completion widget category headers.
## Type: QtColor
c.colors.completion.category.fg = ultramar['light1']

## Background color of the completion widget for even rows.
## Type: QssColor
c.colors.completion.even.bg = ultramar['dark1']

## Text color of the completion widget.
## Type: QtColor
c.colors.completion.fg = ultramar['light1']

## Background color of the selected completion item.
## Type: QssColor
c.colors.completion.item.selected.bg = ultramar['cyan']

## Bottom border color of the selected completion item.
## Type: QssColor
c.colors.completion.item.selected.border.bottom = ultramar['cyan']

## Top border color of the completion widget category headers.
## Type: QssColor
c.colors.completion.item.selected.border.top = ultramar['cyan']

## Foreground color of the selected completion item.
## Type: QtColor
c.colors.completion.item.selected.fg = ultramar['dark0']

## Foreground color of the matched text in the completion.
## Type: QssColor
c.colors.completion.match.fg = ultramar['yellow']

## Background color of the completion widget for odd rows.
## Type: QssColor
c.colors.completion.odd.bg = ultramar['dark3']

## Color of the scrollbar in completion view
## Type: QssColor
c.colors.completion.scrollbar.bg = ultramar['dark3']

## Color of the scrollbar handle in completion view.
## Type: QssColor
c.colors.completion.scrollbar.fg = ultramar['light2']

## Background color for the download bar.
## Type: QssColor
c.colors.downloads.bar.bg = ultramar['dark0']

## Background color for downloads with errors.
## Type: QtColor
c.colors.downloads.error.bg = ultramar['red']

## Foreground color for downloads with errors.
## Type: QtColor
c.colors.downloads.error.fg = ultramar['light1']

## Color gradient start for download backgrounds.
## Type: QtColor
# c.colors.downloads.start.bg = '#0000aa'

## Color gradient start for download text.
## Type: QtColor
c.colors.downloads.start.fg = ultramar['light1']

## Color gradient stop for download backgrounds.
## Type: QtColor
# c.colors.downloads.stop.bg = '#00aa00'

## Color gradient end for download text.
## Type: QtColor
# c.colors.downloads.stop.fg = ultramar['light1']

## Color gradient interpolation system for download backgrounds.
## Type: ColorSystem
## Valid values:
##   - rgb: Interpolate in the RGB color system.
##   - hsv: Interpolate in the HSV color system.
##   - hsl: Interpolate in the HSL color system.
##   - none: Don't show a gradient.
# c.colors.downloads.system.bg = 'rgb'

## Color gradient interpolation system for download text.
## Type: ColorSystem
## Valid values:
##   - rgb: Interpolate in the RGB color system.
##   - hsv: Interpolate in the HSV color system.
##   - hsl: Interpolate in the HSL color system.
##   - none: Don't show a gradient.
# c.colors.downloads.system.fg = 'rgb'

## CSS border value for hints
c.hints.border = '1px solid ' + ultramar['dark0'];

## Background color for hints. Note that you can use a `rgba(...)` value
## for transparency.
## Type: QssColor
c.colors.hints.bg = ultramar['cyan']

## Font color for hints.
## Type: QssColor
c.colors.hints.fg = ultramar['light1']

## Font color for the matched part of hints.
## Type: QssColor
c.colors.hints.match.fg = ultramar['dark0']

## Background color of the keyhint widget.
## Type: QssColor
c.colors.keyhint.bg = 'rgba(27, 30, 37, 80%)'

## Text color for the keyhint widget.
## Type: QssColor
c.colors.keyhint.fg = ultramar['light1']

## Highlight color for keys to complete the current keychain.
## Type: QssColor
c.colors.keyhint.suffix.fg = ultramar['yellow']

## Background color of an error message.
## Type: QssColor
c.colors.messages.error.bg = ultramar['red']

## Border color of an error message.
## Type: QssColor
c.colors.messages.error.border = ultramar['red']

## Foreground color of an error message.
## Type: QssColor
c.colors.messages.error.fg = ultramar['light1']

## Background color of an info message.
## Type: QssColor
c.colors.messages.info.bg = ultramar['dark0']

## Border color of an info message.
## Type: QssColor
c.colors.messages.info.border = ultramar['dark0']

## Foreground color an info message.
## Type: QssColor
c.colors.messages.info.fg = ultramar['light1']

## Background color of a warning message.
## Type: QssColor
c.colors.messages.warning.bg = ultramar['orange']

## Border color of a warning message.
## Type: QssColor
c.colors.messages.warning.border = ultramar['orange']

## Foreground color a warning message.
## Type: QssColor
c.colors.messages.warning.fg = ultramar['light1']

## Background color for prompts.
## Type: QssColor
c.colors.prompts.bg = ultramar['dark1']

## Border used around UI elements in prompts.
## Type: String
c.colors.prompts.border = '1px solid ' + ultramar['light1']

## Foreground color for prompts.
## Type: QssColor
c.colors.prompts.fg = ultramar['light1']

## Background color for the selected item in filename prompts.
## Type: QssColor
c.colors.prompts.selected.bg = ultramar['dark0']

## Background color of the statusbar in caret mode.
## Type: QssColor
c.colors.statusbar.caret.bg = ultramar['violet']

## Foreground color of the statusbar in caret mode.
## Type: QssColor
c.colors.statusbar.caret.fg = ultramar['light1']

## Background color of the statusbar in caret mode with a selection.
## Type: QssColor
c.colors.statusbar.caret.selection.bg = ultramar['violet']

## Foreground color of the statusbar in caret mode with a selection.
## Type: QssColor
c.colors.statusbar.caret.selection.fg = ultramar['light1']

## Background color of the statusbar in command mode.
## Type: QssColor
c.colors.statusbar.command.bg = ultramar['dark0']

## Foreground color of the statusbar in command mode.
## Type: QssColor
c.colors.statusbar.command.fg = ultramar['light1']

## Background color of the statusbar in private browsing + command mode.
## Type: QssColor
c.colors.statusbar.command.private.bg = ultramar['magenta']

## Foreground color of the statusbar in private browsing + command mode.
## Type: QssColor
c.colors.statusbar.command.private.fg = ultramar['light1']

## Background color of the statusbar in insert mode.
## Type: QssColor
c.colors.statusbar.insert.bg = ultramar['green']

## Foreground color of the statusbar in insert mode.
## Type: QssColor
c.colors.statusbar.insert.fg = ultramar['dark3']

## Background color of the statusbar.
## Type: QssColor
c.colors.statusbar.normal.bg = ultramar['dark0']

## Foreground color of the statusbar.
## Type: QssColor
c.colors.statusbar.normal.fg = ultramar['light1']

## Background color of the statusbar in passthrough mode.
## Type: QssColor
c.colors.statusbar.passthrough.bg = ultramar['blue']

## Foreground color of the statusbar in passthrough mode.
## Type: QssColor
c.colors.statusbar.passthrough.fg = ultramar['light1']

## Background color of the statusbar in private browsing mode.
## Type: QssColor
c.colors.statusbar.private.bg = ultramar['magenta']

## Foreground color of the statusbar in private browsing mode.
## Type: QssColor
c.colors.statusbar.private.fg = ultramar['light1']

## Background color of the progress bar.
## Type: QssColor
c.colors.statusbar.progress.bg = ultramar['light1']

## Foreground color of the URL in the statusbar on error.
## Type: QssColor
c.colors.statusbar.url.error.fg = ultramar['red']

## Default foreground color of the URL in the statusbar.
## Type: QssColor
c.colors.statusbar.url.fg = ultramar['light1']

## Foreground color of the URL in the statusbar for hovered links.
## Type: QssColor
c.colors.statusbar.url.hover.fg = ultramar['blue']

## Foreground color of the URL in the statusbar on successful load
## (http).
## Type: QssColor
c.colors.statusbar.url.success.http.fg = ultramar['light1']

## Foreground color of the URL in the statusbar on successful load
## (https).
## Type: QssColor
c.colors.statusbar.url.success.https.fg = ultramar['cyan']

## Foreground color of the URL in the statusbar when there's a warning.
## Type: QssColor
c.colors.statusbar.url.warn.fg = ultramar['yellow']

## Background color of the tab bar.
## Type: QtColor
c.colors.tabs.bar.bg = ultramar['dark0']

## Background color of unselected even tabs.
## Type: QtColor
c.colors.tabs.even.bg = ultramar['dark0']

## Foreground color of unselected even tabs.
## Type: QtColor
c.colors.tabs.even.fg = ultramar['light2']

## Color for the tab indicator on errors.
## Type: QtColor
c.colors.tabs.indicator.error = ultramar['red']

## Color gradient start for the tab indicator.
## Type: QtColor
c.colors.tabs.indicator.start = ultramar['blue']

## Color gradient end for the tab indicator.
## Type: QtColor
c.colors.tabs.indicator.stop = ultramar['cyan']

## Color gradient interpolation system for the tab indicator.
## Type: ColorSystem
## Valid values:
##   - rgb: Interpolate in the RGB color system.
##   - hsv: Interpolate in the HSV color system.
##   - hsl: Interpolate in the HSL color system.
##   - none: Don't show a gradient.
# c.colors.tabs.indicator.system = 'rgb'

## Background color of unselected odd tabs.
## Type: QtColor
c.colors.tabs.odd.bg = ultramar['dark2']

## Foreground color of unselected odd tabs.
## Type: QtColor
c.colors.tabs.odd.fg = ultramar['light2']

## Background color of selected even tabs.
## Type: QtColor
c.colors.tabs.selected.even.bg = ultramar['cyan2']

## Foreground color of selected even tabs.
## Type: QtColor
c.colors.tabs.selected.even.fg = ultramar['dark0']

## Background color of selected odd tabs.
## Type: QtColor
c.colors.tabs.selected.odd.bg = ultramar['cyan2']

## Foreground color of selected odd tabs.
## Type: QtColor
c.colors.tabs.selected.odd.fg = ultramar['dark0']

## Background color for webpages if unset (or empty to use the theme's
## color)
## Type: QtColor
# c.colors.webpage.bg = ultramar['dark0']

# ------------ Key bindings ----------------

# Why end the shortcuts in 9 when you still have one more useful key (0)?
config.bind('<Alt-9>', 'tab-focus 9', mode='normal')
config.bind('<Alt-0>', 'tab-focus -1', mode='normal')

# Open links externally with xdg-open (i.e. to open youtube videos with mpv, or
# images with sxiv or imv, etc.)
config.bind(',x', 'spawn xdg-open {url}')
config.bind(',X', 'hint links spawn xdg-open {hint-url}')

# Bindings for Russian keyboard layout (my most used bindings)

config.bind('Р', 'back', mode='normal')
config.bind('О', 'tab-next', mode='normal')
config.bind('Л', 'tab-prev', mode='normal')
config.bind('Д', 'forward', mode='normal')

config.bind('щ', 'set-cmd-text :open ', mode='normal')
config.bind('Щ', 'set-cmd-text :open -t ', mode='normal')
config.bind('пщ', 'set-cmd-text :open {url:pretty}', mode='normal')
config.bind('пЩ', 'set-cmd-text :open -t -r {url:pretty}', mode='normal')

config.bind('г', 'undo', mode='normal')
config.bind('в', 'tab-close', mode='normal')
config.bind('пС', 'tab-clone', mode='normal')

config.bind('а', 'hint', mode='normal')
config.bind('А', 'hint all tab', mode='normal')

config.bind('ш', 'reload', mode='normal')
config.bind('Ш', 'reload -f', mode='normal')

config.bind('р', 'scroll left', mode='normal')
config.bind('о', 'scroll down', mode='normal')
config.bind('л', 'scroll up', mode='normal')
config.bind('д', 'scroll right', mode='normal')
config.bind('пп', 'scroll-to-perc 0', mode='normal')
config.bind('П', 'scroll-to-perc', mode='normal')

config.bind('ш', 'enter-mode insert', mode='normal')

config.bind('Т', 'search-prev', mode='normal')
config.bind('т', 'search-next', mode='normal')

