About:: __Website architecture documentation.__
Chief Page Wrangler:: [[Nathan Acks]]
    - Additional Page Wranglers:: `[[Fname Lname]]` | `[[Fname Lname]]`
last updated:: [[September 1st, 2020]] by [[Nathan Acks]]
Chief Page Wrangler:: [[Nathan Acks]]
Created:: [[August 31st, 2020]] by [[Nathan Acks]]
Last Updated:: [[December 7th, 2020]] by [[Nathan Acks]]
Last Gardened:: `/Today` by `[[Fname Lname]]`
# Pages
    - `about.md`
    - `index.md`
    - `members.html`
    - `projects.html`
    - `featured.xml`
        - Feed containing a single item -- today's featured member. Picked up by [[IFTTT]] and then pushed to [[Twitter]].
        - In order to ensure that we get a new featured member every day, [[IFTTT]] hits a [build hook](https://docs.netlify.com/configure-builds/build-hooks/) in [[Netlify]] once a day to force a rebuild, whether otherwise required or not.
    - `writings/feed.json`
        - [JSON feed](https://jsonfeed.org/) for member writings, structured after John Gruber's feed on [Daring Fireball](https://daringfireball.net/) (e.g., posts link back to the original article, and __not__ [yakcollective.org](https://www.yakcollective.org/)).
    - `writings/feed..xml`
        - RSS feed, equivalent to `writings/feed.json`.
    - `writings/index.html`
    - `tips.html`
        - "Consulting tips" easter egg.
    - `join.md`
        - Wraps the Google [registration form](https://docs.google.com/forms/d/e/1FAIpQLSfVUUvuIkzEGffk1CoEgzOkeO_yI05Nuw6zU3H1TNLmiQOf7g/viewform).
    - `welcome.md`
        - Welcome page; currently unused.
# Assets
    - `assets/dynamic/*`
        - Member and project related assets that can be interacted with via Netlify CMS.
    - `assets/static/*`
        - Site-wide assets (images, CSS, etc.). Not accessible from Netlify CMS.
    - `robots.txt`
# Site Data
    - `_data/slogans.yml`
        - Footer slogans.
    - `_data/tips.yml`
        - Consulting tips used in the `tips.html` easter egg page.
    - `_members`
        - Member data, one person per file. Referenced by projects and posts.
    - `_projects`
        - Yak Collective projects.
    - `_sequences`
        - Sequences used to group projects. Projects are counted in "days released since X".
# Member Feeds
    - Posts in `writings/_posts` and `newsletter/_posts` are auto-pushed from member RSS feeds using [[IFTTT]] to a [Netlify Functions](https://functions.netlify.com/) hook.
    - Current feeds:
        - {{[[embed]]: ((RLF445t5m))}}
        - {{[[embed]]: ((URd0ZDDRF))}}
    - To add or update a member feed, please [open a ticket](https://github.com/The-Yak-Collective/yakcollective/issues/new).
    - Relevant infrastructure bits:
        - `packages.json`
            - NPM packages used by JavaScript files in `functions`.
        - `functions/create-post.js`
            - Netlify function that takes incoming data from [[IFTTT]] and commits a new file to the appropriate directory in the `netlify-prod` branch.
                - Because commits to `netlify-prod` trigger rebuilds in [[Netlify]], this causes the website to be refreshed, and the new page to show up within a minute or two.
# Templates
    - `_layouts/default.html`
        - Base layout. This isn't actually used on any pages, but is inherited by other layouts.
    - `_layouts/member.html`
        - Used for member pages.
    - `_layouts/minimal.html`
        - The most minimal layout used on `yakcollective.org`. Directly used on the site home page (`index.md`), and inherited by most other layouts (with the exception of `project.html`).
    - `_layouts/null-layout.html`
        - Empty layout, used for non-HTML pages (CSS files, JavaScript, etc.) that need to be processed by Jekyll.
    - `_layouts/page.html`
        - Normal layout for stand-alone pages.
    - `_layouts/post.html`
        - Layout for posts. Every post is assumed to have an author defined in the `members` collection.
        - Note that while post pages are generated as part of the build process, they are __not__ linked anywhere on the site itself. (Links that would point to them instead point to the original post on the member's website.)
    - `_layouts/project.html`
        - Fancier formatting for pages in the `projects` collection.
# Shared Elements
    - `_includes/analytics.html`
        - Google Analytics code; included on all pages by proxy through `_layouts/default.html`.
    - `_includes/footer.html`
        - Page footer elements.
    - `_includes/head.html`
        - HTML `<head/>` elements (things like `<meta/>` tags, __not__ page headers).
    - `_includes/page.css`
        - CSS used for per-page customization (accent colors, hero images, etc.).
    - `_includes/member-card.html`
        - Reusable "member card" element, currently used in the members list, individual member pages, and in the `_layouts/post.html` template.
    - `_includes/member-list.html`
        - Takes an array of member IDs and creates an appropriate list of full member names, optionally linked.
    - `_includes/nav.html`
        - Page navigation elements.
    - `_includes/project-box.html`
        - Project card, used in the projects list and individual member pages.
    - `_includes/post-list.html`
        - Takes an array of Jekyll posts and generates a nice HTML list of those posts in reverse chronological order, grouped by year and month.
    - `_includes/sequence.html`
        - Takes the current date and a sequence ID and generates a "Day X sequence count phrase" string.
    - `_includes/toc.html`
        - Table of contents for `_layouts/page.html` elements. Does unreal things with Liquid. Probably black magic.
# Build Infrastructure
    - ## Repo
        - `admin/*`
            - [Netlify CMS](https://www.netlifycms.org/).
        - `_config.yml`
        - `Gemfile`
        - `Gemfile.lock`
        - `_redirects`
            - Various redirects, for when we've moved pages or accidentally pushed out a bad link.
        - `help.md`
            - Help file used as the "landing page" for our Netlify CMS instance.
            - Excluded from the final build.
        - `README.md`
        - `.gitignore`
        - `.github/workflows/*`
            - Additional build automation; currently unused and/or used in different branches.
    - ## Secrets
        - Netlify CMS uses [[GitHub]] as an OAuth provider; connection secrets can be found in [[Netlify]] under **Settings > Access control > OAuth**.
        - The `create-post` function stores configuration information, a [[GitHub]] access token, and a token used to authenticate incoming requests, and Discord webhook channel and token information in [[Netlify]] under **Settings > Build & deploy > Environment > Environment variables**.
