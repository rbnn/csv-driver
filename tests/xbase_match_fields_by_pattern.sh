#!/bin/bash

function xbase_match_fields_by_pattern()
{
  local -ra _fields=("foo" "bar" "a_foo" "a_bar" "foo_bar" "bar_foo")
  match_fields_by_pattern _fields[@] '_foo$' x_

  test_assert '"foo" == "${x_fields_unlike[0]}"'      # _fields[0]
  test_assert '"bar" == "${x_fields_unlike[1]}"'      # _fields[1]
  test_assert '"a_foo" == "${x_fields_like[0]}"'      # _fields[2]
  test_assert '"a_bar" == "${x_fields_unlike[2]}"'    # _fields[3]
  test_assert '"foo_bar" == "${x_fields_unlike[3]}"'  # _fields[4]
  test_assert '"bar_foo" == "${x_fields_like[1]}"'    # _fields[5]
}

xbase_match_fields_by_pattern
