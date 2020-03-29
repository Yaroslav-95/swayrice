# Uncomment this to still load settings configured via autoconfig.yml
config.load_autoconfig()

# ------------ Color scheme ----------------

ultramar = {
    'base03': '#1b1e25',
    'base02': '#2d333f',
    'base01': '#e5e9f0',
    'base00': '#434c5e',
    'base0': '#3b4252',
    'base1': '#242933',
    'base2': '#d8dee9',
    'base3': '#e5e9f0',
    'yellow': '#e2b55a',
    'orange': '#af5539',
    'red': '#b73030',
    'magenta': '#b48ead',
    'violet': '#9c6992',
    'blue': '#3f6e90',
    'cyan': '#5b8277',
    'green': '#7ea95a'
}

## Default fonts
c.fonts.default_family = ["BlexMono Nerd Font Mono", "DejaVu Sans Mono"]

## Background color of the completion widget category headers.
## Type: QssColor
c.colors.completion.category.bg = ultramar['base03']

## Bottom border color of the completion widget category headers.
## Type: QssColor
c.colors.completion.category.border.bottom = ultramar['base03']

## Top border color of the completion widget category headers.
## Type: QssColor
c.colors.completion.category.border.top = ultramar['base03']

## Foreground color of completion widget category headers.
## Type: QtColor
c.colors.completion.category.fg = ultramar['base3']

## Background color of the completion widget for even rows.
## Type: QssColor
c.colors.completion.even.bg = ultramar['base02']

## Text color of the completion widget.
## Type: QtColor
c.colors.completion.fg = ultramar['base3']

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
c.colors.completion.item.selected.fg = ultramar['base03']

## Foreground color of the matched text in the completion.
## Type: QssColor
c.colors.completion.match.fg = ultramar['yellow']

## Background color of the completion widget for odd rows.
## Type: QssColor
c.colors.completion.odd.bg = ultramar['base0']

## Color of the scrollbar in completion view
## Type: QssColor
c.colors.completion.scrollbar.bg = ultramar['base0']

## Color of the scrollbar handle in completion view.
## Type: QssColor
c.colors.completion.scrollbar.fg = ultramar['base2']

## Background color for the download bar.
## Type: QssColor
c.colors.downloads.bar.bg = ultramar['base03']

## Background color for downloads with errors.
## Type: QtColor
c.colors.downloads.error.bg = ultramar['red']

## Foreground color for downloads with errors.
## Type: QtColor
c.colors.downloads.error.fg = ultramar['base3']

## Color gradient start for download backgrounds.
## Type: QtColor
# c.colors.downloads.start.bg = '#0000aa'

## Color gradient start for download text.
## Type: QtColor
c.colors.downloads.start.fg = ultramar['base3']

## Color gradient stop for download backgrounds.
## Type: QtColor
# c.colors.downloads.stop.bg = '#00aa00'

## Color gradient end for download text.
## Type: QtColor
# c.colors.downloads.stop.fg = ultramar['base3']

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
c.hints.border = '1px solid ' + ultramar['base03'];

## Background color for hints. Note that you can use a `rgba(...)` value
## for transparency.
## Type: QssColor
c.colors.hints.bg = ultramar['cyan']

## Font color for hints.
## Type: QssColor
c.colors.hints.fg = ultramar['base3']

## Font color for the matched part of hints.
## Type: QssColor
c.colors.hints.match.fg = ultramar['base03']

## Background color of the keyhint widget.
## Type: QssColor
c.colors.keyhint.bg = 'rgba(27, 30, 37, 80%)'

## Text color for the keyhint widget.
## Type: QssColor
c.colors.keyhint.fg = ultramar['base3']

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
c.colors.messages.error.fg = ultramar['base3']

## Background color of an info message.
## Type: QssColor
c.colors.messages.info.bg = ultramar['base03']

## Border color of an info message.
## Type: QssColor
c.colors.messages.info.border = ultramar['base03']

## Foreground color an info message.
## Type: QssColor
c.colors.messages.info.fg = ultramar['base3']

## Background color of a warning message.
## Type: QssColor
c.colors.messages.warning.bg = ultramar['orange']

## Border color of a warning message.
## Type: QssColor
c.colors.messages.warning.border = ultramar['orange']

## Foreground color a warning message.
## Type: QssColor
c.colors.messages.warning.fg = ultramar['base3']

## Background color for prompts.
## Type: QssColor
c.colors.prompts.bg = ultramar['base02']

## Border used around UI elements in prompts.
## Type: String
c.colors.prompts.border = '1px solid ' + ultramar['base3']

## Foreground color for prompts.
## Type: QssColor
c.colors.prompts.fg = ultramar['base3']

## Background color for the selected item in filename prompts.
## Type: QssColor
c.colors.prompts.selected.bg = ultramar['base01']

## Background color of the statusbar in caret mode.
## Type: QssColor
c.colors.statusbar.caret.bg = ultramar['violet']

