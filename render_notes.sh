#!/bin/bash
pandoc -s algo_tasks_notes.md -o index.html --css style.css --include-in-header header.html