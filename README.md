# Unnecessary Censorship

A simple gem for unnecessarily censoring strings of text

[![Build Status](https://travis-ci.org/#!/JDStraughan/unnecessary-censorship)](https://travis-ci.org/JDStraughan/unnecessary-censorship.png)

## Prerequisites

To us Unnecessary Censorship you need the following:

Ruby 1.9.2 or 1.9.3 or compatible.

## Basic Usage

You can use the `unnecessarily_censor` method as you would any String method

```ruby
    "jogging is fun".unnecessarily_censor => "****ing is fun"
    "go treat yourself".unnecessarily_censor => "go **** yourself"
```

You get the idea, right?

## Internationalization

Currently, the Unnecessary Censorship gem only supports the en-us language.  Please feel free to issue pull requests with updates to any other language packages.

## Inspiration

This gem was inspired by the "This week in unnecessary censorship" on the Jimmy Kimmel Live television show.

## License

(The MIT License)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the ‘Software’), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED ‘AS IS’, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.