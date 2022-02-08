#!/usr/bin/env python3


"""
                             :alert: DISCLAIMER :alert:

This code is _ugly_. It's goal is to serve as an initial bootstrap compiler for the
self-hosted compiler. This means that this code is not pythonic, object-oriented or
clean in any way. It is meant to be easily portable to be self-hosted, that's it.

As soon as the self-hosted compiler is ready, we'll get rid of this monster. Don't
worry.
"""


import argparse


### Lexer ###


class TokenType:
    ARITHMETIC = "ARITHMETIC"
    BLOCK_START = "BLOCK_START"
    BLOCK_END = "BLOCK_END"
    BOOL = "BOOL"
    COMPARISON = "COMPARISON"
    INT = "INT"
    KEYWORD = "KEYWORD"


def is_int(s):
    return all(c in "0123456789" for c in s)

def startswith(q, s):
    return len(q) <= len(s) and all(c == s[i] for i, c in enumerate(q))


def get_tokens(program):
    line_no = 1
    indent_stack = [0]
    at_start = True

    while program:
        indent = 0
        while program and program[0] in " \t":
            if at_start:
                indent += 1
            program = program[1:]

        if at_start and indent > indent_stack[-1]:
            indent_stack.append(indent)
            yield (TokenType.BLOCK_START, indent, line_no)
        elif at_start and indent < indent_stack[-1]:
            if indent not in indent_stack:
                raise ValueError(f"Syntax error: unexpected indent of {indent}")

            while indent_stack[-1] != indent:
                yield (TokenType.BLOCK_END, indent_stack[-1], line_no)
                indent_stack.pop()

        if not program:
            break

        at_start = False

        if startswith("\n", program):
            line_no += 1
            program = program[1:]
            at_start = True
        elif startswith("#", program):
            while program and program[0] != "\n":
                program = program[1:]
        elif startswith("!=", program):
            yield (TokenType.COMPARISON, "!=", line_no)
            program = program[2:]
        elif startswith(">=", program):
            yield (TokenType.COMPARISON, ">=", line_no)
            program = program[2:]
        elif startswith("<=", program):
            yield (TokenType.COMPARISON, "<=", line_no)
            program = program[2:]
        elif program[0] in "+-*/":
            yield (TokenType.ARITHMETIC, program[0], line_no)
            program = program[1:]
        elif program[0] in "=<>":
            yield (TokenType.COMPARISON, program[0], line_no)
            program = program[1:]
        elif is_int(program[0]):
            number = ''
            while program and is_int(program[0]):
                number += program[0]
                program = program[1:]
            yield (TokenType.INT, number, line_no)
        elif startswith("True", program):
            yield (TokenType.BOOL, 1, line_no)
            program = program[4:]
        elif startswith("False", program):
            yield (TokenType.BOOL, 0, line_no)
            program = program[5:]
        elif startswith("dup", program):
            yield (TokenType.KEYWORD, "dup", line_no)
            program = program[3:]
        elif startswith("drop", program):
            yield (TokenType.KEYWORD, "drop", line_no)
            program = program[4:]
        elif startswith("over", program):
            yield (TokenType.KEYWORD, "over", line_no)
            program = program[4:]
        elif startswith("swap", program):
            yield (TokenType.KEYWORD, "swap", line_no)
            program = program[4:]
        elif startswith("rot", program):
            yield (TokenType.KEYWORD, "rot", line_no)
            program = program[3:]
        else:
            raise ValueError(f"Syntax error at line {line_no}: `{program}`")


### Parser ###


class Opcode:
    ADD = "add"
    DROP = "drop"
    DUP = "dup"
    IS_EQUAL = "is equal?"
    IS_GREATER = "is greater?"
    IS_GREATER_OR_EQUAL = "is greater or equal?"
    IS_LESS = "is less?"
    IS_LESS_OR_EQUAL = "is less or equal?"
    MULTIPLY = "multiply"
    OVER = "over"
    PUSH_BOOL = "push bool"
    PUSH_INT = "push int"
    ROT = "rot"
    SUBTRACT = "subtract"
    SWAP = "swap"


def parse(token_generator):
    for token_type, value, line_no in token_generator:
        if token_type == TokenType.INT:
            yield (Opcode.PUSH_INT, value, line_no)
        elif token_type == TokenType.BOOL:
            yield (Opcode.PUSH_BOOL, value, line_no)
        elif token_type == TokenType.ARITHMETIC:
            if value == "+":
                yield (Opcode.ADD, 0, line_no)
            elif value == "-":
                yield (Opcode.SUBTRACT, 0, line_no)
            elif value == "*":
                yield (Opcode.MULTIPLY, 0, line_no)
            else:
                raise ValueError(f"Unknown value for arithmetic: {value}")
        elif token_type == TokenType.COMPARISON:
            if value == "=":
                yield (Opcode.IS_EQUAL, 0, line_no)
            elif value == ">":
                yield (Opcode.IS_GREATER, 0, line_no)
            elif value == ">=":
                yield (Opcode.IS_GREATER_OR_EQUAL, 0, line_no)
            elif value == "<":
                yield (Opcode.IS_LESS, 0, line_no)
            elif value == "<=":
                yield (Opcode.IS_LESS_OR_EQUAL, 0, line_no)
            else:
                raise ValueError(f"Unknown value for comparison: {value}")
        elif token_type == TokenType.KEYWORD:
            if value == "dup":
                yield (Opcode.DUP, 0, line_no)
            elif value == "drop":
                yield (Opcode.DROP, 0, line_no)
            elif value == "rot":
                yield (Opcode.ROT, 0, line_no)
            elif value == "swap":
                yield (Opcode.SWAP, 0, line_no)
            elif value == "over":
                yield (Opcode.OVER, 0, line_no)
        else:
            raise ValueError(f"Unknown token type: {token_type}")


