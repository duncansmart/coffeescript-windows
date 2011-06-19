# CoffeeScript compiler for Windows

A simple command-line utilty for Windows that will compile `*.coffee` files to JavaScript `*.js` files using [CoffeeScript](http://jashkenas.github.com/coffee-script/) and the venerable Windows Script Host, ubiquitous on Windows since the 90s.

## Usage

To use it, invoke coffee.cmd like so:

    coffee input.coffee output.js
    
If an output is not specified, it it written to STDOUT. In neither an input or ourput are specified then data is assumed to be on STDIN. For example:

    type input.coffee | coffee > output.js

Errors are written to STDERR.

In the `test` directory there's a version of the standard CoffeeScript tests which can be kicked off using `test.cmd`. The test just attempts to compile the *.coffee files but doesn't execute them.