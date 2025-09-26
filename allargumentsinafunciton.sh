#!/bin/bash
show_args(){
  echo "This funciton got $#  arguments"
   for arg in "$@"
   do
    echo "arg: $arg"
   done
}
show_args one two three
show_args apple