### Code generator ###


def output(a, b, c):
    print(f"{a:10} {b:10} {c:10}")

def generate_code(ir):
    output("", "global", "_start")
    output("", "section", ".text")
    output("_start:", "", "")

    for opcode, operand, line_no in ir:
        output("", f"; {line_no}: {opcode}", "")
        if opcode == Opcode.PUSH_INT:
            output("", "mov", f"rax, {operand}")
            output("", "push", "rax")
        elif opcode == Opcode.PUSH_BOOL:
            output("", "mov", f"rax, {operand}")
            output("", "push", "rax")
        elif opcode == Opcode.ADD:
            output("", "pop", "rax")
            output("", "pop", "rbx")
            output("", "add", "rbx, rax")
            output("", "push", "rbx")
        elif opcode == Opcode.SUBTRACT:
            output("", "pop", "rax")
            output("", "pop", "rbx")
            output("", "sub", "rbx, rax")
            output("", "push", "rbx")
        elif opcode == Opcode.MULTIPLY:
            output("", "pop", "rax")
            output("", "pop", "rbx")
            output("", "imul", "rbx, rax")
            output("", "push", "rbx")
        elif opcode == Opcode.IS_EQUAL:
            output("", "mov", "rax, 0")
            output("", "mov", "rbx, 1")
            output("", "pop", "rcx")
            output("", "pop", "rdx")
            output("", "cmp", "rdx, rcx")
            output("", "cmove", "rax, rbx")
            output("", "push", "rax")
        elif opcode == Opcode.IS_GREATER_OR_EQUAL:
            output("", "mov", "rax, 0")
            output("", "mov", "rbx, 1")
            output("", "pop", "rcx")
            output("", "pop", "rdx")
            output("", "cmp", "rdx, rcx")
            output("", "cmovge", "rax, rbx")
            output("", "push", "rax")
        elif opcode == Opcode.IS_GREATER:
            output("", "mov", "rax, 0")
            output("", "mov", "rbx, 1")
            output("", "pop", "rcx")
            output("", "pop", "rdx")
            output("", "cmp", "rdx, rcx")
            output("", "cmovg", "rax, rbx")
            output("", "push", "rax")
        elif opcode == Opcode.IS_LESS_OR_EQUAL:
            output("", "mov", "rax, 0")
            output("", "mov", "rbx, 1")
            output("", "pop", "rcx")
            output("", "pop", "rdx")
            output("", "cmp", "rdx, rcx")
            output("", "cmovle", "rax, rbx")
            output("", "push", "rax")
        elif opcode == Opcode.IS_LESS:
            output("", "mov", "rax, 0")
            output("", "mov", "rbx, 1")
            output("", "pop", "rcx")
            output("", "pop", "rdx")
            output("", "cmp", "rdx, rcx")
            output("", "cmovl", "rax, rbx")
            output("", "push", "rax")
        elif opcode == Opcode.DUP:
            output("", "pop", "rax")
            output("", "push", "rax")
            output("", "push", "rax")
        elif opcode == Opcode.DROP:
            output("", "pop", "rax")
        elif opcode == Opcode.SWAP:
            output("", "pop", "rax")
            output("", "pop", "rbx")
            output("", "push", "rax")
            output("", "push", "rbx")
        elif opcode == Opcode.OVER:
            output("", "pop", "rax")
            output("", "pop", "rbx")
            output("", "push", "rbx")
            output("", "push", "rax")
            output("", "push", "rbx")
        elif opcode == Opcode.ROT:
            output("", "pop", "rax")
            output("", "pop", "rbx")
            output("", "pop", "rcx")
            output("", "push", "rbx")
            output("", "push", "rax")
            output("", "push", "rcx")
        else:
            raise ValueError(f"Unknown opcode: {opcode}")

    output("exit:", "", "")
    output("", "mov", "rax, 60")
    output("", "pop", "rdi")
    output("", "syscall", "")


### Command-line interface ###

def read_file(filename):
    with open(filename, "r") as f:
        content = f.read()
    return content


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("filename", action="store", type=str, default=None)
    return parser.parse_args()


def run(filename):
    if not filename:
        print("Please provide a filename to compile.")
        exit(1)

    program = read_file(filename)
    token_generator = get_tokens(program)
    ir = parse(token_generator)
    generate_code(ir)


if __name__ == "__main__":
    args = parse_args()
    run(**vars(args))
