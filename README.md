# Ilo

[![CI/CD](https://github.com/nootr/ilo/actions/workflows/main.yml/badge.svg)](https://github.com/nootr/ilo/actions)

A programming language.

* Stack-oriented like Forth
* Whitespace-specific like Python
* Type checking like Tsoding's Porth

This project has one clear goal: to write a self-hosted compiler!


## Example code

```
import std

# foo bar
def add: int x, int y -> int
    x y +

def main: ptr argv, int argc -> int
    2 1 add 4 < if
        "Yeah\n" puts
    else
        "Huh?!\n" puts

    0  # Exit code
```
