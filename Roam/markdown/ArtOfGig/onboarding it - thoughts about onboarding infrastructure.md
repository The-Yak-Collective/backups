- About:: __Draft process map for onboarding new yaks in the backend.__
- Chief Page Wrangler:: [[Maier Fenster]]
    - Additional Page Wranglers:: `[[Fname Lname]]` | `[[Fname Lname]]`
- Created:: [[October 4th, 2020]] by [[Maier Fenster]]
- Last Updated:: [[December 19th, 2020]] by [[Nathan Acks]]
- Last Gardened:: [[December 7th, 2020]] by [[Nathan Acks]]
- 
- it looks like we are talking about some combination of:

    - 1. yak starts with minimal friction to get into discord
    - 2. somewhere along the line we ask for some basic info

    - 3. somewhere along the line (can be at same time as #2) we ask for more info, like yak-map data
    - 4. we expect yak to post introduction
    - 5. we want to show yak where to start
    - 6. probably want to dribble some "look here" call outs
    - 7. invite yak to orientation call
    - 8. filter out yak if they do not do one or more of the steps
    - 9. signup yak to newsletter
    - 10. try to recruit yak to one or more activities
    - 11. perhaps continue dripping reminders to yak after yak is not new, perhaps by email rather than or in addition to discord, perhaps based on amount of activity
        - [[Maier Fenster]] I am assuming we use discord unique 15-digit id for a unique identifier also in knack. the way it gets there is that when somebody joins discord, we scrape their unique id and populate knack. we then create a username/password on knack for that unique id and so, when we send discord user a link to his member-data on knack, it can be prepopulated with that unique id. 
- as to interface, we seem to be going towards:
    - a. use knack forms and knack itself to enter and store yak data
    - b. interface with yak via discord
    - c. onboarding via email or website
- please let me know if i am missing anything major.
anyway, i was thinking on how we tie it all together.
- if we take discord as our main interface, i would like to suggest we: 

    - i. use knack to store information about new yaks - at first only their discord name!
    - ii. use a discord robot to identify new yaks joining and send them to knack to enter new data, etc.
    - iii. define a state-transition table describing different stages in the onboarding of a yak, including  pruning the yak from both knack and discord. the table includes actions which move the yak between states. the robot use the table to contact new yaks and send them prompts, links, etc. as needed.
- please comment!
- 
- [[Hugo Macedo]] reacting to Yak Map vs. Onboarding 
    - tell a story people can relate to
        - we know the [Map is not the territory](https://en.wikipedia.org/wiki/Map%E2%80%93territory_relation#%22A_map_is_not_the_territory%22), but it sure helps to navigate and explore the diversity of the Yak Collective. 
        - While assembling the YC Marketing cell, I would love to know who has the marketing experience to contribute
        - I wonder if there are people lost in the big forest of discord usernames that would like to help
        - I still don't know who's out there (or in there). I can imagine the diversity of expertise, experience, points of view, ...  Should be like Amazonia forest!! - but now I can only see a vast sea of green 
            - ![](https://s3-us-west-1.amazonaws.com/contentlab.studiod/getty/98f3a9c4d5774269baac0f5d9358b27c)
- 
- [[Nathan Acks]] This seems more-or-less right to me, but I would tweak it a little...
    - I don't think I'd use email for the onboarding process at all.
        - We've centralized on Discord, and are building out a good infrastructure there.
        - Fragmenting our communications channels is also going to increase maintenance burden.
    - Ongoing comms is a different matter -- the newsletter seems the canonical place for that.
        - Long-term, maybe we can have some system where people can sign up to have a Discord bot DM them relevant bits from the newsletter?
    - Given the previous two points, I think the website remains more-or-less externally-facing.
        - To the extent that the website is part of the member experience, it's because it's where initial intake happens ([/join](https://www.yakcollective.org/join/)) and (perhaps) is a place where we expose the Knack member login (though at the moment I'm inclined to just link to the off-site management portal, like we do for the newsletter).
    - With respect to member IDs...
        - I agree that we should use Discord IDs within Knack.
        - However, on the website we need a system that both maps well to SEO (for the member URLs) and is easy for people to use (when writing project pages, etc.).
        - So I think that we should continue to map Discord IDs into the `lname-fname` format we currently use.
            - We probably need some sort of process to either automatically generate redirects when someone's name changes, or ping someone who has write access to the website repo on GitHub so that they can make the update themselves. Given the relatively small number of members, I think just pinging someone is enough for now.
    - I'd re-order your onboarding list slightly:
        1. "1. yak starts with minimal friction to get into discord"
        2. "4. we expect yak to post introduction"
        3. "2. somewhere along the line we ask for some basic info
"
        4. "5. we want to show yak where to start"
        5. "8. filter out yak if they do not do one or more of the steps"
        6. "7. invite yak to orientation call"
        7. "9. signup yak to newsletter"
        8. "3. somewhere along the line (can be at same time as #2) we ask for more info, like yak-map data"
        9. "6. probably want to dribble some "look here" call outs"
        10. "10. try to recruit yak to one or more activities"
        11. "11. perhaps continue dripping reminders to yak after yak is not new, perhaps by email rather than or in addition to discord, perhaps based on amount of activity"
            - I'm not 100% sure what the difference is between (10) and (11).
