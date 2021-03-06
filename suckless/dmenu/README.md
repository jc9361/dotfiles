# dmenu-distrotube


# What is dmenu?
dmenu is a dynamic menu for X, originally designed for dwm. It manages large numbers of user-defined menu items efficiently.  It is a very powerful tool that allows you to pipe information into it.  This makes dmenu a perfect utility to incorporate into your scripting.

# What is dmenu-distrotube
dmenu-distroube is my personal build of dmenu that is very heavily patched to add more functionality and more customization options.  The patches that I used in this build include:
+ dmenu-border -- adds border around dmenu window
+ dmenu-center -- centers dmenu in the middle of screen (-c)
+ dmenu-fuzzyhighlight -- fuzzy matches gets highlighted
+ dmenu-fuzzymatch -- adds support for fuzzy-matching
+ dmenu-grid -- adds a flag (-g) to specify the number of grid columns
+ dmenu-lineheight -- adds a flag (-h) to set the minimum height of dmenu lines
+ dmenu-morecolor -- creates a color option for use the entries adjacent to the selection
+ dmenu-mousesupport -- basic mouse support
+ dmenu-numbers -- Displays number of matched and total items in top right corner

# Mouse functionality
## Mouse actions supported:
+ Left-mouse click:
  - On prompt and input field: clear input text and selection.
  - In horizontal and vertical mode on item: select and output item (same as pressing enter).
  - In horizontal mode on arrows: change items to show left or right.
+ Ctrl-left-mouse click: multisel modifier.
+ Right-mouse click: close.
+ Middle-mouse click:
  - Paste current selection.
  - While holding shift: paste primary selection.
+ Scroll up:
  -In horizontal mode: same as left-clicking on left arrow.
  - In vertical mode: show items above.
+ Scroll down:
  - In horizontal mode: same as left-clicking on right arrow.
  - In vertical mode: show items below.

# Available flags
+ [-l lines]
+ [-g columns]
+ [-p prompt]
+ [-fn font]
+ [-m monitor]
+ [-h height]
+ [-nb color]
+ [-nf color]
+ [-sb color]
+ [-sf color]
+ [-nhb color]
+ [-nhf color]
+ [-shb color]
+ [-shf color]
+ [-w windowid]
+ [-c] for centering

An example: dmenu_run -c -bw 2 -l 20 -g 4 -p 'Run: '

This launches dmenu_run with -c (centered), -bw (border width), -l (number of vertical lines) and -g (number of grid columns).

# How to install dmenu-distrotube
To install dmenu-distrotube on most Linux systems, simply clone this repository, then cd into the cloned directory, and finally run a: sudo make install

For those that use Arch Linux (btw), you can install dmenu-distrotube-git from the AUR.  If you use yay: yay -S dmenu-distrotube-git