## Foreground color of the statusbar in caret mode.
## Type: QssColor
c.colors.statusbar.caret.fg = ultramar['base3']

## Background color of the statusbar in caret mode with a selection.
## Type: QssColor
c.colors.statusbar.caret.selection.bg = ultramar['violet']

## Foreground color of the statusbar in caret mode with a selection.
## Type: QssColor
c.colors.statusbar.caret.selection.fg = ultramar['base3']

## Background color of the statusbar in command mode.
## Type: QssColor
c.colors.statusbar.command.bg = ultramar['base03']

## Foreground color of the statusbar in command mode.
## Type: QssColor
c.colors.statusbar.command.fg = ultramar['base3']

## Background color of the statusbar in private browsing + command mode.
## Type: QssColor
c.colors.statusbar.command.private.bg = ultramar['magenta']

## Foreground color of the statusbar in private browsing + command mode.
## Type: QssColor
c.colors.statusbar.command.private.fg = ultramar['base3']

## Background color of the statusbar in insert mode.
## Type: QssColor
c.colors.statusbar.insert.bg = ultramar['green']

## Foreground color of the statusbar in insert mode.
## Type: QssColor
c.colors.statusbar.insert.fg = ultramar['base0']

## Background color of the statusbar.
## Type: QssColor
c.colors.statusbar.normal.bg = ultramar['base03']

## Foreground color of the statusbar.
## Type: QssColor
c.colors.statusbar.normal.fg = ultramar['base3']

## Background color of the statusbar in passthrough mode.
## Type: QssColor
c.colors.statusbar.passthrough.bg = ultramar['blue']

## Foreground color of the statusbar in passthrough mode.
## Type: QssColor
c.colors.statusbar.passthrough.fg = ultramar['base3']

## Background color of the statusbar in private browsing mode.
## Type: QssColor
c.colors.statusbar.private.bg = ultramar['magenta']

## Foreground color of the statusbar in private browsing mode.
## Type: QssColor
c.colors.statusbar.private.fg = ultramar['base3']

## Background color of the progress bar.
## Type: QssColor
c.colors.statusbar.progress.bg = ultramar['base3']

## Foreground color of the URL in the statusbar on error.
## Type: QssColor
c.colors.statusbar.url.error.fg = ultramar['red']

## Default foreground color of the URL in the statusbar.
## Type: QssColor
c.colors.statusbar.url.fg = ultramar['base3']

## Foreground color of the URL in the statusbar for hovered links.
## Type: QssColor
c.colors.statusbar.url.hover.fg = ultramar['blue']

## Foreground color of the URL in the statusbar on successful load
## (http).
## Type: QssColor
c.colors.statusbar.url.success.http.fg = ultramar['base3']

## Foreground color of the URL in the statusbar on successful load
## (https).
## Type: QssColor
c.colors.statusbar.url.success.https.fg = ultramar['cyan']

## Foreground color of the URL in the statusbar when there's a warning.
## Type: QssColor
c.colors.statusbar.url.warn.fg = ultramar['yellow']

## Background color of the tab bar.
## Type: QtColor
c.colors.tabs.bar.bg = ultramar['base03']

## Background color of unselected even tabs.
## Type: QtColor
c.colors.tabs.even.bg = ultramar['base00']

## Foreground color of unselected even tabs.
## Type: QtColor
c.colors.tabs.even.fg = ultramar['base2']

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
c.colors.tabs.odd.bg = ultramar['base0']

## Foreground color of unselected odd tabs.
## Type: QtColor
c.colors.tabs.odd.fg = ultramar['base2']

## Background color of selected even tabs.
## Type: QtColor
c.colors.tabs.selected.even.bg = ultramar['base03']

## Foreground color of selected even tabs.
## Type: QtColor
c.colors.tabs.selected.even.fg = ultramar['base3']

## Background color of selected odd tabs.
## Type: QtColor
c.colors.tabs.selected.odd.bg = ultramar['base03']

## Foreground color of selected odd tabs.
## Type: QtColor
c.colors.tabs.selected.odd.fg = ultramar['base3']

## Background color for webpages if unset (or empty to use the theme's
## color)
## Type: QtColor
c.colors.webpage.bg = ultramar['base03']

# ------------ Key bindings ----------------

# Why end the shortcuts in 9 when you still have one more useful key (0)?
config.bind('<Alt-9>', 'tab-focus 9', mode='normal')
config.bind('<Alt-0>', 'tab-focus -1', mode='normal')

# Bindings for Russian keyboard layout (my most used bindings)

config.bind('Р', 'back', mode='normal')
config.bind('О', 'tab-next', mode='normal')
config.bind('Л', 'tab-prev', mode='normal')
config.bind('Д', 'next', mode='normal')

config.bind('щ', 'set-cmd-text :open', mode='normal')
config.bind('Щ', 'set-cmd-text :open -t', mode='normal')
config.bind('по', 'set-cmd-text :open {url:pretty}', mode='normal')
config.bind('пО', 'set-cmd-text :open -t -r {url:pretty}', mode='normal')

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

