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
    - Before commit always check git diff and make brief and meaningful one line commit message like "tast ... added to chapter ...".
    - in chapter.md chapter title should be h2 tag (like ## Sliding Window), subchapter title should be h3 tag (like ### Moving pointers toward each other from opposite directions), and task should always be h4 tag (like #### Reverse String) even if there is no subchapter.

    ## Special Instructions for Gemini
    - Adding task, look at tasks from previous chapters and follow its style. Each task should contain list of 3 points: description, time complexity, space complexity.
    - Task description should as brief as possible, so I can remember it at one glance, and you must always edit it, to make it more breif readable and understandable.
    - after update .md files always render them into html using render_notes.sh script.
    - after adding or removing task to chapter update the tasks count on the main page (total count and specific chapter count).
