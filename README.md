# lint-php

This package introduces a simple bash script that lints multiple PHP files
at once.

## Compatibility

This tool should be compatible with any PHP Cli that provides lint check.

## Usage

Simply provide a list of files and/or folders for the tool to validate.

```

$ bin/lint-php test/valid/foo.php test/valid/bar.php
PHP Lint, by Valdir Bruxel Junior and contributors

... 2/2

Validation finished (2 files, 2 valid, 0 errors, 0 skipped)
```

If you provide a folder, it will recursevilly lint all php files in
that folder.

```
$ bin/lint-php test/valid
PHP Lint, by Valdir Bruxel Junior and contributors

.......... 3/3

Validation finished (10 files, 10 valid, 0 errors, 0 skipped)
```

If it encounters any errors, it will validate all files and output
the errors it encountered in the end of the execution run.

```
$ bin/lint-php test/valid test/errors
PHP Lint, by Valdir Bruxel Junior and contributors

E... 4/4

Validation finished (4 files, 3 valid, 1 errors, 0 skipped)

There were 1 file(s) with syntax errors:

    1) test/error/with-error.php
       PHP Parse error:  syntax error, unexpected '=' in test/error/with-error.php on line 3
       Errors parsing test/error/with-error.php
```

If you provide a non-existent file to be validated, it will be skipped by the
lint check.

```
bin/lint-php test/lorem-ipsum.php
PHP Lint, by Valdir Bruxel Junior and contributors

S 1/1

Validation finished (1 files, 0 valid, 0 errors, 1 skipped)

Skipped 1 file(s):

    1) test/lorem-ipsum.php
```

## Todo

- bin/lint-php --colors=<flag> ("yes", "no")
- bin/lint-php -h|--help
- bin/lint-php --ignore-folder folder
- bin/lint-php --stop-on-failure
- bin/lint-php --stop-on-skipped
- bin/lint-php -v|--verbose
- bin/lint-php --version

## Credits
- PHPUnit
  because we totally ripped the output of PHPUnit to create this script
