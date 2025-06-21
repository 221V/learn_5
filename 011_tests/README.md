# run tests

```
> zig test program.zig
All 1 tests passed.


zig test program.zig
2/2 program.test.always fails...FAIL (TestUnexpectedResult)
/home/e/.zig/lib/std/testing.zig:540:14: 0x103cc9f in expect (test)
    if (!ok) return error.TestUnexpectedResult;
             ^
/home/e/git/learn_5/011_tests/program.zig:16:3: 0x103cdf5 in test.always fails (test)
  try expect(false);
  ^
1 passed; 0 skipped; 1 failed.
error: the following test command failed with exit code 1:
/home/e/.cache/zig/o/f4fc0ae0b888b19a191288ee50b1958e/test
```

