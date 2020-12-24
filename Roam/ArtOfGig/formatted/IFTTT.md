About:: __Documentation for IFTTT.__
Chief Page Wrangler:: [Nathan Acks](<Nathan Acks.md>)
    - **[Additional Page Wranglers](<Additional Page Wranglers.md>):** `[Fname Lname](<Fname Lname.md>)` | `[Fname Lname](<Fname Lname.md>)`
Created:: [August 31st, 2020](<August 31st, 2020.md>) by [Nathan Acks](<Nathan Acks.md>)
Last Updated:: [December 7th, 2020](<December 7th, 2020.md>) by [Nathan Acks](<Nathan Acks.md>)
Last Gardened:: `/Today` by `[Fname Lname](<Fname Lname.md>)`
# Purpose
    - Simple automation.
        - Monitor member website and [Yak Talk](<Yak Talk.md>) newsletter RSS feeds, pushing content into the [Yak Collective Website](<Yak Collective Website.md>) via [GitHub](<GitHub.md>). On successful commit, also push this content to the `yaktalk-content` channel in [Discord](<Discord.md>).
        - Monitor member website, [Yak Talk](<Yak Talk.md>) newsletter, and featured yak RSS feeds, pushing content updates to [Twitter](<Twitter.md>).
        - Rebuild the [Yak Collective Website](<Yak Collective Website.md>) once per day (to ensure that featured yaks are fresh).

# Backlinks
## [Contributing to the Website](<Contributing to the Website.md>)
- Member writings and newsletters are pulled in using [IFTTT](<IFTTT.md>)

## [IT Infrastructure](<IT Infrastructure.md>)
- [IFTTT](<IFTTT.md>)

- [IFTTT](<IFTTT.md>)

- [IFTTT](<IFTTT.md>)

## [Netlify](<Netlify.md>)
- `WEBHOOK_TOKEN` - Random string used to authenticate [IFTTT](<IFTTT.md>).

## [Threat Model](<Threat Model.md>)
- [IFTTT](<IFTTT.md>)

## [Website Architecture](<Website Architecture.md>)
- Feed containing a single item -- today's featured member. Picked up by [IFTTT](<IFTTT.md>)

- In order to ensure that we get a new featured member every day, [IFTTT](<IFTTT.md>)

- Posts in `writings/_posts` and `newsletter/_posts` are auto-pushed from member RSS feeds using [IFTTT](<IFTTT.md>)

- [Netlify function](https://docs.netlify.com/functions/overview/) that takes incoming data from [IFTTT](<IFTTT.md>)

## [Yak Collective Robot](<Yak Collective Robot.md>)
- [IFTTT](<IFTTT.md>)

