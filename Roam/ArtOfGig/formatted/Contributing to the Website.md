owner:: [Nathan Acks](<Nathan Acks.md>)
last updated:: [September 13th, 2020](<September 13th, 2020.md>) by [Nathan Acks](<Nathan Acks.md>)
# Content Updates
    - ## Website
        - Website content is currently stored in [GitHub](<GitHub.md>).
        - There are four ways you can submit content changes
            1. Most site updates (project pages, member info, about page, etc.) can be done through the [admin panel](https://www.yakcollective.org/admin/).
                - You'll need a [GitHub](https://github.com/) account. Knowledge of Markdown, HTML, or CSS isn't required, but will be helpful in some cases.
                - There's a quick tutorial on how to use the admin panel under **How to Use This Interface > Help**. This should be the first thing you see after logging in; just click **Help** to view.
                - Once you've made your change, ping someone with **owner** level access in [GitHub](<GitHub.md>) to approve it.
            2. You can also [fork](https://help.github.com/en/github/getting-started-with-github/fork-a-repo) the [The-Yak-Collective/yakcollective](https://github.com/The-Yak-Collective/yakcollective/) repo, make the changes you want, and then submit a [pull request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests).
                - You'll probably want to review the [Website Architecture](<Website Architecture.md>) document first.
            3. If you're not comfortable with any of the above, you should [open a ticket](https://github.com/The-Yak-Collective/yakcollective/issues/new) clearly describing the change you want to make.
            4. For emergency updates, ping someone with **owner** level access in [GitHub](<GitHub.md>) on [Discord](<Discord.md>).
    - ## Member Writings & Newsletter Archive
        - Member writings and newsletters are pulled in using [IFTTT](<IFTTT.md>) from various RSS.
            - {{[embed](<embed.md>): ((RLF445t5m))}}
            - {{[embed](<embed.md>): ((URd0ZDDRF))}}
        - Writings and newsletter data are archived in [GitHub](<GitHub.md>)
            - Member writings aren't exposed directly on the finished site; instead, the intention is to push visitors out to the original websites
            - Newsletter data isn't displayed right now, but in the future will be exposed in an "archive"
        - If you want to add an RSS feed or update an existing feed, please [open a ticket](https://github.com/The-Yak-Collective/yakcollective/issues/new).
# Site Development
    - ## Current [GitHub](<GitHub.md>) Branches
        - `netlify-prod` (point: [Nathan Acks](<Nathan Acks.md>))
            - Production branch.
                - ^^Major changes should never be made directly to this branch.^^
                    - Instead, new branches should be created, updated, fully tested, and __only then__ merged in.
                - Minor changes (fixing typos, updating links) can be made to this branch.
            - [GitHub](<GitHub.md>): https://github.com/The-Yak-Collective/yakcollective/tree/netlify-prod
            - [Netlify](<Netlify.md>): https://app.netlify.com/sites/practical-lichterman-20c7e0/overview
        - `astonishing-stories` (point: [Nathan Acks](<Nathan Acks.md>))
            - Template and content updates for the upcoming [Astonishing Stories](<Astonishing Stories.md>) release.
            - [GitHub](<GitHub.md>): https://github.com/The-Yak-Collective/yakcollective/tree/astonishing-stories
            - [Netlify](<Netlify.md>): https://app.netlify.com/sites/optimistic-jennings-266cab/overview
        - `knack-migration` (point: [Maier Fenster](<Maier Fenster.md>))
            - Work on migrating member data to [Knack.com](<Knack.com.md>).
            - [GitHub](<GitHub.md>): https://github.com/The-Yak-Collective/yakcollective/tree/knack-migration
            - [Netlify](<Netlify.md>): https://app.netlify.com/sites/competent-shockley-33f53c/overview
        - `admin-improvements` (point: [Maier Fenster](<Maier Fenster.md>))
            - Branch containing general improvements being worked on by [Maier Fenster](<Maier Fenster.md>).
            - [GitHub](<GitHub.md>): https://github.com/The-Yak-Collective/yakcollective/tree/admin-improvements
            - [Netlify](<Netlify.md>): https://app.netlify.com/sites/inspiring-villani-8898ca/overview
        - `v3.0` (point: [Nathan Acks](<Nathan Acks.md>))
            - [Gatsby](https://www.gatsbyjs.org/) [migration](https://github.com/The-Yak-Collective/yakcollective/issues/12) branch.
            - [GitHub](<GitHub.md>): https://github.com/The-Yak-Collective/yakcollective/tree/v3.0
        - `admin-improvements-bak-202008118` (point: [Maier Fenster](<Maier Fenster.md>))
            - Backup up `admin-improvements`
            - [GitHub](<GitHub.md>): https://github.com/The-Yak-Collective/yakcollective/tree/admin-improvements-bak-20200818
        - `master` (point: [Tom Critchlow](<Tom Critchlow.md>))
            - Original website by [Tom Critchlow](<Tom Critchlow.md>), designed to be hosted by [GitHub Pages](https://pages.github.com/).
            - [GitHub](<GitHub.md>): https://github.com/The-Yak-Collective/yakcollective/tree/master
    - ## Helping Out
        - Things you should take a look at first:
            - [Website Architecture](<Website Architecture.md>)
            - [Code Style Guide](<Code Style Guide.md>)
            - [Building the Website](<Building the Website.md>)
        - Check out the [GitHub issue tracker for the site](https://github.com/The-Yak-Collective/yakcollective/issues) for a list of current ideas, known issues, etc.
            - If you see a problem or have an idea, submit a ticket.
            - You don't have to have write access to contribute changes! [Pull requests](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests) welcome.
            - Help on any issue (and cool new ideas via pull requests) is welcome. [Issues marked as "help wanted"](https://github.com/The-Yak-Collective/yakcollective/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22) are those that need further thought and/or require skills (like website accessibility and graphic design) that the current team isn't strong in.

# Backlinks
## [Yak Collective Website](<Yak Collective Website.md>)
- [Contributing to the Website](<Contributing to the Website.md>)

