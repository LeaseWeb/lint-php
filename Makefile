
simple-check:
	@echo Validates a defined list of PHP files
	bin/lint-php \
		test/valid/foo.php \
		test/valid/bar.php

recursive-check:
	@echo Validates all PHP files inside a folder
	bin/lint-php test/valid

error-check:
	@echo Displays the lint errors on PHP file
	bin/lint-php test/valid test/errors

skipped-checks:
	@echo Skips tests on files that do not exists
	bin/lint-php test/lorem-ipsum.php

git-check:
	@echo validates all PHP files under git version control
	touch test/ignored-file.php
	git ls-files '*.php' | xargs bin/lint-php

