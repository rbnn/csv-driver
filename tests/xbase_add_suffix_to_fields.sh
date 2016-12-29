#!/bin/bash

function xbase_add_suffix_to_fields()
{
  #                   0     1     2     3     4     5     6     7     8
  local -ra _fields=("abc" "def" "ghi" "jkl" "mno" "pqr" "stu" "vwx" "yz_")
  local -r _suffix="_foo"
  add_suffix_to_fields _fields[@] "${_suffix}" x_

  test_assert "'abc_foo' == '${x_fields[0]}'"
  test_assert "'def_foo' == '${x_fields[1]}'"
  test_assert "'ghi_foo' == '${x_fields[2]}'"
  test_assert "'jkl_foo' == '${x_fields[3]}'"
  test_assert "'mno_foo' == '${x_fields[4]}'"
  test_assert "'pqr_foo' == '${x_fields[5]}'"
  test_assert "'stu_foo' == '${x_fields[6]}'"
  test_assert "'vwx_foo' == '${x_fields[7]}'"
  test_assert "'yz__foo' == '${x_fields[8]}'"
}

xbase_add_suffix_to_fields
