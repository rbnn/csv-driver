#!/bin/bash

function xbase_add_prefix_to_fields()
{
  #                   0     1     2     3     4     5     6     7     8
  local -ra _fields=("abc" "def" "ghi" "jkl" "mno" "pqr" "stu" "vwx" "yz_")
  local -r _prefix="foo_"
  add_prefix_to_fields _fields[@] "${_prefix}" x_

  test_assert "'foo_abc' == '${x_fields[0]}'"
  test_assert "'foo_def' == '${x_fields[1]}'"
  test_assert "'foo_ghi' == '${x_fields[2]}'"
  test_assert "'foo_jkl' == '${x_fields[3]}'"
  test_assert "'foo_mno' == '${x_fields[4]}'"
  test_assert "'foo_pqr' == '${x_fields[5]}'"
  test_assert "'foo_stu' == '${x_fields[6]}'"
  test_assert "'foo_vwx' == '${x_fields[7]}'"
  test_assert "'foo_yz_' == '${x_fields[8]}'"
}

xbase_add_prefix_to_fields
