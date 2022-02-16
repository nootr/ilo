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
    ARROW = "ARROW"
    BLOCK_START = "BLOCK_START"
    BLOCK_END = "BLOCK_END"
    BOOL = "BOOL"
    COLON = "COLON"
    COMMA = "COMMA"
    COMPARISON = "COMPARISON"
    IDENTIFIER = "IDENTIFIER"
    INT = "INT"
    KEYWORD = "KEYWORD"
    STRING = "STRING"
    TYPE = "TYPE"


def is_int(c):
    return "0" <= c <= "9"

def is_alphabet(c):
    return c in '-_.' or 'A' <= c <= 'Z' or 'a' <= c <= 'z'

def startswith(q, s):
    return len(q) <= len(s) and all(c == s[i] for i, c in enumerate(q))


def fetch_tokens(program):
    tokens = []
    line_no = 1
    indent_stack = [0]
    at_start = True

    while program:
        indent = 0
        while program and program[0] in " \t":
            if at_start:
                indent += 1
            program = program[1:]

        if at_start and program[0] != "\n":
            if indent > indent_stack[-1]:
                indent_stack.append(indent)
                tokens.append((TokenType.BLOCK_START, indent, line_no))
            elif indent < indent_stack[-1]:
                if indent not in indent_stack:
                    raise ValueError(f"Syntax error: unexpected indent of {indent}")

                while indent_stack[-1] != indent:
                    tokens.append((TokenType.BLOCK_END, indent_stack[-1], line_no))
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
        elif startswith("\"", program):
            program = program[1:]
            string = ''
            while program and program[0] != "\"":
                if startswith("\\\"", program):
                    string += "\\\""
                    program = program[2:]
                else:
                    string += program[0]
                    program = program[1:]
            if program:
                program = program[1:]
            tokens.append((TokenType.STRING, string, line_no))
        elif startswith("->", program):
            tokens.append((TokenType.ARROW, "->", line_no))
            program = program[2:]
        elif startswith(",", program):
            tokens.append((TokenType.COMMA, ",", line_no))
            program = program[1:]
        elif startswith(":", program):
            tokens.append((TokenType.COLON, ":", line_no))
            program = program[1:]
        elif startswith("!=", program):
            tokens.append((TokenType.COMPARISON, "!=", line_no))
            program = program[2:]
        elif startswith(">=", program):
            tokens.append((TokenType.COMPARISON, ">=", line_no))
            program = program[2:]
        elif startswith("<=", program):
            tokens.append((TokenType.COMPARISON, "<=", line_no))
            program = program[2:]
        elif startswith("or", program):
            tokens.append((TokenType.ARITHMETIC, "or", line_no))
            program = program[2:]
        elif startswith("and", program):
            tokens.append((TokenType.ARITHMETIC, "and", line_no))
            program = program[3:]
        elif program[0] in "+-*/":
            tokens.append((TokenType.ARITHMETIC, program[0], line_no))
            program = program[1:]
        elif program[0] in "=<>":
            tokens.append((TokenType.COMPARISON, program[0], line_no))
            program = program[1:]
        elif is_int(program[0]):
            number = ''
            while program and is_int(program[0]):
                number += program[0]
                program = program[1:]
            tokens.append((TokenType.INT, number, line_no))
        elif startswith("True", program):
            tokens.append((TokenType.BOOL, 1, line_no))
            program = program[4:]
        elif startswith("False", program):
            tokens.append((TokenType.BOOL, 0, line_no))
            program = program[5:]
        elif startswith("dup", program):
            tokens.append((TokenType.KEYWORD, "dup", line_no))
            program = program[3:]
        elif startswith("drop", program):
            tokens.append((TokenType.KEYWORD, "drop", line_no))
            program = program[4:]
        elif startswith("over", program):
            tokens.append((TokenType.KEYWORD, "over", line_no))
            program = program[4:]
        elif startswith("swap", program):
            tokens.append((TokenType.KEYWORD, "swap", line_no))
            program = program[4:]
        elif startswith("rot", program):
            tokens.append((TokenType.KEYWORD, "rot", line_no))
            program = program[3:]
        elif startswith("syscall", program):
            tokens.append((TokenType.KEYWORD, "syscall", line_no))
            program = program[7:]
        elif startswith("import", program):
            tokens.append((TokenType.KEYWORD, "import", line_no))
            program = program[6:]
        elif startswith("if", program):
            tokens.append((TokenType.KEYWORD, "if", line_no))
            program = program[2:]
        elif startswith("else", program):
            tokens.append((TokenType.KEYWORD, "else", line_no))
            program = program[4:]
        elif startswith("def", program):
            tokens.append((TokenType.KEYWORD, "def", line_no))
            program = program[3:]
        elif startswith("int", program):
            tokens.append((TokenType.TYPE, "int", line_no))
            program = program[3:]
        elif startswith("ptr", program):
            tokens.append((TokenType.TYPE, "ptr", line_no))
            program = program[3:]
        elif startswith("bool", program):
            tokens.append((TokenType.TYPE, "bool", line_no))
            program = program[4:]
        elif startswith("char", program):
            tokens.append((TokenType.TYPE, "char", line_no))
            program = program[4:]
        elif startswith("derefc", program):
            tokens.append((TokenType.KEYWORD, "derefc", line_no))
            program = program[6:]
        elif startswith("derefi", program):
            tokens.append((TokenType.KEYWORD, "derefi", line_no))
            program = program[6:]
        elif startswith("derefb", program):
            tokens.append((TokenType.KEYWORD, "derefb", line_no))
            program = program[6:]
        elif startswith("derefp", program):
            tokens.append((TokenType.KEYWORD, "derefp", line_no))
            program = program[6:]
        elif startswith("setc", program):
            tokens.append((TokenType.KEYWORD, "setc", line_no))
            program = program[4:]
        elif startswith("seti", program):
            tokens.append((TokenType.KEYWORD, "seti", line_no))
            program = program[4:]
        elif startswith("setb", program):
            tokens.append((TokenType.KEYWORD, "setb", line_no))
            program = program[4:]
        elif startswith("setp", program):
            tokens.append((TokenType.KEYWORD, "setp", line_no))
            program = program[4:]
        elif startswith("buffer", program):
            tokens.append((TokenType.KEYWORD, "buffer", line_no))
            program = program[6:]
        elif startswith("const", program):
            tokens.append((TokenType.KEYWORD, "const", line_no))
            program = program[5:]
        elif is_alphabet(program[0]):
            identifier = ''
            while is_alphabet(program[0]) or is_int(program[0]):
                identifier += program[0]
                program = program[1:]
            tokens.append((TokenType.IDENTIFIER, identifier, line_no))
        else:
            raise ValueError(f"Syntax error at line {line_no}: `{program}`")

    return tokens


