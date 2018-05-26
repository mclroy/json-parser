# json-parser

It's a JSON parser for shell, namely bash, which is just an adaptation of the great [dominictarr/JSON.sh](https://github.com/dominictarr/JSON.sh) JSON.sh project which I found through [JSON](https://www.json.org/) itself.

[dominictarr](https://github.com/dominictarr) Dominic,
Thank you!

[![travis](https://secure.travis-ci.org/mclroy/json-parser.png?branch=master)](https://travis-ci.org/mclroy/json-parser)


Simply add it into your own script and
pipe a JSON string to it for pretty printing or to apply a JSONpath expressions:

``` bash
#!/bin/bash

. ./json_functions

echo "${response_body}" | json_parse -p
echo "${response_body}" | json_parse -e '$.results[0].id'

```

## Options

-p
> Pretty print.

-e
> Evaluate a JSONpath expression.

-d
> Debug mode.

## License

This software is available under the following licenses:

  * MIT
  * Apache 2
