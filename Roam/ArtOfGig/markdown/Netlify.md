owner:: [[Nathan Acks]]
last updated:: [[September 1st, 2020]]
last updated by:: [[Nathan Acks]]
# Purpose
    - Provides the build environment for the [[Yak Collective Website]]
        - See [[Building the Website]] for more details
    - Manages web presence "plumbing"
        - Site data pushed out to [Amazon CloudFront](https://aws.amazon.com/cloudfront/)
            - [[Namecheap]] DNS points to Netlify "load balancer"
        - "API" endpoints ([Netlify Functions](https://docs.netlify.com/functions/overview/)) pushed out to [Amazon Lambda](https://aws.amazon.com/lambda/)
# Access ^^(Shared Login!)^^
    - [[Yak Collective Robot]]
        - Doesn't log in itself, but can be used for password resets.
    - [[Nathan Acks]]
    - [[Maier Fenster]]
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
