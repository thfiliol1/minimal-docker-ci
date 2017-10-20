#!/bin/sh
set -e
set -x
echo "Sylvain !!"
expected="Hello World"
actual=$(nc -v localhost 5000)
echo "Expecting: $expected"
echo "Server says: $actual"
if [ "$expected" != "$actual" ]; then
  echo "Test failed"
  exit 1
else
  echo "Test passed"
  exit 0
fi

