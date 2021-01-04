About:: __Documentation for the Yak Collective's shared infrastructure.__
Chief Page Wrangler:: [Nathan Acks](<Nathan Acks.md>)
    - **[Additional Page Wranglers](<Additional Page Wranglers.md>):** `[Fname Lname](<Fname Lname.md>)` | `[Fname Lname](<Fname Lname.md>)`
Created:: [August 29th, 2020](<August 29th, 2020.md>) by [Nathan Acks](<Nathan Acks.md>)
Last Updated:: [January 3rd, 2021](<January 3rd, 2021.md>) by [Nathan Acks](<Nathan Acks.md>)
Last Gardened:: [October 23rd, 2020](<October 23rd, 2020.md>) by [Jenna Dixon](<Jenna Dixon.md>)
# Assets
    - ^^This asset list is a work in progress, and is mostly based off of what [Nathan Acks](<Nathan Acks.md>) knows + SVG diagram development by [Maier Fenster](<Maier Fenster.md>). If you work with or own a piece of infrastructure listed below, please visit the corresponding page and make sure all of the information's correct. And feel free to add services, etc. that we've missed!^^
    - [Roam diagrams](https://roamresearch.com/#/app/help/page/OB_uynVDM) are pretty limited; [Maier Fenster](<Maier Fenster.md>) has developed an SVG diagram that (currently) more completely captures the relationship between different components of the Yak Collective's IT infrastructure than is possible natively.
    - The symbols used in the infrastructure map have the following meanings:
        - {{[table](<table.md>)}}
            - **Symbol**
                - **Macro**
                    - **Meaning**
            - Double Green Circle
                - `STATIC_DATA`
                    - Website or service that functions as a (relatively) static data source/destination
            - Green Oval
                - `EXTERNAL_SERVICE`
                    - Externally-facing web service used by YC members/participants (and sometimes others)
            - Blue Oval
                - `INTERNAL_SERVICE`
                    - Internally-facing web service used by few YC members (sometimes not accessible at all)
            - Blue Rectangle
                - `APPLET`
                    - A function, service applet, or internal tool; contained by and run by some service
            - Red Line
                - `USER_DATA`
                    - Manual data flow (someone creates an account, reviews a list and takes action, etc.)
            - Black Line
                - `AUTO_DATA`
                    - Automatic data flows (service takes action based on a timer, webhook, etc.)
    - Important links:
        - [Infrastructure Map GitHub Repository](https://github.com/The-Yak-Collective/infrastructure-map)
        - [Edit the current map](https://github.com/The-Yak-Collective/infrastructure-map/edit/master/infrastructure.dot) (note that it can take a couple of minutes to update here)
        - [Full-sized version of the current map](https://raw.githubusercontent.com/The-Yak-Collective/infrastructure-map/master/infrastructure.svg) (assets link back to pages in this Roam graph)
    - ![Yak Collective IT Infrastructure diagram](https://raw.githubusercontent.com/The-Yak-Collective/infrastructure-map/master/infrastructure.svg)
        - [Yak Collective Robot](<Yak Collective Robot.md>) ("Yakbot")
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Nathan Acks](<Nathan Acks.md>)"
            - Google account; holds __some__ shared assets.
            - Google data/documents/services currently held by individual members should eventually be migrated into this account.
        - "[Google Calendar](https://calendar.google.com/calendar/embed?src=o995m43173bpslmhh49nmrp5i4%40group.calendar.google.com)"
            - **["Owner](<"Owner.md>):** [Venkatesh Rao](<Venkatesh Rao.md>)"
            - Part of the [Yak Collective Robot](<Yak Collective Robot.md>) account
        - "[Registration Form](https://docs.google.com/forms/d/e/1FAIpQLSfVUUvuIkzEGffk1CoEgzOkeO_yI05Nuw6zU3H1TNLmiQOf7g/viewform)"
            - **["Owner](<"Owner.md>):** [Venkatesh Rao](<Venkatesh Rao.md>)"
            - Part of the [Yak Collective Robot](<Yak Collective Robot.md>) account
        - [The New Old Home](https://docs.google.com/presentation/d/1Bgs4e6YIEydMot0VM4lf-onZM2z6Zei3n87f3JHCeSk/edit) deck
            - **[Owner](<Owner.md>):** [Drew Schorno](<Drew Schorno.md>)
        - [Don't Waste the Reboot](https://docs.google.com/presentation/d/1OfBuSq4SImE1Gq2EaAGCAlkwC8LZRCWx-7O_VOHJ5TI/edit) deck
            - **[Owner](<Owner.md>):** [Paul Millerd](<Paul Millerd.md>)
        - "[Google Analytics](https://analytics.google.com/analytics/web/#/report-home/a164565897w230197394p216651325)"
            - **["Owner](<"Owner.md>):** [Tom Critchlow](<Tom Critchlow.md>)"
            - Part of the [Yak Collective Robot](<Yak Collective Robot.md>) account
        - [Vultr](<Vultr.md>) "Calendar Yak (a.k.a. [gmail_hook](https://github.com/The-Yak-Collective/gmail_hook))" bot
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Maier Fenster](<Maier Fenster.md>)"
        - [Vultr](<Vultr.md>) "yak_scraper (a.k.a. [onboarding_robot](https://github.com/The-Yak-Collective/onboarding_robot))" bot
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Maier Fenster](<Maier Fenster.md>)"
        - [Vultr](<Vultr.md>) "^^**EXPERIMENTAL**^^ [gigayak](https://github.com/The-Yak-Collective/gigayak)" bot
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Maier Fenster](<Maier Fenster.md>)"
        - [Carl](<Carl.md>) "welcome_bot" bot
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Jordan Peacock](<Jordan Peacock.md>)"
        - [Carl](<Carl.md>) "yakyak" bot
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Jordan Peacock](<Jordan Peacock.md>)"
        - [Discord](<Discord.md>)
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Jordan Peacock](<Jordan Peacock.md>)"
        - [Namecheap](<Namecheap.md>)
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Venkatesh Rao](<Venkatesh Rao.md>)"
        - [Knack](<Knack.md>)
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Jenna Dixon](<Jenna Dixon.md>)"
        - [Roam](<Roam.md>)
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Venkatesh Rao](<Venkatesh Rao.md>)"
        - [Netlify](<Netlify.md>) Continuous Integration ([Jekyll](https://jekyllrb.com/))
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Nathan Acks](<Nathan Acks.md>)"
            - See [Building the Website](<Building the Website.md>) for more details
        - [Netlify](<Netlify.md>) CDN
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Nathan Acks](<Nathan Acks.md>)"
        - [Netlify](<Netlify.md>) [Functions](https://docs.netlify.com/functions/overview/) ([create-post](https://github.com/The-Yak-Collective/yakcollective/blob/netlify-prod/functions/create-post.js))
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Nathan Acks](<Nathan Acks.md>)"
        - [Yak Collective Website](<Yak Collective Website.md>)
            - **[Chief Page Wrangler](<Chief Page Wrangler.md>):** [Nathan Acks](<Nathan Acks.md>)
        - [Yak Collective Website](<Yak Collective Website.md>) ["Featured Yak" RSS Feed](https://github.com/The-Yak-Collective/yakcollective/blob/netlify-prod/featured.xml)
            - **[Chief Page Wrangler](<Chief Page Wrangler.md>):** [Nathan Acks](<Nathan Acks.md>)
        - [GitHub](<GitHub.md>)
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Nathan Acks](<Nathan Acks.md>)"
        - [IFTTT](<IFTTT.md>) [Netlify Build Hook](https://docs.netlify.com/configure-builds/build-hooks/) Applet (Timer)
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Nathan Acks](<Nathan Acks.md>)"
        - [IFTTT](<IFTTT.md>) Twitter Applets
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Nathan Acks](<Nathan Acks.md>)"
        - [IFTTT](<IFTTT.md>) [create-post](https://github.com/The-Yak-Collective/yakcollective/blob/netlify-prod/functions/create-post.js) Applets
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Nathan Acks](<Nathan Acks.md>)"
        - [Zapier](<Zapier.md>)
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Venkatesh Rao](<Venkatesh Rao.md>)"
        - [Glitch](<Glitch.md>)
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Nathan Acks](<Nathan Acks.md>)"
        - Member RSS Feeds
            - [Anne-Laure Le Cunff](<Anne-Laure Le Cunff.md>): https://nesslabs.com/author/annelaure/feed
            - [Ben Mosior](<Ben Mosior.md>): https://hiredthought.com/feed/
            - [Benjamin P Taylor - London](<Benjamin P Taylor - London.md>): https://medium.com/feed/@antlerboy
            - [Benton Heimsath](<Benton Heimsath.md>): https://www.bentonheimsath.com/writing?format=rss
            - [David McDougall](<David McDougall.md>): https://innovationatscale.substack.com/feed/
            - [Pamela Hobart](<Pamela Hobart.md>): https://www.pamelajhobart.com/blog?format=rss
            - [Paul Millerd](<Paul Millerd.md>): https://think-boundless.com/feed/
            - [Randy Lubin](<Randy Lubin.md>): https://blog.randylubin.com/feed.xml
            - [Shreeda Segan](<Shreeda Segan.md>): https://shreeda.substack.com/feed/
            - [Toby Shorin](<Toby Shorin.md>): https://subpixel.space/feed.xml
            - [Tom Critchlow](<Tom Critchlow.md>): https://tomcritchlow.com/feed
            - [Vaughn Tan](<Vaughn Tan.md>): https://uncertaintymindset.substack.com/feed/
            - [Venkatesh Rao](<Venkatesh Rao.md>): https://breakingsmart.substack.com/feed/
            - [Vinay Débrou](<Vinay Débrou.md>): https://vinaydebrou.com/feed.xml
        - [Substack](<Substack.md>)
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Matthew Sweet](<Matthew Sweet.md>)"
            - RSS feed: https://yakcollective.substack.com/feed/
        - [Twitter](<Twitter.md>)
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Jordan Peacock](<Jordan Peacock.md>)"
        - [Facebook](<Facebook.md>)
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Venkatesh Rao](<Venkatesh Rao.md>)"
        - [LinkedIn](<LinkedIn.md>)
            - **["Chief Page Wrangler](<"Chief Page Wrangler.md>):** [Venkatesh Rao](<Venkatesh Rao.md>)"
