    # Project: My Web Notes on solved leetcode problems

    ## Goal
    To build a static website with my notes on solved leetcode problems and publish it on github pages

    ## Key Files
    - `index.md`: main page for the website.
    - `two_pointers.md, sliding_window.md, etc`: chapters, main page should contain links to these chapters.
    - `style.css`: styles for the website.
    - `render_notes.sh`: script to render markdown files into HTML.

    ## Coding Standards
    - Never edit html, only .md and .css and other files, web pages should be generated from markdown files.
    - Follow google materail desing style guide
    - Changing chapters look to the previous chapters and follow its style.
    - Before commit always check git diff and make brief meaningful commit message, ask me if it good enough. Use two line commit with -m "line" -m "line2".

    ## Special Instructions for Gemini
    - Adding task, look at tasks from previous chapters and follow its style.
    - Task description should as brief as possible, so I can remember it at one glance.
    - after update .md files always render them into html using render_notes.sh script.