### Parser ###


class Opcode:
    ADD = "add"
    BITWISE_AND = "bitwise and"
    BITWISE_OR = "bitwise or"
    CALL = "call"
    CLEANUP = "cleanup"
    CREATE_BUFFER = "push pointer to buffer"
    DEREF_B = "dereference pointer to boolean"
    DEREF_C = "dereference pointer to character"
    DEREF_I = "dereference pointer to integer"
    DEREF_P = "dereference pointer to pointer"
    DROP = "drop"
    DUP = "dup"
    ELSE = "start of else-block"
    FUNCTION = "function definition"
    GET_ARG = "get argument"
    GET_BUFFER = "get pointer to buffer"
    IF = "start of if-block"
    IS_EQUAL = "is equal?"
    IS_GREATER = "is greater?"
    IS_GREATER_OR_EQUAL = "is greater or equal?"
    IS_LESS = "is less?"
    IS_LESS_OR_EQUAL = "is less or equal?"
    LABEL = "label"
    MULTIPLY = "multiply"
    OVER = "over"
    PUSH_BOOL = "push bool"
    PUSH_INT = "push int"
    PUSH_STRING = "push string"
    RETURN = "return"
    ROT = "rot"
    SET_B = "set boolean value"
    SET_C = "set character value"
    SET_I = "set integer value"
    SET_P = "set pointer value"
    SUBTRACT = "subtract"
    SWAP = "swap"
    SYSCALL = "syscall"