# Projects
    - [Yak Collective Website](<Yak Collective Website.md>)
    - [bots-a-lot internal project page](<bots-a-lot internal project page.md>)
# Documents
    - [Discord Channel Lifecycle and Organization](<Discord Channel Lifecycle and Organization.md>)
    - [Schema | member data](<Schema | member data.md>) (draft)
    - [Code Style Guide](<Code Style Guide.md>)
    - [IT Infrastructure and Project Security Basics](<IT Infrastructure and Project Security Basics.md>)
    - [Threat Model](<Threat Model.md>)
# Discussions & Decisions
    - [onboarding it - thoughts about onboarding infrastructure](<onboarding it - thoughts about onboarding infrastructure.md>)
# Proposals
    - [Yak Collective Member Types](<Yak Collective Member Types.md>)

# Backlinks
## [December 7th, 2020](<December 7th, 2020.md>)
- [Nathan Acks](<Nathan Acks.md>) updated the [IT Infrastructure](<IT Infrastructure.md>)

## [GitHub](<GitHub.md>)
- [infrastructure-map](https://github.com/The-Yak-Collective/infrastructure-map): Holds the SVG file and source DOT file for the [IT Infrastructure](<IT Infrastructure.md>)

## [Infrastructure](<Infrastructure.md>)
- [IT Infrastructure](<IT Infrastructure.md>)

- #[IT Infrastructure](<IT Infrastructure.md>)

## [Nathan Acks](<Nathan Acks.md>)
- [IT Infrastructure](<IT Infrastructure.md>)

## [November 24th, 2020](<November 24th, 2020.md>)
- [Nathan Acks](<Nathan Acks.md>) updated the [IT Infrastructure](<IT Infrastructure.md>)

## [November 9th, 2020](<November 9th, 2020.md>)
- [Nathan Acks](<Nathan Acks.md>) added a "Proposals" section to the [IT Infrastructure](<IT Infrastructure.md>)

## [October 23rd, 2020](<October 23rd, 2020.md>)
- Updated the [Facebook](<Facebook.md>) and [LinkedIn](<LinkedIn.md>) [IT Infrastructure](<IT Infrastructure.md>)

[IT Infrastructure](<IT Infrastructure.md>)

## [October 4th, 2020](<October 4th, 2020.md>)
- [Nathan Acks](<Nathan Acks.md>) added [Discussions & Decisions](https://roamresearch.com/#/app/ArtOfGig/page/GfLUKnfjQ) sections to the [IT Infrastructure](<IT Infrastructure.md>)

## [September 19th, 2020](<September 19th, 2020.md>)
- [Nathan Acks](<Nathan Acks.md>) updated the [IT Infrastructure](<IT Infrastructure.md>)

## [September 24th, 2020](<September 24th, 2020.md>)
- [Nathan Acks](<Nathan Acks.md>) clarified the role of [Zapier](<Zapier.md>) in the Yak Collective [IT Infrastructure](<IT Infrastructure.md>)

## [September 25th, 2020](<September 25th, 2020.md>)
- [Nathan Acks](<Nathan Acks.md>) updated the [IT Infrastructure](<IT Infrastructure.md>)

## [Threat Model](<Threat Model.md>)
- All assets should be centrally tracked in the [IT Infrastructure](<IT Infrastructure.md>)

- All users with access to a service should be tracked in a page for that service linked off of the [IT Infrastructure](<IT Infrastructure.md>)

