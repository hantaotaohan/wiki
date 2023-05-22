# To switch from vertical split to horizontal split fast in Vim - Stack Overflow
来源：[To switch from vertical split to horizontal split fast in Vim - Stack Overflow](https://stackoverflow.com/questions/1269603/to-switch-from-vertical-split-to-horizontal-split-fast-in-vim)

## 摘录内容

[Vim mailing list](http://www.mail-archive.com/vim@vim.org/msg11206.html) says (re-formatted for better readability):

> To change _two_ vertically split windows to horizonally split
>
> Ctrl-w t Ctrl-w K
>
> Horizontally to vertically:
>
> Ctrl-w t Ctrl-w H
>
> Explanations:
>
> Ctrl-w t makes the first (topleft) window current
>
> Ctrl-w K moves the current window to full-width at the very top
>
> Ctrl-w H moves the current window to full-height at far left

Note that the t is lowercase, and the K and H are uppercase.

Also, with only two windows, it seems like you can drop the Ctrl-w t part because if you're already in one of only two windows, what's the point of making it current?

## 想法
