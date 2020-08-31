owner:: [Nathan Acks](<Nathan Acks.md>)
last updated:: [August 30th, 2020](<August 30th, 2020.md>)
last updated by:: [Nathan Acks](<Nathan Acks.md>)
![Netlify Status](https://api.netlify.com/api/v1/badges/943ff646-41b6-4b4b-ab86-a891698c72c7/deploy-status)
    - [Website Architecture](<Website Architecture.md>)
    - [Contributing to the Website](<Contributing to the Website.md>)
        - [Website Code Style Guide](<Website Code Style Guide.md>)
        - [Current Website Issues and Projects](https://github.com/The-Yak-Collective/yakcollective/issues)
        - [Building the Website](<Building the Website.md>)
    - [Website Version History](<Website Version History.md>)
---
# Site Structure
    Here's a quick rundown of the moving parts...
    ## Pages
        `about.md`
        `index.md`
        `members.md`
        `projects.md`
        `writings/feed.json`
            [JSON feed](https://jsonfeed.org/) for member writings, structured after John Gruber's feed on [Daring Fireball](https://daringfireball.net/) (e.g., posts link back to the original article, and __not__ [yakcollective.org](https://www.yakcollective.org/)).
        `writings/feed..xml`
            RSS feed, equivalent to `writings/feed.json`.
        `writings/index.html`
    ## Assets
        `assets/*`
        `robots.txt`
    ## Collections
        `members`
            Member data, one person per file. Referenced by projects and posts.
        `projects`
            Yak Collective projects.
        `sequences`
            Sequences used to group projects. Projects are counted in "days released since X".
    ## Member Feeds
        Posts in `writings/_posts` and `newsletter/_posts` are auto-pushed from member RSS feeds using [IFTTT](https://ifttt.com/) and [Netlify Functions](https://functions.netlify.com/).
        Current feeds pulled are documented above in the [Data Sources](<Data Sources.md>) document. To add or update a member feed, please [open a ticket](https://github.com/The-Yak-Collective/yakcollective/issues/new).
        Relevant infrastructure bits:
            `packages.json`
            `functions/create-post.js`
    ## Templates
        `_layouts/default.html`
            Base layout. This isn't actually used on any pages, but is inherited by other layouts.
        `_layouts/member.html`
            Used for member pages.
        `_layouts/member-list.html`
            Used for the member list page (`members.md`).
        `_layouts/minimal.html`
            The most minimal layout used on `yakcollective.org`. Directly used on the site home page (`index.md`), and inherited by most other layouts (with the exception of `project.html`).
        `_layouts/page.html`
            Normal layout for stand-alone pages.
        `_layouts/post.html`
            Layout for posts. Every post is assumed to have an author defined in the `members` collection.
            Note that while post pages are generated as part of the build process, they are __not__ linked anywhere on the site itself. (Links that would point to them instead point to the original post on the member's website.)
        `_layouts/project.html`
            Fancier formatting for pages in the `projects` collection.
        `_layouts/project-list.html`
            Used for the project list page (`projects.md`).
    ## Shared Elements
        `_includes/analytics.html`
            Google Analytics code; included on all pages by proxy through `_layouts/default.html`.
        `_includes/footer.html`
            Page footer elements.
        `_includes/head.html`
            HTML `<head/>` elements (things like `<meta/>` tags, _not_ page headers).
        `_includes/page.css`
            CSS used for per-page customization (accent colors, hero images, etc.).
        `_includes/member-card-html`
            Reusable "member card" element, currently used in the members list, individual member pages, and in the `_layouts/post.html` template.
        `_includes/nav.html`
            Page navigation elements.
        `_includes/project-box.html`
            Project card, used in the projects list and individual member pages.
        `_includes/toc.html`
            Table of contents for `_layouts/page.html` elements. Does unreal things with Liquid. Probably black magic.
    ## Build Infrastructure
        ### Repo
            `admin/*`
                [Netlify CMS](https://www.netlifycms.org/).
            `_config.yml`
            `Gemfile`
            `Gemfile.lock`
            `netlify.toml`
                Various Netlify build directives, just redirects right now.
        ### Secrets
            Netlify CMS uses GitHub as an OAuth provider; connection secrets can be found in Netlify under **Settings > Access control > OAuth**.
            The `create-post` function stores configuration information, a GitHub access token, and a token used to authenticate incoming requests, and Discord webhook channel and token information in Netlify under **Settings > Build & deploy > Environment > Environment variables**.
# Site History
    Notes for v1.0 and v.20 adapted from the June 13, 2020 [infrastructure](<infrastructure.md>) chat notes.
    ## v1.0
        Built by [Tom Critchlow](<Tom Critchlow.md>).
        Uses [Jekyll](https://jekyllrb.com/) via [GitHub Pages](https://pages.github.com/).
    ## v2.0
        Built by [Nathan Acks](<Nathan Acks.md>).
        More flexible (and hopefully easier to maintain!).
        ### Major Changes
            Documentation (originally just in the GitHub `README.md`, now this file!).
            Uses [Netlify](https://app.netlify.com/) to build and serve the site, with code still stored in GitHub.
                Still using Jekyll as the build system.
            More consistent visual language (consistent link colors, concept of "accent" colors, etc.).
            Lots of changes around projects and the project page.
                Projects are part of a "sequence" indexed off of a particular date. Currently there's only a COVID-19 sequence (a.k.a. "pandemic mean time"), but others can be added.
                Project cards are customized with the project hero image and accent color.
                Three sections:
                    **Latest Projects** are the most recent (__live__) three projects.
                    **Upcoming Projects** are projects that are on-deck and we want to advertise, but aren't yet released. These project cards are __not__ clickable links, and the project page itself is not built.
                    **Past Projects** are all live projects older than the most recent three.
                Hero images on individual project pages are now faded a bit to improve readability.
                Lots more flexibility with individual project pages now.
                    Custom hero image, accent color, CSS.
                    We'll keep evolving this page as we need more flexibility. About 60% of the code was rewritten for __The New Old Home__; subsequent projects will probably also need new/changed code, but the aim is to need to make fewer changes each time.
            Member pages are intended to function as "landing pages" for Yak Collective folks.
                The [Members](https://www.yakcollective.org/members/) page proper arranges people by join date (defined as "first project contributed to"), then alphabetically within each cohort.
                    Cards are clickable links to the member page itself.
                Members pages are linked on each project page.
                Each member page includes:
                    Projects (as project cards) that the member has lead or collaborated on.
                    Blog posts/writings from RSS feeds (when available).
                    Each member can also include additional descriptive page text (though this isn't currently being used by anyone).
            The [Join](https://www.yakcollective.org/join/) page is just a wrapper around [the existing Google Form](https://docs.google.com/forms/d/e/1FAIpQLSfVUUvuIkzEGffk1CoEgzOkeO_yI05Nuw6zU3H1TNLmiQOf7g/viewform).
                Using a wrapper means we can swap out the Google Form for something more sophisticated later.
                    Right now, there's an [unused "welcome" page](https://www.yakcollective.org/welcome/) that could be used for a landing page after form submission.
            [Netlify Functions](https://functions.netlify.com/) (which allows [Amazon Lambda](https://aws.amazon.com/lambda/) functions to be deployed as part of building the site) are used to commit incoming member blog posts into the site GitHub repository.
                The commit causes the site to be rebuilt by Netlify, which adds a link to the blog post to the [Writings](https://www.yakcollective.org/writings/) page.
                Post contents are cached in the GitHub repo to allow us to speed up site builds, allow posts that have disappeared from member RSS feeds to still be linked, and to allow for later experiments around textual analysis, auto-tagging, etc.
                Posts are __always__ linked back to the original, __never__ internally. The point is to push people to member sites rather than trying to get them to stay on our site.
                Similarly, the writings RSS feed is styled after __Daring Fireball__: Post content is displayed, but links take people back to the _member's_ site, not yakcollective.org.
            There's an experimental [admin page](https://www.yakcollective.org/admin/) built using [Netlify CMS](https://www.netlifycms.org/).
                This isn't working right now for folks who don't have access to the repo. See [GitHub issue [10](<10.md>)](https://github.com/The-Yak-Collective/yakcollective/issues/10).
                    __Should__ work for anyone with a GitHub account.
                Edits __should__ create pull requests, that can then be approved.
                Preview doesn't capture the whole look of the finale page right now.
                    This can't be supported with Jekyll, but may be possible to support by moving to [Gatsby](https://www.gatsbyjs.org/) (see [GitHub issue [12](<12.md>)](https://github.com/The-Yak-Collective/yakcollective/issues/12))

# Backlinks
## [Breaking Smart](<Breaking Smart.md>)
- **[Yak Collective Website](<Yak Collective Website.md>):**

## [Data Sources](<Data Sources.md>)
# [Yak Collective Website](<Yak Collective Website.md>)

- "Featured Yak" feed from the [Yak Collective Website](<Yak Collective Website.md>)

## [Frederic Laloux](<Frederic Laloux.md>)
- **[Yak Collective Website](<Yak Collective Website.md>):**

## [GitHub](<GitHub.md>)
- [yakcollective](https://github.com/The-Yak-Collective/yakcollective): The [Yak Collective Website](<Yak Collective Website.md>)

## [IT Infrastructure](<IT Infrastructure.md>)
- [Yak Collective Website](<Yak Collective Website.md>)

## [Internal Volunteer Opportunities](<Internal Volunteer Opportunities.md>)
- Help with the [Yak Collective Website](<Yak Collective Website.md>)

## [Netlify](<Netlify.md>)
- Provides the build environment for the [Yak Collective Website](<Yak Collective Website.md>)

## [Production Cell](<Production Cell.md>)
- [Yak Collective Website](<Yak Collective Website.md>)

- __Work with [Yak Collective Website](<Yak Collective Website.md>)

## [Things We Need](<Things We Need.md>)
- Check out the [Yak Collective Website](<Yak Collective Website.md>)

## [Thomas Lisankie](<Thomas Lisankie.md>)
- **[Twitter](<Twitter.md>):** [TomLisankie](https://twitter.com/TomLisankie)
- **[Yak Collective Website](<Yak Collective Website.md>):**

## [Yak Collective Robot](<Yak Collective Robot.md>)
- [GitHub](<GitHub.md>) (fail-safe admin account, owns the OAuth connector used by Netlify CMS on the [Yak Collective Website](<Yak Collective Website.md>))

## [Yak Collective State of the Union](<Yak Collective State of the Union.md>)
- [Yak Collective Website](<Yak Collective Website.md>)

## [infrastructure](<infrastructure.md>)
- infrastructure chat 06 6.13.2020: notes in — [Yak Collective Website](<Yak Collective Website.md>)

- [Yak Collective Website](<Yak Collective Website.md>)u

- Nathan - documentation sprint on Roam  [Yak Collective Website](<Yak Collective Website.md>)

