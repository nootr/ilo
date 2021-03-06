# Ilo

[![CI/CD](https://github.com/nootr/ilo/actions/workflows/main.yml/badge.svg)](https://github.com/nootr/ilo/actions)

A programming language.

* Stack-oriented like Forth
* Whitespace-specific like Python
* Type checking like Tsoding's Porth

This project has one clear goal: to write a self-hosted compiler!


## Building the Ilo compiler

Building the Ilo compiler is simple:

```bash
./configure
ninja
```

Ilo currently only compiles to x86_64 assembly, but will have different target
architectures in the future.


## Example code

```ilo
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


## Compiling with Docker

Currently, Ilo is only able to compile itself to Linux x86_64. Compiling in MacOS is possible using Docker:

```bash
docker compose run --rm ilo
```

There are plans to extend the Ilo compiler to cross compile to MacOS.
