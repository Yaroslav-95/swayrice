import os
import subprocess

# Still load settings configured via autoconfig.yml
config.load_autoconfig()

# ------------ Color scheme ----------------

ultramar = {
    'light0':	'#fcf8e2',
    'light1':	'#f2eccf',
    'light2':	'#e0d8b3',
    'light3':	'#d6cda3',
    'light4':	'#ccbe99',
    'dark0':	'#151517',
    'dark1':	'#212128',
    'dark2':	'#32323e',
    'dark3':	'#424a4d',
    'dark4':	'#424a4d',
    'yellow':	'#e2b55a',
    'orange':	'#af5539',
    'red':      '#b73030',
    'magenta':  '#b48ead',
    'violet':   '#9c6992',
    'blue':	    '#3f6e90',
    'cyan0':	'#5b8277',
    'cyan1':	'#7fac96',
    'green':	'#6d974b'
}

c.editor.command = [ "foot", "nvim", "{file}", "+normal {line}G{column0}l", ]

## Notifications for websites are retarded

c.content.notifications.enabled = False

## Disable JS by default
#c.content.javascript.enabled = False

# Read separate whitelist file and enable JS for those sites
#with open(os.path.expanduser("~/.config/qutebrowser/jswhitelist")) as f:
#    for line in f:
#        site = line.rstrip('\n')
#        with config.pattern(site) as p:
#            p.content.javascript.enabled = True

## Disable 3rd party cookies
c.content.cookies.accept = "no-3rdparty"

# Unfortunately this seems to break Cloudfare's retarded browser integrity
# check, so now I have to chose between not being able to access half of the
# internet and having troubles with a few sites. It's a clown world.
#
# Pretend that we are the latest version of Chrome, since some retarded sites
# think it is fine to pester me with ads to install Firefox or Chrome or
# whatever upon seeing a non-standard user agent string. I swear the web is just
# getting worse day by day. Just when you think it can't get worse they come up
# with some new crap worse than anything else before. Why can't a person just
# browse the web peacefully, reading content without being annoyed by ads,
# spyware, pop ups and broken javascript written by soydevs that don't know how
# to make a proper website without adding a ton of javascript, or at least
# degrade gracefully if the latest webshit "standard" isn't being used because I
# don't want my web browser to be a second OS on top of my actual OS.
#chrome_ver = subprocess.check_output("pacman -Si chromium | grep Version | sed 's/^.*: \([0-9]*\.[0-9]*\.[0-9]*\.[0-9]*\).*$/\\1/g'", shell=True).decode('ascii').rstrip()
#c.content.headers.user_agent = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/{0} Safari/537.36".format(chrome_ver)

## Downloads

# Automatically remove finished downloads from list
c.downloads.remove_finished = 3000

## Default search engine

c.url.searchengines = { "DEFAULT": "https://search.rhscz.eu/search?q={}" }

c.url.default_page = "https://takeoff.mriya.space/"
c.url.start_pages = "https://takeoff.mriya.space/"

## Default fonts
c.fonts.default_size = "10pt"

## Prefer dark mode in websites that support it
c.colors.webpage.preferred_color_scheme = "auto"

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
c.colors.completion.category.fg = ultramar['light0']

## Background color of the completion widget for even rows.
## Type: QssColor
c.colors.completion.even.bg = ultramar['dark1']

## Text color of the completion widget.
## Type: QtColor
c.colors.completion.fg = ultramar['light0']

## Background color of the selected completion item.
## Type: QssColor
c.colors.completion.item.selected.bg = ultramar['cyan0']

## Bottom border color of the selected completion item.
## Type: QssColor
c.colors.completion.item.selected.border.bottom = ultramar['cyan0']

## Top border color of the completion widget category headers.
## Type: QssColor
c.colors.completion.item.selected.border.top = ultramar['cyan0']

## Foreground color of the selected completion item.
## Type: QtColor
c.colors.completion.item.selected.fg = ultramar['dark0']

## Foreground color of the matched text in the completion.
## Type: QssColor
c.colors.completion.match.fg = ultramar['yellow']

## Background color of the completion widget for odd rows.
## Type: QssColor
c.colors.completion.odd.bg = ultramar['dark2']

## Color of the scrollbar in completion view
## Type: QssColor
c.colors.completion.scrollbar.bg = ultramar['dark2']

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
c.colors.downloads.error.fg = ultramar['light0']

## Color gradient start for download backgrounds.
## Type: QtColor
# c.colors.downloads.start.bg = '#0000aa'

## Color gradient start for download text.
## Type: QtColor
c.colors.downloads.start.fg = ultramar['light0']

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
c.colors.hints.bg = ultramar['cyan0']

## Font color for hints.
## Type: QssColor
c.colors.hints.fg = ultramar['light0']

