About:: __Documentation for Netlify.__
Chief Page Wrangler:: [[Nathan Acks]]
    - Additional Page Wranglers:: [[Maier Fenster]]
Created:: [[August 30th, 2020]] by [[Nathan Acks]]
Last Updated:: [[December 7th, 2020]] by [[Nathan Acks]]
Last Gardened:: `/Today` by `[[Fname Lname]]`
# Purpose
    - Provides the build environment for the [[Yak Collective Website]]
        - See [[Building the Website]] for more details
        - ## Current [[GitHub]] Branches
            - `netlify-prod` (point: [[Nathan Acks]])
                - Production branch.
                    - ^^Major changes should never be made directly to this branch.^^
                        - Instead, new branches should be created, updated, fully tested, and __only then__ merged in.
                    - Minor changes (fixing typos, updating links) can be made to this branch.
                - [[GitHub]]: https://github.com/The-Yak-Collective/yakcollective/tree/netlify-prod
                - [[Netlify]]: https://app.netlify.com/sites/practical-lichterman-20c7e0/overview
            - `astonishing-stories` (point: [[Nathan Acks]])
                - Template and content updates for the upcoming [[Astonishing Stories]] release.
                - [[GitHub]]: https://github.com/The-Yak-Collective/yakcollective/tree/astonishing-stories
                - [[Netlify]]: https://app.netlify.com/sites/optimistic-jennings-266cab/overview
            - `knack-migration` (point: [[Maier Fenster]])
                - Work on migrating member data to [[Knack]].
                - [[GitHub]]: https://github.com/The-Yak-Collective/yakcollective/tree/knack-migration
                - [[Netlify]]: https://app.netlify.com/sites/competent-shockley-33f53c/overview
            - `admin-improvements` (point: [[Maier Fenster]])
                - Branch containing general improvements being worked on by [[Maier Fenster]].
                - [[GitHub]]: https://github.com/The-Yak-Collective/yakcollective/tree/admin-improvements
                - [[Netlify]]: https://app.netlify.com/sites/inspiring-villani-8898ca/overview
            - `v3.0` (point: [[Nathan Acks]])
                - [Gatsby](https://www.gatsbyjs.org/) [migration](https://github.com/The-Yak-Collective/yakcollective/issues/12) branch.
                - [[GitHub]]: https://github.com/The-Yak-Collective/yakcollective/tree/v3.0
            - `admin-improvements-bak-202008118` (point: [[Maier Fenster]])
                - Backup up `admin-improvements`
                - [[GitHub]]: https://github.com/The-Yak-Collective/yakcollective/tree/admin-improvements-bak-20200818
            - `master` (point: [[Tom Critchlow]])
                - Original website by [[Tom Critchlow]], designed to be hosted by [GitHub Pages](https://pages.github.com/).
                - [[GitHub]]: https://github.com/The-Yak-Collective/yakcollective/tree/master
    - Manages web presence "plumbing"
        - Site data pushed out to [Amazon CloudFront](https://aws.amazon.com/cloudfront/)
            - [[Namecheap]] DNS points to Netlify "load balancer"
            - This means that the website is "serverless", in that it exists as a set of CDN files + some load balancer intelligence.
                - Of course, all of these are actually made up of servers, so it's really just [turtles all the way down](https://en.wikipedia.org/wiki/Turtles_all_the_way_down).
        - "API" endpoints ([Netlify Functions](https://docs.netlify.com/functions/overview/)) pushed out to [Amazon Lambda](https://aws.amazon.com/lambda/)
# Notes
    - Netlify has great [documentation](https://docs.netlify.com/).
    - When setting up a new Netlify site, be sure to set **Settings > Build & deploy > Build settings > Deploy log visibility** to **Logs are private**!
    - The [[Yak Collective Website]] requires the following **Environment variables**.
        - `DISCORD_CHANNEL` - [[Discord]] channel ID for `yaktalk-content`.
        - `DISCORD_WEBHOOK_TOKEN` - [[Discord]] webhook token for `yaktalk-content`. ^^Must be kept secret!^^
        - `GH_BRANCH` - [[GitHub]] branch that incoming writings/newsletters should be pushed to. Should match the branch Netlify's building (so, `netlify-prod` for production, etc.).
        - `GH_REPO` - The website repo; should always be `yakcollective`.
        - `GH_TOKEN` - GitHub user token for API access. Generated using the [[Yak Collective Robot]] [[GitHub]] account in **Settings > Developer settings > Personal access tokens**. ^^Must be kept secret!^^
        - `GH_USER_OR_TEAM` - The website repo owner; should always be `The-Yak-Collective`.
        - `WEBHOOK_TOKEN` - Random string used to authenticate [[IFTTT]]. ^^Must be kept secret!^^
    - The [[Yak Collective Website]] also requires the following non-standard set up:
        - **Functions** must be turned on, and the **Functions directory** needs to be set to `functions`.
        - **Access control** must be turned on to enable authentication to [Netlify CMS](https://www.netlifycms.org/), and a [[GitHub]] provider installed. Provider ID and secret values are generated using the [[Yak Collective Robot]] [[GitHub]] account in **Settings > Developer settings > OAuth Apps**. ^^These values must be kept secret!^^
