test:
	emacs --version
	emacs -nw --batch --eval '(load-file "split-and-move.el")'
