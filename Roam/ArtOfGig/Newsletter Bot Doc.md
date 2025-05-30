- About:: __documenting the YakC bot family used for pushing/pulling Discord and project exhausts into the automated portions of the YakTalk newsletter__
- Page Wranglers:: [[Phil Wolff]] | [[Jenna]] | [[Maier Fenster]] | [[Venkatesh Rao]]
- Page Type:: {{or:#WorkingDoc | #Project | #tk2}}
- Current State:: {{or: Draft | Proposed | Started | Stalled | Live | Finished | Abandoned }}
- ---
- Linked from:: [[Yak Talk Newsletter – To Do and Content Ideas]]
- Related:: [[Yak Talk]] | [[Yak Talk Content Calendar]] | [[Yak Talk Minutes – 07112020]]
  [[Yak Talk Exploratory Notes – 07112020]] | [[Yak Talk Futurecasting – Working Notes]]
- Previous Yaks:: 
  [[Alex Wagner]] | [[Grigori Milov]] | [[Matthew Sweet]] | [[Praful Mathur]] | [[Shreeda Segan]]
- ---
- Call Notes for [[May 1st, 2021]]: 
    - Architecture for automating newsletter 
        - Data extraction from activity to a data store
        - Scheduled queries that generate renderings
        - Portfolio of renderings: (blog page, email newsletter, tweets, insta) each with their own schedule, query scope, formatting, and timing
            - RSS to X 
    - Which bot handles what? 
    - "Key person" problem: assuring a new person can continue. Access to data, documents, code. Apprenticing. 
    - Tools for programmatic newsletters. 
        - [https://buttondown.email](https://buttondown.email) more APIish than substack and mailchimp, via [[Jenna]]
    - How do we add human announcements at the top of the feed, only as needed? 
        - News announcement channel. 
    - What language do we want in the header or footer for disclaimers or explanations? 
        - "This is activity from the Yak Collective's discord[link] conversations as of [date/time]. CC-BY Yak Collective [year]. Archive[link] of newsletters and blog posts."
    - Action items: 
        - manually curated first and second editions, then automate further. [[Phil Wolff]], [[Jenna]] to .md the first set. 
        - check for permissions to automation elements. [[Jenna]] ping for Prafur's access to ??
        - fundraising project seed: raise a budget to cover incidentals. 
        - https://github.com/The-Yak-Collective/yakcollective/blob/astonishing-stories/newsletter/_posts/2021-05-01_draft.md
        - check on css classes to define for common parts. 
- Call Notes for [[May 8th, 2021]]
    - [[Phil Wolff]]
        - doesn't want to know who posted
        - add links
            - if they bounce off, they know they'll need to join to see
        - ask bot team if we could have an $agendalist variant
            - can we DM @gigayak 
            - add a date/time stamp of original $agendaadd
            - include link back to original posts ([#](#))
            - omit the original yak poster
                - per Chatham House rules
            - change all prefixes to unique channel IDs
                - either long...
                    - infrastructure 99 | kjhlfkjhsalkfj
                    - gig 99 | hlaksjdhfl
                    - online governance studies 99 | lkjdahfglk
                    - yak rover 99 | lkjashdlfkjh
                - ...or short
                    - infra99 | kjhlfkjhsalkfj
                    - gig 99 | hlaksjdhfl
                    - ogs 99 | lkjdahfglk
                    - yr 99 | lkjashdlfkjh
- Call Notes for [[May 15th, 2021]]:
    - [[Phil Wolff]] [[Jenna]] attending
    - worked on Github set up + Github Desktop
    - worked on pushing 2021-05-15 draft out
    - rejiggerred Substack look and feel /j
    - special cases for the link scraping bot
        - delete ? + tracking info etc for all links except
            - YouTube eg
                - > https://www.youtube.com/watch?v=BfCPxoYCgo0
        - RP Chrome extension links are borking eg duplicating and trailing characters:
            - > https://tinyurl.com/roamh1/113?_YC_Marketing___distributed_CMO; https://tinyurl.com/roamh1/113?_YC_Marketing___distributed_CMO</a><br>this
        - Some post have more than one link: can the robot scan for that and parse them into separate cells
        - Substack links can have /? tokens that we should scrape off
        - line 153, 117: hmm some links to a slide deck are the editable version of the link. Just omit links like this altogether, to avoid rando defacements?
            - https://docs.google.com/presentation/d/16gg0pHg7UZbgqf3WSCJnGyFbeefNqOjQ6UlnXgfAQEE/edit
        - scrape LinkedIn tracking code eg
            - > https://www.linkedin.com/jobs/view/2469447231/?refId=3qusNbhkHXkX6i8nMJVbZg%3D%3D&trackingId=NHDdtu21xDDKDtsl6iwHAw%3D%3D
                - scrape this off: ?refId=3qusNbhkHXkX6i8nMJVbZg%3D%3D&trackingId=NHDdtu21xDDKDtsl6iwHAw%3D%3D
        - 
- ---
- About YakC boilerplate text (perhaps grabbed from a specific Roam page, so easy to update)
    - [[Nathan Acks]]: We don't have a bot that can do anything like this to my knowledge, __and__ Roam still lacks an API (at least one that will work for the YC graph). __But!__ We have [a stable daily backup](https://github.com/The-Yak-Collective/backups) now, so anything we write should be available as a (Roam-flavored) markdown file [here](https://github.com/The-Yak-Collective/backups/tree/master/Roam/markdown/ArtOfGig). Files in that directory get refreshed daily, so as long as we don't need to turn-around changes in this text on short notice, we can pull from here.
    - [[Phil Wolff]]: Could this work with a non-Roam source-of-truth for the boilerplate?
- Automated newsletter parts
    - Upcoming events [[Jenna]]
        - [[Nathan Acks]]: Two options here: One is to use the bot that produces the `#upcoming-events` dashboard ([project_ui](https://github.com/The-Yak-Collective/project_ui)), the other to use the bot that pushes updates to `#event-notifications` ([gmail_hook](https://github.com/The-Yak-Collective/gmail_hook)). My instinct is that the Project_UI bot will be easier to adapt... All we really need it to is push a new/updated markdown file detailing the events somewhere. Maybe we overload the [backups](https://github.com/The-Yak-Collective/backups) repo for this, or maybe we create a new "newsletter" repo. Probably want to update that file one per week at XX:XX UTC.
        - Scope: recurring events and nonrecurring events, soonest first
        - User actions: 
            - Read details
            - Share this event (email, linkedin, twitter, ??)
            - Jump into event's discord channel and/or voice channel
        - [[Maier Fenster]] needs more discipline on event description - title should be longer and more descriptive
    - The last week's links [[Phil Wolff]]
        - [[Nathan Acks]]: This is handled by the [yak_scraper](https://github.com/The-Yak-Collective/onboarding_robot) bot. When `$links` is called, it looks like this does a __real time__ search for links over all channels. So perhaps this functionality could/should also be called regularly (once per week at XX:XX UTC?) to generate a list that can then be checked into [the same repo/place as any upcoming events](((7jQNzv81y)))?
            - scrape off tracking IDs
        - [[Maier Fenster]] if we have better definition of what is an interesting link, can further automatically refine what bot collects
        - [[Phil Wolff]]: there's [a more complete description of this at the github issue](https://github.com/The-Yak-Collective/onboarding_robot/issues/31).
            - ## Intro
                - We use links in YakC conversations. A lot. It would be cool to automatically aggregate and share those link on a link blog. 
                - [Linklogs](https://en.wikipedia.org/wiki/Linklog) are pretty basic. A web page, often with a simplified blogging CMS behind it, formatted with simplified blog post entries.
                    - > [Linklogs have a history](https://en.wikipedia.org/wiki/Linklog)
                      [#ComplexityChannel](https://discord.com/channels/692111190851059762/704369362315772044/830621240725209108). [13 April 2021, 1302 Pacific](https://github.com/The-Yak-Collective/onboarding_robot/issues/31#permalinkhere).
                - Outcomes I hope for:
                    - more sharing of our social objects. If you talk about it in our discord, it might be amplified by the linklog.
                    - more discovery by yaks of interesting conversations. source links take you back to a channel. a privilege of yakdom.
                    - machines having a more useful sense of yakdom's interests.
                    - a sense of history.
                - Prior art:
                    - [A post on using jekyl for a linklog](http://octopress.org/docs/blogging/linklog/).
                    - [Daring Fireball linklog](https://daringfireball.net/linked/) (but it has added editorial that we won't offer.)
                - Measures of success:
                    - clean, simple styling, consistent with the rest of the site.
                    - works without intervention
                - Likely costs or risks:
                    - perhaps breaches unwritten "What happens here, stays here" norm.
                    - not sure how much maintenance such a bot would add to future techdebt.
                    - no obvious technical risks that I imagine.
            - ## Content
                - Masthead [[Jenna]] 
                    - Placeholder text:
                        - H1: Yaklog
                        - P: These links are from our Yak Collective discord where hundreds of independent consultants talk and collaborate.
                        - maybe a small version of the yak trail/droppings image
                - The links feed [[Phil Wolff]]
                    - Reverse chronological sort. New posts at the top.
                    - Clustered by Year, Month, Date.
                        - One page per month
                    - Continuation navigation at the bottom: newest newer older oldest.
                    - RSS feed
                    - Each post:
                        - Title (+ target link) styled bold
                            - This is the thing mentioned in the chat. If the link was from an href that was wrapped around text, the title should be that text, Else the text should be the title of the destination. In markdown the title would be the text in the square brackets unless that was not there, in which case pull it from the source.
                            - link should open in a new tab/window
                        - Source (+ Source link)
                            - Perhaps the channel name?
                            - Source link would take you to the discord message and discord would decide if you had permission to view.
                        - post date/time (+post permalink)
                            - Should be the datetime of the original message.
                            - The permalink is the #anchor link to this part of the linklog.
                - Monthly leaderboard list of top/trending few channels [[Jenna]]
                    - [[Nathan Acks]]: This is handled by the [yak_scraper](https://github.com/The-Yak-Collective/onboarding_robot) bot. Seems like we'd just be writing the results of `$signal` for a period of X days once per week at XX:XX UTC, presumably to [the same repo/place as any upcoming events](((7jQNzv81y)))?
                    - [[Maier Fenster]] done, i think
                - Channels showing signs of life (low-levels up from quiet) [[#]]
                    - [[Nathan Acks]]: This is handled by the [yak_scraper](https://github.com/The-Yak-Collective/onboarding_robot) bot. Seems like we'd just be writing the results of `$signal` for a period of X days once per week at XX:XX UTC, presumably to [the same repo/place as any upcoming events](((7jQNzv81y)))?
                    - [[Maier Fenster]] would need a short script to extract data from signal bot output
                - Excerpts from links in Yak Writings [[Phil Wolff]]
                    - [[Nathan Acks]]: This is handled by the [yak_scraper](https://github.com/The-Yak-Collective/onboarding_robot) bot. See [Maier's comment below](((Od2zD_4sp))) and [my related comment above](((qrAgz4bi-))).
                        - scrape off tracking IDs
                    - [[Maier Fenster]] seems easy to write bot that does this. this is a subset of "last weeks link" data 
                - Excerpts from Soapbox, will need a bit of human markup and queuing [[#]]
                    - [[Nathan Acks]]: No bot to do this, I think that [Maier's comment below](((5R-5Tqjlh))) is spot-on.
                    - [[Maier Fenster]] no idea how to do this. seems to me more efficient if done manually, at least until that time people use the channel a lot. how is it different form summarizing/extracting any text channel?
                - Agenda lists for channels that have them [[Jenna]]
                    - Infra [[Jenna]]
                    - Marketing [[#]]
                    - Rover [[#]]
                    - OGS [[Jenna]] or [[#]]
                    - [[Nathan Acks]]: This is handled by [gigayak](https://github.com/The-Yak-Collective/gigayak). Seems like we'd just be writing the results of `$agendalist` for each channel with an agenda once per week at XX:XX UTC, presumably to [the same repo/place as any upcoming events](((7jQNzv81y))). Probably needs more massaging than other data to get into a form suitable for cut-and-paste.
                        - **Side note:** "Gigayak" is the best bot name. Always makes me think of some kind of giant yak kaiju.
                    - [[Maier Fenster]] need to add that functionality, but not a biggie, as the data is all in database, so only need query
                - [[Maier Fenster]] what about gigs? and 
                    - 
                - internal help-wanted?
                - Rover Weekly Haiku [[Meredith Noelle]]
- 
- 
- 
- ---
- Last Updated:: [[April XXth, 2021]] by [[#]]
- Created:: [[April 28th, 2021]] by [[Jenna]]
- 