## Font color for the matched part of hints.
## Type: QssColor
c.colors.hints.match.fg = ultramar['dark0']

## Background color of the keyhint widget.
## Type: QssColor
c.colors.keyhint.bg = 'rgba(27, 30, 37, 80%)'

## Text color for the keyhint widget.
## Type: QssColor
c.colors.keyhint.fg = ultramar['light0']

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
c.colors.messages.error.fg = ultramar['light0']

## Background color of an info message.
## Type: QssColor
c.colors.messages.info.bg = ultramar['dark0']

## Border color of an info message.
## Type: QssColor
c.colors.messages.info.border = ultramar['dark0']

## Foreground color an info message.
## Type: QssColor
c.colors.messages.info.fg = ultramar['light0']

## Background color of a warning message.
## Type: QssColor
c.colors.messages.warning.bg = ultramar['orange']

## Border color of a warning message.
## Type: QssColor
c.colors.messages.warning.border = ultramar['orange']

## Foreground color a warning message.
## Type: QssColor
c.colors.messages.warning.fg = ultramar['light0']

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
c.colors.statusbar.caret.fg = ultramar['light0']

## Background color of the statusbar in caret mode with a selection.
## Type: QssColor
c.colors.statusbar.caret.selection.bg = ultramar['violet']

## Foreground color of the statusbar in caret mode with a selection.
## Type: QssColor
c.colors.statusbar.caret.selection.fg = ultramar['light0']

## Background color of the statusbar in command mode.
## Type: QssColor
c.colors.statusbar.command.bg = ultramar['dark0']

## Foreground color of the statusbar in command mode.
## Type: QssColor
c.colors.statusbar.command.fg = ultramar['light0']

## Background color of the statusbar in private browsing + command mode.
## Type: QssColor
c.colors.statusbar.command.private.bg = ultramar['light1']

## Foreground color of the statusbar in private browsing + command mode.
## Type: QssColor
c.colors.statusbar.command.private.fg = ultramar['dark0']

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
c.colors.statusbar.normal.fg = ultramar['light0']

## Background color of the statusbar in passthrough mode.
## Type: QssColor
c.colors.statusbar.passthrough.bg = ultramar['blue']

## Foreground color of the statusbar in passthrough mode.
## Type: QssColor
c.colors.statusbar.passthrough.fg = ultramar['light0']

## Background color of the statusbar in private browsing mode.
## Type: QssColor
c.colors.statusbar.private.bg = ultramar['light1']

## Foreground color of the statusbar in private browsing mode.
## Type: QssColor
c.colors.statusbar.private.fg = ultramar['dark0']

## Background color of the progress bar.
## Type: QssColor
c.colors.statusbar.progress.bg = ultramar['light0']

## Foreground color of the URL in the statusbar on error.
## Type: QssColor
c.colors.statusbar.url.error.fg = ultramar['red']

## Default foreground color of the URL in the statusbar.
## Type: QssColor
c.colors.statusbar.url.fg = ultramar['light0']

## Foreground color of the URL in the statusbar for hovered links.
## Type: QssColor
c.colors.statusbar.url.hover.fg = ultramar['blue']

## Foreground color of the URL in the statusbar on successful load
## (http).
## Type: QssColor
c.colors.statusbar.url.success.http.fg = ultramar['light0']

## Foreground color of the URL in the statusbar on successful load
## (https).
## Type: QssColor
c.colors.statusbar.url.success.https.fg = ultramar['cyan0']

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
c.colors.tabs.even.fg = ultramar['light1']

## Color for the tab indicator on errors.
## Type: QtColor
c.colors.tabs.indicator.error = ultramar['red']

## Color gradient start for the tab indicator.
## Type: QtColor
c.colors.tabs.indicator.start = ultramar['blue']

## Color gradient end for the tab indicator.
## Type: QtColor
c.colors.tabs.indicator.stop = ultramar['cyan0']

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
c.colors.tabs.odd.fg = ultramar['light0']

## Background color of selected even tabs.
## Type: QtColor
c.colors.tabs.selected.even.bg = ultramar['cyan1']

## Foreground color of selected even tabs.
## Type: QtColor
c.colors.tabs.selected.even.fg = ultramar['dark0']

## Background color of selected odd tabs.
## Type: QtColor
c.colors.tabs.selected.odd.bg = ultramar['cyan1']

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

# Open in new private window
config.bind('po', 'set-cmd-text :open -p ', mode='normal')

# Bindings for Russian keyboard layout
config.unbind('.')
en_keys = "qwertyuiop[]asdfghjkl;'zxcvbnm,./"+'QWERTYUIOP{}ASDFGHJKL:"ZXCVBNM<>?'
ru_keys = 'йцукенгшщзхъфывапролджэячсмитьбю.'+'ЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ,'
c.bindings.key_mappings.update(dict(zip(ru_keys, en_keys)))
