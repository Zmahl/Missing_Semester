#!/usr/bin/env bash
find . -name '*.html' | xargs tar -czf html_archive.tar.gz
