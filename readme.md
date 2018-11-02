# split-and-move [![Build Status](https://travis-ci.org/EricCrosson/split-and-move.svg?branch=master)](https://travis-ci.org/EricCrosson/split-and-move)

> Split current GNU Emacs window and move point to the new pane

## Install

With [Quelpa](https://framagit.org/steckerhalter/quelpa)

``` {.sourceCode .lisp}
(use-package split-and-move
  :quelpa (split-and-move
           :fetcher github
           :repo "EricCrosson/split-and-move")
  :bind (("C-x 2" . split-and-move-below)
         ("C-x 3" . split-and-move-right)))
```

Or manually, after downloading into your `load-path`

``` {.sourceCode .lisp}
(require 'split-and-move)
(bind-keys
 ("C-x 2" . split-and-move-below)
 ("C-x 3" . split-and-move-right))
```

## Related

- [Splitting windows in GNU Emacs](https://www.gnu.org/software/emacs/manual/html_node/emacs/Split-Window.html)
- [Working with Multiple Windows](https://emacshints.wordpress.com/2013/10/18/working-with-multiple-windows/)
- [Go Back to Previous Window](http://emacsredux.com/blog/2013/03/30/go-back-to-previous-window/)

## Acknowledgements

I definitely got this code from somewhere but can't find the original
source as it has mutated inside my configs over the past several
years. Here's a version that's
[pretty close](https://github.com/magnars/.emacs.d/blob/4b9fa80cd3e26d8f802ed07ad6f8c3b5f697b072/defuns/buffer-defuns.el#L37).

## License

GPL 2 (or higher) © [Free Software Foundation, Inc](http://www.fsf.org/about).
