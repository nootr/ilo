#!/usr/bin/env bash

ILO="./build/ilo"

echo "[INFO] $(sha1sum $ILO)"

for file in $(find tests/*.ilo -maxdepth 1 -not -type d); do
  # Compile
  echo -n "[TEST] $(sha1sum $file).. "
  $ILO $file > test.asm
  nasm -felf64 test.asm -o test.o
  ld -o test test.o

  # Get metadata
  DESCRIPTION="$(grep '^# Description:' $file | cut -d: -f2-)"
  ARGS="$(grep '^# Args:' $file | cut -d: -f2-)"
  EXPECTED_EXIT_CODE="$(
    printf "%b" "$(grep '^# Exit code:' $file | cut -d: -f2-)"
  )"
  EXPECTED_STDOUT="$(
    printf "%b" "$(grep '^# Stdout:' $file | cut -d: -f2-)"
  )"
  EXPECTED_STDERR="$(
    printf "%b" "$(grep '^# Stderr:' $file | cut -d: -f2-)"
  )"

  # Run test
  EXIT_CODE="$(./test $ARGS > /dev/null 2>&1; echo $?)"
  STDOUT="$(./test $ARGS 2>/dev/null)"
  STDERR="$(./test $ARGS 2>&1 1>/dev/null)"

  # Verify results
  SUCCESS=1
  if [ "$EXIT_CODE" != "$EXPECTED_EXIT_CODE" ]; then
    echo "[FAIL] Test: $DESCRIPTION. Exit code: $EXIT_CODE (not $EXPECTED_EXIT_CODE)"
    SUCCESS=0
  fi

  if [ "$STDOUT" != "$EXPECTED_STDOUT" ]; then
    echo "[FAIL] Test: $DESCRIPTION. Stdout: $STDOUT (not $EXPECTED_STDOUT)"
    SUCCESS=0
  fi

  if [ "$STDERR" != "$EXPECTED_STDERR" ]; then
    echo "[FAIL] Test: $DESCRIPTION. Stderr: $STDERR (not $EXPECTED_STDERR)"
    SUCCESS=0
  fi

  if [[ "$SUCCESS" -eq 1 ]]; then
    echo "OK"
  fi

  # Cleanup
  rm test test.o test.asm

  if [[ "$SUCCESS" -eq 0 ]]; then
    echo "Test failed!"
    exit 1
  fi
done

echo "All tests OK!"
