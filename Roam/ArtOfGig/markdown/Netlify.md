About:: __Documentation for Netlify.__
Chief Page Wrangler:: [[Nathan Acks]]
    - Additional Page Wranglers:: [[Maier Fenster]]
Created:: [[August 30th, 2020]] by [[Nathan Acks]]
Last Updated:: [[December 7th, 2020]] by [[Nathan Acks]]
Last Gardened:: `/Today` by `[[Fname Lname]]`
# Purpose
    - Provides the build environment for the [[Yak Collective Website]]
        - See [[Building the Website]] for more details
        - {{[[embed]]: ((8OtMboOmK))}}
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