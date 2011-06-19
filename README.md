# CoffeeScript compiler for Windows

A simple command-line utilty for Windows that will compile `*.coffee` files to JavaScript `*.js` files using [CoffeeScript](http://jashkenas.github.com/coffee-script/) and the venerable Windows Script Host, ubiquitous on Windows since the 90s.

## Usage

To use it, invoke coffee.cmd like so:

    coffee input.coffee > output.js
    
If you specify `-` as the input, the coffeescript will be read from STDIN. e.g.

    coffee - > output.js < input.coffee

or:

    type input.coffee | coffee - > output.js

In the `test` directory there's a version of the standard CoffeeScript tests which can be kicked off using `test.cmd`. The test just attempts to compile the *.coffee files but doesn't execute them.