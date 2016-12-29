#!/bin/bash

# Test if expression succeeds, i.e. the return code is zero. Otherwise it fails
# with an error message. By default the error message is `Assertion failed:
# EXPR', but can be customized by passing the optional value TEXT.
#
# Usage: test_assert EXPR [TEXT]
function test_assert()
{
  #{{{
  local -r _expr=${1:?Missing EXPR}
  local -r _text=${2:-"Assertion failed: ${_expr}"}

  eval "[ ${_expr} ]" || die -1 "${_text}"
  #}}}
}
