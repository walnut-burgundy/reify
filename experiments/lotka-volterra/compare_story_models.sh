#!/bin/sh

if [ "$#" -ne 2 ]; then
  echo "usage: $0 PDE_STORY MARKOV_STORY" >&2
  exit 2
fi

first=$1
second=$2

case "$(basename "$first")|$(basename "$second")" in
  *[Pp][Dd][Ee]*\|*[Mm][Aa][Rr][Kk][Oo][Vv]*)
    echo "Wait, I don't know what to do with this. I thought you told me that the story of these animals was a PDE, but now you're telling me it's a Markov model?"
    ;;
  *[Mm][Aa][Rr][Kk][Oo][Vv]*\|*[Pp][Dd][Ee]*)
    echo "Wait a second. I thought you said this story was a Markov model, and now you're telling me it's a PDE model?"
    ;;
  *)
    echo "Wait, I don't know what to do with this. This mock only recognizes argument names containing PDE and Markov." >&2
    exit 1
    ;;
esac