functions = {}
buffers = []
constants = {}
if_index = 1

def parse(tokens, token_index=0, return_on_if=False, args={}):
    global functions
    global if_index
    opcodes = []
    while token_index < len(tokens):
        token_type, value, line_no = tokens[token_index]
        token_index += 1

        if token_type == TokenType.BLOCK_END:
            break
        elif token_type == TokenType.KEYWORD and value == "import":
            import_type, import_value, line_no = tokens[token_index]
            token_index += 1
            if import_type != TokenType.IDENTIFIER:
                raise ValueError(
                    f"Syntax Error: expected import identifier on line {line_no}"
                )
            filename = import_value.replace(".", "/") + ".ilo"
            opcodes.extend(parse_file(filename))
        elif token_type == TokenType.INT:
            opcodes.append((Opcode.PUSH_INT, value, line_no))
        elif token_type == TokenType.BOOL:
            opcodes.append((Opcode.PUSH_BOOL, value, line_no))
        elif token_type == TokenType.STRING:
            opcodes.append((Opcode.PUSH_STRING, value, line_no))
        elif token_type == TokenType.ARITHMETIC:
            if value == "+":
                opcodes.append((Opcode.ADD, 0, line_no))
            elif value == "-":
                opcodes.append((Opcode.SUBTRACT, 0, line_no))
            elif value == "*":
                opcodes.append((Opcode.MULTIPLY, 0, line_no))
            elif value == "and":
                opcodes.append((Opcode.BITWISE_AND, 0, line_no))
            elif value == "or":
                opcodes.append((Opcode.BITWISE_OR, 0, line_no))
            else:
                raise ValueError(f"Unknown value for arithmetic: {value}")
        elif token_type == TokenType.COMPARISON:
            if value == "=":
                opcodes.append((Opcode.IS_EQUAL, 0, line_no))
            elif value == ">":
                opcodes.append((Opcode.IS_GREATER, 0, line_no))
            elif value == ">=":
                opcodes.append((Opcode.IS_GREATER_OR_EQUAL, 0, line_no))
            elif value == "<":
                opcodes.append((Opcode.IS_LESS, 0, line_no))
            elif value == "<=":
                opcodes.append((Opcode.IS_LESS_OR_EQUAL, 0, line_no))
            else:
                raise ValueError(f"Unknown value for comparison: {value}")
        elif token_type == TokenType.KEYWORD:
            if value == "dup":
                opcodes.append((Opcode.DUP, 0, line_no))
            elif value == "drop":
                opcodes.append((Opcode.DROP, 0, line_no))
            elif value == "rot":
                opcodes.append((Opcode.ROT, 0, line_no))
            elif value == "swap":
                opcodes.append((Opcode.SWAP, 0, line_no))
            elif value == "over":
                opcodes.append((Opcode.OVER, 0, line_no))
            elif value == "syscall":
                operand_type, operand, line_no = tokens[token_index]
                token_index += 1
                if operand_type != TokenType.INT:
                    raise ValueError(
                        "Syntax error: expected integer after syscall"
                    )
                opcodes.append((Opcode.SYSCALL, int(operand), line_no))
            elif value == "if":
                if return_on_if:
                    token_index += 1
                    return opcodes, token_index

                if_identifier = f"if_{if_index}"
                else_identifier = f"else_{if_index}"
                if_index += 1

                opcodes.append((Opcode.IF, if_identifier, line_no))

                block_start_type, _, line_no = tokens[token_index]
                token_index += 1
                if block_start_type != TokenType.BLOCK_START:
                    raise SyntaxError(
                        "Expected code block after `if` keyword"
                    )
                ir, token_index = parse(tokens, token_index, args=args)
                opcodes.extend(ir)

                _, value, _ = tokens[token_index]
                if value == "else":
                    opcodes.append((Opcode.ELSE, else_identifier, line_no))
                    opcodes.append((Opcode.LABEL, if_identifier, line_no))
                    token_index += 1
                    block_start_type, _, line_no = tokens[token_index]
                    if block_start_type == TokenType.BLOCK_START:
                        ir, token_index = parse(tokens, token_index + 1, args=args)
                        opcodes.extend(ir)
                        opcodes.append((Opcode.LABEL, else_identifier, line_no))
                    else:
                        raise NotImplementedError(
                            "`else if` is not implemented yet"
                        )
                else:
                    opcodes.append((Opcode.LABEL, if_identifier, line_no))
            elif value == "def":
                name_type, function_name, _ = tokens[token_index]
                token_index += 1
                if name_type != TokenType.IDENTIFIER:
                    raise SyntaxError(
                        f"Expected identifier after `def` keyword on line {line_no}"
                    )
                if function_name in functions:
                    raise ValueError(
                        f"Function {function_name} has already been defined"
                    )

                colon_type, _, _ = tokens[token_index]
                token_index += 1
                if colon_type != TokenType.COLON:
                    raise SyntaxError(
                        f"Expected colon after identifier on line {line_no}"
                    )

                opcodes.append((Opcode.FUNCTION, function_name, line_no))

                next_type, _, line_no = tokens[token_index]
                token_index += 1
                fn_args = {}
                while next_type != TokenType.ARROW:
                    if next_type != TokenType.TYPE:
                        raise SyntaxError(
                            f"{line_no}: Expected type in function definition"
                        )
                    # TODO: Type checking

                    next_type, arg_name, line_no = tokens[token_index]
                    token_index += 1
                    if next_type != TokenType.IDENTIFIER:
                        raise SyntaxError(
                            f"{line_no}: Expected identifier after type"
                        )
                    fn_args[arg_name] = len(fn_args)

                    next_type, _, _ = tokens[token_index]
                    if next_type == TokenType.COMMA:
                        token_index += 1
                    elif next_type != TokenType.ARROW:
                        raise SyntaxError(
                            f"{line_no}: Expected comma or arrow after types"
                        )

                    next_type, _, line_no = tokens[token_index]
                    token_index += 1

                functions[function_name] = len(fn_args)

                next_type, return_type, _ = tokens[token_index]
                token_index += 1
                if next_type != TokenType.TYPE:
                    raise SyntaxError(
                        f"{line_no}: Expected return type in function definition"
                    )
                # TODO: Type checking

                block_start_type, _, line_no = tokens[token_index]
                token_index += 1
                if block_start_type != TokenType.BLOCK_START:
                    raise SyntaxError(
                        f"{line_no}: Expected code block after function declaration"
                    )
                ir, token_index = parse(tokens, token_index, args=fn_args)
                opcodes.extend(ir)
                opcodes.append((Opcode.RETURN, 0, line_no))
            elif value == "buffer":
                name_type, buffer_name, line_no = tokens[token_index]
                token_index += 1
                if name_type != TokenType.IDENTIFIER:
                    raise SyntaxError(
                        f"{line_no}: Expected identifier after `buffer` keyword"
                    )
                size_type, buffer_size, line_no = tokens[token_index]
                token_index += 1
                if size_type != TokenType.INT:
                    raise SyntaxError(
                        f"{line_no}: Expected integer after buffer identifier"
                    )
                buffers.append(buffer_name)
                opcodes.append((Opcode.CREATE_BUFFER, (buffer_name, buffer_size), line_no))
            elif value == "const":
                name_type, const_name, line_no = tokens[token_index]
                token_index += 1
                if name_type != TokenType.IDENTIFIER:
                    raise SyntaxError(
                        f"{line_no}: Expected identifier after `const` keyword"
                    )
                value_type, value, line_no = tokens[token_index]
                token_index += 1
                if value_type != TokenType.INT:
                    raise SyntaxError(
                        f"{line_no}: Non-integer constants are unsupported"
                    )
                constants[const_name] = value
            elif value == "derefb":
                opcodes.append((Opcode.DEREF_B, 0, line_no))
            elif value == "derefc":
                opcodes.append((Opcode.DEREF_C, 0, line_no))
            elif value == "derefi":
                opcodes.append((Opcode.DEREF_I, 0, line_no))
            elif value == "derefp":
                opcodes.append((Opcode.DEREF_P, 0, line_no))
            elif value == "setb":
                opcodes.append((Opcode.SET_B, 0, line_no))
            elif value == "setc":
                opcodes.append((Opcode.SET_C, 0, line_no))
            elif value == "seti":
                opcodes.append((Opcode.SET_I, 0, line_no))
            elif value == "setp":
                opcodes.append((Opcode.SET_P, 0, line_no))
        elif token_type == TokenType.BLOCK_START:
            raise SyntaxError(f"Unexpected block start on line {line_no}")
        elif token_type == TokenType.TYPE:
            raise SyntaxError(f"Unexpected type on line {line_no}")
        elif token_type == TokenType.IDENTIFIER:
            if value in functions:
                opcodes.append((Opcode.CALL, value, line_no))
            elif value in buffers:
                opcodes.append((Opcode.GET_BUFFER, value, line_no))
            elif value in constants:
                opcodes.append((Opcode.PUSH_INT, constants[value], line_no))
            elif value in args:
                index = len(args) - args[value] + 1
                opcodes.append((Opcode.GET_ARG, index, line_no))
            else:
                raise SyntaxError(f"Unexpected identifier on line {line_no}")
        else:
            raise ValueError(f"Unknown token type: {token_type}")

    return opcodes, token_index


