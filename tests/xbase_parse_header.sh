#!/bin/bash

function xbase_parse_header()
{
  #                     0   1   2
  local -r _raw_header="foo,bar,baz"

  parse_header "${_raw_header}" , x_

  test_assert "'foo' == '${x_fields[0]}'"
  test_assert "'bar' == '${x_fields[1]}'"
  test_assert "'baz' == '${x_fields[2]}'"

}

xbase_parse_header
