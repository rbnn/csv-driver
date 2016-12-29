#!/bin/bash

function xbase_join_by()
{
  local -ra _fields=("abc" "def" "ghi")
  local -r _str="/"
  
  local -r _text=$(join_by _fields[@] "${_str}")

  test_assert "'abc/def/ghi' == '${_text}'"
}

function xbase_join_by_str()
{
  #                   0     1     2
  local -ra _fields=("abc" "def" "ghi")
  local -r _str="--"
  
  local -r _text=$(join_by_str _fields[@] "${_str}")

  test_assert "'abc--def--ghi' == '${_text}'"
}

xbase_join_by
xbase_join_by_str