### Code generator ###


def output(a, b, c, to_string=False):
    string = f"{a:10} {b:10} {c:10}"
    if to_string:
        return string + "\n"
    else:
        print(string)

def generate_code(ir):
    data = output("", "section", ".data", to_string=True)
    bss = output("", "section", ".bss", to_string=True)
    string_index = 1
    output("", "global", "_start")
    output("", "section", ".text")

    for opcode, operand, line_no in ir:
        output("", f"; {line_no}: {opcode}", "")
        if opcode == Opcode.PUSH_INT:
            output("", "mov", f"rax, {operand}")
            output("", "push", "rax")
        elif opcode == Opcode.PUSH_BOOL:
            output("", "mov", f"rax, {operand}")
            output("", "push", "rax")
        elif opcode == Opcode.PUSH_STRING:
            string_label = f"s_{string_index}"
            output("", "mov", f"rax, {string_label}")
            output("", "push", "rax")
            data += output(
                f"{string_label}:",
                "db",
                f"`{operand}`, 0",
                to_string=True,
            )
            string_index += 1
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
        elif opcode == Opcode.BITWISE_AND:
            output("", "pop", "rax")
            output("", "pop", "rbx")
            output("", "and", "rbx, rax")
            output("", "push", "rbx")
        elif opcode == Opcode.BITWISE_OR:
            output("", "pop", "rax")
            output("", "pop", "rbx")
            output("", "or", "rbx, rax")
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
        elif opcode == Opcode.SYSCALL:
            output("",  "pop", "rax")
            if operand > 6:
                raise ValueError("Syscall should have 1-6 arguments")
            if operand > 5:
                output("",  "pop", "r9")
            if operand > 4:
                output("",  "pop", "r8")
            if operand > 3:
                output("",  "pop", "rcx")
            if operand > 2:
                output("",  "pop", "rdx")
            if operand > 1:
                output("",  "pop", "rsi")
            output("",  "pop", "rdi")
            output("",  "syscall", "")
        elif opcode == Opcode.IF:
            output("", "pop", "rax")
            output("", "test", "rax, rax")
            output("", "jz", operand)
        elif opcode == Opcode.LABEL:
            output(f"{operand}:", "", "")
        elif opcode == Opcode.ELSE:
            output("", "jmp", operand)
        elif opcode == Opcode.FUNCTION:
            output(f"{operand}:", "", "")
            output("", "push", "rbp")
            output("", "mov", "rbp, rsp")
        elif opcode == Opcode.RETURN:
            output("", "pop", "rax")
            output("", "mov", "rsp, rbp")
            output("", "pop", "rbp")
            output("", "ret", "")
        elif opcode == Opcode.CALL:
            output("", "call", operand)
            for _ in range(functions[operand]):
                output("", "pop", "rbx")
            output("", "push", "rax")
        elif opcode == Opcode.GET_ARG:
            output("", "mov", "rax, rbp")
            output("", "add", f"rax, {operand*8}")
            output("", "mov", "rbx, [rax]")
            output("", "push", "rbx")
        elif opcode == Opcode.DEREF_B:
            output("", "pop", "rax")
            output("", "xor", "rbx, rbx")
            output("", "mov", "bl, [rax]")
            output("", "push", "rbx")
        elif opcode == Opcode.DEREF_C:
            output("", "pop", "rax")
            output("", "xor", "rbx, rbx")
            output("", "mov", "bl, [rax]")
            output("", "push", "rbx")
        elif opcode == Opcode.DEREF_I:
            output("", "pop", "rax")
            output("", "mov", "rbx, [rax]")
            output("", "push", "rbx")
        elif opcode == Opcode.DEREF_P:
            output("", "pop", "rax")
            output("", "mov", "rbx, [rax]")
            output("", "push", "rbx")
        elif opcode == Opcode.SET_B:
            output("", "pop", "rax")
            output("", "pop", "rbx")
            output("", "mov", "[rax], bl")
        elif opcode == Opcode.SET_C:
            output("", "pop", "rax")
            output("", "pop", "rbx")
            output("", "mov", "[rax], bl")
        elif opcode == Opcode.SET_I:
            output("", "pop", "rax")
            output("", "pop", "rbx")
            output("", "mov", "[rax], rbx")
        elif opcode == Opcode.SET_P:
            output("", "pop", "rax")
            output("", "pop", "rbx")
            output("", "mov", "[rax], rbx")
        elif opcode == Opcode.GET_BUFFER:
            output("", "mov", f"rax, {operand}")
            output("", "push", "rax")
        elif opcode == Opcode.CREATE_BUFFER:
            buffer_name, buffer_size = operand
            bss += output(
                f"{buffer_name}:",
                f"resb {buffer_size}",
                "",
                to_string=True,
            )
        else:
            raise ValueError(f"Unknown opcode: {opcode}")

    output("_start:", "", "")
    output("", "call", "main")
    output("", "push", "rax")
    output("exit:", "", "")
    output("", "mov", "rax, 60")
    output("", "pop", "rdi")
    output("", "syscall", "")
    print(data)
    print(bss)


### Command-line interface ###


def read_file(filename):
    with open(filename, "r") as f:
        content = f.read()
    return content


def parse_file(filename):
    content = read_file(filename)
    tokens = fetch_tokens(content)
    ir, _ = parse(tokens, 0)
    return ir


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("filename", action="store", type=str, default=None)
    return parser.parse_args()


def run(filename):
    if not filename:
        print("Please provide a filename to compile.")
        exit(1)

    ir = parse_file(filename)
    generate_code(ir)


if __name__ == "__main__":
    args = parse_args()
    run(**vars(args))
