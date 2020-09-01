owner:: [Nathan Acks](<Nathan Acks.md>)
last updated:: [August 31st, 2020](<August 31st, 2020.md>)
last updated by:: [Nathan Acks](<Nathan Acks.md>)
# Purpose
    - Simple automation.
        - Push member blog posts and newsletters into the [Yak Collective Website](<Yak Collective Website.md>) via [GitHub](<GitHub.md>), and then to the `yaktalk-content` channel in [Discord](<Discord.md>).
        - Push member blog posts, newsletters, and featured yaks to [Twitter](<Twitter.md>).
        - Rebuild the [Yak Collective Website](<Yak Collective Website.md>) once per day (to ensure that featured yaks are fresh).
# Access ^^(Shared Login!)^^
    - [Nathan Acks](<Nathan Acks.md>)
    - [Yak Collective Robot](<Yak Collective Robot.md>)

# Backlinks
## [Contributing to the Website](<Contributing to the Website.md>)
- Member writings and newsletters are pulled in using [IFTTT](<IFTTT.md>)

## [Data Sources](<Data Sources.md>)
- Member websites (via [IFTTT](<IFTTT.md>))

- [Substack](<Substack.md>) (via [IFTTT](<IFTTT.md>))

- "Member websites (via [IFTTT](<IFTTT.md>))

- "[Substack](<Substack.md>) (via [IFTTT](<IFTTT.md>))

- "Featured Yak" feed from the [Yak Collective Website](<Yak Collective Website.md>) (via [IFTTT](<IFTTT.md>))

- "Member websites (via [IFTTT](<IFTTT.md>))

## [IT Infrastructure](<IT Infrastructure.md>)
- [IFTTT](<IFTTT.md>)

## [Netlify](<Netlify.md>)
- `WEBHOOK_TOKEN` - Random string used to authenticate [IFTTT](<IFTTT.md>).

## [Threat Model](<Threat Model.md>)
- "[IFTTT](<IFTTT.md>)"

## [Website Architecture](<Website Architecture.md>)
- Feed containing a single item -- today's featured member. Picked up by [IFTTT](<IFTTT.md>)

- In order to ensure that we get a new featured member every day, [IFTTT](<IFTTT.md>)

- Posts in `writings/_posts` and `newsletter/_posts` are auto-pushed from member RSS feeds using [IFTTT](<IFTTT.md>)

- Netlify function that takes incoming data from [IFTTT](<IFTTT.md>)

## [Yak Collective Robot](<Yak Collective Robot.md>)
- [IFTTT](<IFTTT.md>)

