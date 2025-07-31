#!/bin/bash

pandoc -s index.md -o index.html --css style.css --include-in-header header.html
pandoc -s chapter_1_two_pointers.md -o chapter_1_two_pointers.html --css style.css --include-in-header header.html
pandoc -s chapter_2_sliding_window.md -o chapter_2_sliding_window.html --css style.css --include-in-header header.html
pandoc -s chapter_3_linked_list.md -o chapter_3_linked_list.html --css style.css --include-in-header header.html
pandoc -s chapter_4_hash_map.md -o chapter_4_hash_map.html --css style.css --include-in-header header.html
pandoc -s chapter_5_stack_queue.md -o chapter_5_stack_queue.html --css style.css --include-in-header header.html