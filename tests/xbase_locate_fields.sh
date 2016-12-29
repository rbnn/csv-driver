#!/bin/bash

function xbase_locate_fields()
{
  #                   0     1     2     3     4     5     6     7     8
  local -ra _fields=("abc" "def" "ghi" "jkl" "mno" "pqr" "stu" "vwx" "yz_")
  locate_fields _fields[@] x_ mno yz_ abc vwx def jkl ghi abc

  test_assert "'mno' == '${_fields[${x_index[0]}]}'"
  test_assert "'yz_' == '${_fields[${x_index[1]}]}'"
  test_assert "'abc' == '${_fields[${x_index[2]}]}'"
  test_assert "'vwx' == '${_fields[${x_index[3]}]}'"
  test_assert "'def' == '${_fields[${x_index[4]}]}'"
  test_assert "'jkl' == '${_fields[${x_index[5]}]}'"
  test_assert "'ghi' == '${_fields[${x_index[6]}]}'"
  test_assert "'abc' == '${_fields[${x_index[7]}]}'"

  test_assert "'abc' == '${x_found[0]}'"
  test_assert "'abc' == '${x_found[1]}'"
  test_assert "'def' == '${x_found[2]}'"
  test_assert "'ghi' == '${x_found[3]}'"
  test_assert "'jkl' == '${x_found[4]}'"
  test_assert "'mno' == '${x_found[5]}'"
  test_assert "'vwx' == '${x_found[6]}'"
  test_assert "'yz_' == '${x_found[7]}'"
}

xbase_locate_fields
