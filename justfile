#!/usr/bin/env just

set shell := ["bash", "-c"]

default:
    @just --list

lint:
  speakeasy openapi lint --schema openapi.yaml

build:
  speakeasy run && go build

[positional-arguments]
spec-diff-to-overlay:
  speakeasy overlay compare --before "$1" --after "$2" > "$3"