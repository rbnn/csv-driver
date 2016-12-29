#!/bin/bash

function xbase_delete_fields_by_index()
{
  #                   0     1     2     3     4     5     6     7     8
  local -ra _fields=("abc" "def" "ghi" "jkl" "mno" "pqr" "stu" "vwx" "yz_")
  local -ra _delete=(5 3 8)
  delete_fields_by_index _fields[@] _delete[@] x_

  test_assert "'abc' == '${x_fields[0]}'"
  test_assert "'def' == '${x_fields[1]}'"
  test_assert "'ghi' == '${x_fields[2]}'"
  test_assert "'mno' == '${x_fields[3]}'"
  test_assert "'stu' == '${x_fields[4]}'"
  test_assert "'vwx' == '${x_fields[5]}'"
}

xbase_delete_fields_by_index
