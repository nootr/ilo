# Traceback as opcodes, optimized

## TODO

- [ ] Rename i64tos to itohex, remove i8tos functions
- [ ] Rewrite itos function for base 10
- [ ] Port itos and strlen to opcodes, put in `lib/ilo/code.ilo`
- [ ] Split RETURN opcode
- [ ] Write traceback function in ilo to get opcodes
- [ ] Use new function call format: {function, file, line}, line = -1 : root call
  - [ ] Adjust arg offsets
  - [ ] Change function call pre-pushes
  - [ ] Update `_start`
