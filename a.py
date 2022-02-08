#!/usr/bin/env python3


class TokenType:
    INT = "INT"
    ADD = "ADD"


def is_int(s):
    return all(c in "0123456789" for c in s)

def get_tokens(program):
    line_no = 1

    while program:
        # TODO: calculate indent
        while program and program[0] in " \t":
            program = program[1:]

        if not program:
            break

        if program[0] == "\n":
            line_no += 1
            program = program[1:]
        elif program[0] == "#":
            while program and program[0] != "\n":
                program = program[1:]
        elif program[0] == "+":
            yield (TokenType.ADD, "+", line_no)
            program = program[1:]
        elif is_int(program[0]):
            number = ''
            while program and is_int(program[0]):
                number += program[0]
                program = program[1:]
            yield (TokenType.INT, number, line_no)
        else:
            raise ValueError(f"Syntax error at line {line_no}: `{program}`")


def output(a, b, c):
    print(f"{a:10} {b:10} {c:10}")

def compile(program):
    output("", "global", "_start")
    output("", "section", ".text")
    output("_start:", "", "")

    for token_type, value, line_no in get_tokens(program):
        if token_type == TokenType.INT:
            output("", f"; {line_no}: push int", "")
            output("", "mov", f"rax, {value}")
            output("", "push", "rax")
        elif token_type == TokenType.ADD:
            output("", f"; {line_no}: add", "")
            output("", "pop", "rax")
            output("", "pop", "rbx")
            output("", "add", "rbx, rax")
            output("", "push", "rbx")

    output("exit:", "", "")
    output("", "mov", "rax, 60")
    output("", "pop", "rdi")
    output("", "syscall", "")

compile(
    "2 3  # Push ints\n"
    "+ # Add them, expect 5\n"
)
