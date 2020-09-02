owner:: [Nathan Acks](<Nathan Acks.md>)
last updated:: [September 1st, 2020](<September 1st, 2020.md>)
last updated by:: [Nathan Acks](<Nathan Acks.md>)
# Purpose
    - Provides the build environment for the [Yak Collective Website](<Yak Collective Website.md>)
        - See [Building the Website](<Building the Website.md>) for more details
    - Manages web presence "plumbing"
        - Site data pushed out to [Amazon CloudFront](https://aws.amazon.com/cloudfront/)
            - [Namecheap](<Namecheap.md>) DNS points to Netlify "load balancer"
        - "API" endpoints ([Netlify Functions](https://docs.netlify.com/functions/overview/)) pushed out to [Amazon Lambda](https://aws.amazon.com/lambda/)
# Access ^^(Shared Login!)^^
    - [Yak Collective Robot](<Yak Collective Robot.md>)
    - [Nathan Acks](<Nathan Acks.md>)
    - [Maier Fenster](<Maier Fenster.md>)
# Notes
    - Netlify has great [documentation](https://docs.netlify.com/).
    - When setting up a new Netlify site, be sure to set **Settings > Build & deploy > Build settings > Deploy log visibility** to **Logs are private**!
    - The [Yak Collective Website](<Yak Collective Website.md>) requires the following **Environment variables**.
        - `DISCORD_CHANNEL` - [Discord](<Discord.md>) channel ID for `yaktalk-content`.
        - `DISCORD_WEBHOOK_TOKEN` - [Discord](<Discord.md>) webhook token for `yaktalk-content`. ^^Must be kept secret!^^
        - `GH_BRANCH` - [GitHub](<GitHub.md>) branch that incoming writings/newsletters should be pushed to. Should match the branch Netlify's building (so, `netlify-prod` for production, etc.).
        - `GH_REPO` - The website repo; should always be `yakcollective`.
        - `GH_TOKEN` - GitHub user token for API access. Generated using the [Yak Collective Robot](<Yak Collective Robot.md>) [GitHub](<GitHub.md>) account in **Settings > Developer settings > Personal access tokens**. ^^Must be kept secret!^^
        - `GH_USER_OR_TEAM` - The website repo owner; should always be `The-Yak-Collective`.
        - `WEBHOOK_TOKEN` - Random string used to authenticate [IFTTT](<IFTTT.md>). ^^Must be kept secret!^^
    - The [Yak Collective Website](<Yak Collective Website.md>) also requires the following non-standard set up:
        - **Functions** must be turned on, and the **Functions directory** needs to be set to `functions`.
        - **Access control** must be turned on to enable authentication to [Netlify CMS](https://www.netlifycms.org/), and a [GitHub](<GitHub.md>) provider installed. Provider ID and secret values are generated using the [Yak Collective Robot](<Yak Collective Robot.md>) [GitHub](<GitHub.md>) account in **Settings > Developer settings > OAuth Apps**. ^^These values must be kept secret!^^

# Backlinks
## [Building the Website](<Building the Website.md>)
[Netlify](<Netlify.md>)

# Building on [Netlify](<Netlify.md>)

- Refer to the [Netlify](<Netlify.md>)

## [Contributing to the Website](<Contributing to the Website.md>)
- [Netlify](<Netlify.md>):

- [Netlify](<Netlify.md>):

- [Netlify](<Netlify.md>):

- [Netlify](<Netlify.md>):

## [IT Infrastructure](<IT Infrastructure.md>)
- [Netlify](<Netlify.md>)

- [Netlify](<Netlify.md>)

- [Netlify](<Netlify.md>)

## [Threat Model](<Threat Model.md>)
- [Netlify](<Netlify.md>)

## [Website Architecture](<Website Architecture.md>)
- In order to ensure that we get a new featured member every day, [IFTTT](<IFTTT.md>) hits a [build hook](https://docs.netlify.com/configure-builds/build-hooks/) in [Netlify](<Netlify.md>)

- Netlify CMS uses [GitHub](<GitHub.md>) as an OAuth provider; connection secrets can be found in [Netlify](<Netlify.md>)

- The `create-post` function stores configuration information, a [GitHub](<GitHub.md>) access token, and a token used to authenticate incoming requests, and Discord webhook channel and token information in [Netlify](<Netlify.md>)

## [Website Version History](<Website Version History.md>)
- Uses [Netlify](<Netlify.md>)

- The commit causes the site to be rebuilt by [Netlify](<Netlify.md>),

## [Yak Collective Robot](<Yak Collective Robot.md>)
- [Netlify](<Netlify.md>)

