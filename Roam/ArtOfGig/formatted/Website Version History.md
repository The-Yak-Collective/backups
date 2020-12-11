About:: __Website version history.__
Chief Page Wrangler:: [Nathan Acks](<Nathan Acks.md>)
    - **[Additional Page Wranglers](<Additional Page Wranglers.md>):** `[Fname Lname](<Fname Lname.md>)` | `[Fname Lname](<Fname Lname.md>)`
Created:: [August 31st, 2020](<August 31st, 2020.md>) by [Nathan Acks](<Nathan Acks.md>)
Last Updated:: [December 7th, 2020](<December 7th, 2020.md>) by [Nathan Acks](<Nathan Acks.md>)
Last Gardened:: `/Today` by `[Fname Lname](<Fname Lname.md>)`
# v2.2
    - [Nathan Acks](<Nathan Acks.md>)
        - Push "featured yak" to [Twitter](<Twitter.md>).
        - Code refactoring and cleanup.
    - [Maier Fenster](<Maier Fenster.md>)
        - Back-end infrastructure for daily "featured yak" + box on homepage.
        - Randomize member page.
        - Major improvements to Netlify CMS layout and documentation.
# v2.1
    - [Nathan Acks](<Nathan Acks.md>)
        - Fixed Netlify CMS for folks not already in the [GitHub](<GitHub.md>) team.
        - Incoming member blog posts are now pushed to [Twitter](<Twitter.md>) and the `yaktalk-content` [Discord](<Discord.md>) channel after being committed to the site.
        - Removed "partner" member designation.
        - Various formatting tweaks suggested by [Tom Critchlow](<Tom Critchlow.md>).
    - [Maier Fenster](<Maier Fenster.md>)
        - Added rotating slogans to the page footers + bonus "tips" easter egg.
# v2.0
    - [Nathan Acks](<Nathan Acks.md>)
        - More flexible (and hopefully easier to maintain!).
        - Documentation (originally just in the [GitHub](<GitHub.md>) `README.md`, now this file!).
        - Uses [Netlify](<Netlify.md>) to build and serve the site, with code still stored in GitHub.
            - Still using Jekyll as the build system.
        - More consistent visual language (consistent link colors, concept of "accent" colors, etc.).
        - Lots of changes around projects and the project page.
            - Projects are part of a "sequence" indexed off of a particular date. Currently there's only a COVID-19 sequence (a.k.a. "pandemic mean time"), but others can be added.
            - Project cards are customized with the project hero image and accent color.
            - Three sections:
                - **Latest Projects** are the most recent (__live__) three projects.
                - **Upcoming Projects** are projects that are on-deck and we want to advertise, but aren't yet released. These project cards are __not__ clickable links, and the project page itself is not built.
                - **Past Projects** are all live projects older than the most recent three.
            - Hero images on individual project pages are now faded a bit to improve readability.
            - Lots more flexibility with individual project pages now.
                - Custom hero image, accent color, CSS.
                - We'll keep evolving this page as we need more flexibility. About 60% of the code was rewritten for __The New Old Home__; subsequent projects will probably also need new/changed code, but the aim is to need to make fewer changes each time.
        - Member pages are intended to function as "landing pages" for Yak Collective folks.
            - The [Members](https://www.yakcollective.org/members/) page proper arranges people by join date (defined as "first project contributed to"), then alphabetically within each cohort.
                - Cards are clickable links to the member page itself.
            - Members pages are linked on each project page.
            - Each member page includes:
                - Projects (as project cards) that the member has lead or collaborated on.
                - Blog posts/writings from RSS feeds (when available).
                - Each member can also include additional descriptive page text (though this isn't currently being used by anyone).
        - The [Join](https://www.yakcollective.org/join/) page is just a wrapper around [the existing Google Form](https://docs.google.com/forms/d/e/1FAIpQLSfVUUvuIkzEGffk1CoEgzOkeO_yI05Nuw6zU3H1TNLmiQOf7g/viewform).
            - Using a wrapper means we can swap out the Google Form for something more sophisticated later.
                - Right now, there's an [unused "welcome" page](https://www.yakcollective.org/welcome/) that could be used for a landing page after form submission.
        - [Netlify Functions](https://functions.netlify.com/) (which allows [Amazon Lambda](https://aws.amazon.com/lambda/) functions to be deployed as part of building the site) are used to commit incoming member blog posts into the site GitHub repository.
            - The commit causes the site to be rebuilt by [Netlify](<Netlify.md>), which adds a link to the blog post to the [Writings](https://www.yakcollective.org/writings/) page.
            - Post contents are cached in the [GitHub](<GitHub.md>) repo to allow us to speed up site builds, allow posts that have disappeared from member RSS feeds to still be linked, and to allow for later experiments around textual analysis, auto-tagging, etc.
            - Posts are __always__ linked back to the original, __never__ internally. The point is to push people to member sites rather than trying to get them to stay on our site.
            - Similarly, the writings RSS feed is styled after __Daring Fireball__: Post content is displayed, but links take people back to the _member's_ site, not yakcollective.org.
        - There's an experimental [admin page](https://www.yakcollective.org/admin/) built using [Netlify CMS](https://www.netlifycms.org/).
            - This isn't working right now for folks who don't have access to the repo. See [GitHub issue [10](<10.md>)](https://github.com/The-Yak-Collective/yakcollective/issues/10).
                - __Should__ work for anyone with a GitHub account.
            - Edits __should__ create pull requests, that can then be approved.
            - Preview doesn't capture the whole look of the finale page right now.
                - This can't be supported with Jekyll, but may be possible to support by moving to [Gatsby](https://www.gatsbyjs.org/) (see [GitHub issue [12](<12.md>)](https://github.com/The-Yak-Collective/yakcollective/issues/12))
# v1.0
    - [Tom Critchlow](<Tom Critchlow.md>)
        - Initial site. Uses [Jekyll](https://jekyllrb.com/) via [GitHub Pages](https://pages.github.com/).

# Backlinks
## [Yak Collective Website](<Yak Collective Website.md>)
- [Website Version History](<Website Version History.md>)

