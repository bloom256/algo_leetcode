#!/bin/bash

pandoc -s index.md -o index.html --css style.css --include-in-header header.html
pandoc -s two_pointers.md -o two_pointers.html --css style.css --include-in-header header.html
pandoc -s sliding_window.md -o sliding_window.html --css style.css --include-in-header header.html
pandoc -s linked_list.md -o linked_list.html --css style.css --include-in-header header.html