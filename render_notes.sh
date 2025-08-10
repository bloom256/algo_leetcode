#!/bin/bash

pandoc -s index.md -o site/index.html --css style.css --include-in-header header.html
pandoc -s chapter_1_two_pointers.md -o site/chapter_1_two_pointers.html --css style.css --include-in-header header.html
pandoc -s chapter_2_sliding_window.md -o site/chapter_2_sliding_window.html --css style.css --include-in-header header.html
pandoc -s chapter_3_linked_list.md -o site/chapter_3_linked_list.html --css style.css --include-in-header header.html
pandoc -s chapter_4_hash_map.md -o site/chapter_4_hash_map.html --css style.css --include-in-header header.html
pandoc -s chapter_5_stack_queue.md -o site/chapter_5_stack_queue.html --css style.css --include-in-header header.html
pandoc -s chapter_6_binary_tree.md -o site/chapter_6_binary_tree.html --css style.css --include-in-header header.html
pandoc -s chapter_7_trie.md -o site/chapter_7_trie.html --css style.css --include-in-header header.html
pandoc -s chapter_8_heap.md -o site/chapter_8_heap.html --css style.css --include-in-header header.html
