#!/usr/bin/env node

var fs = require('fs')

var filename = process.argv[2]

var buffer = fs.readFileSync(filename)

console.log(buffer.toString())

