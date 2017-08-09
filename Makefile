.PHONY: test

test:
	@rm -f .test-org-id-locations
	emacs -Q --batch -q \
		-L . \
		-l ob-crystal.el \
		-l test-ob-crystal.el \
		--eval "(progn \
	              (setq org-confirm-babel-evaluate nil) \
	              (org-babel-do-load-languages \
	                'org-babel-load-languages '((emacs-lisp . t) \
	                                            (sh . t) \
	                                            (org . t) \
	                                            (crystal . t))))" \
	    -f ob-crystal-test-runall
