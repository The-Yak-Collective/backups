- **[About](<About.md>):** __draft process map for onboarding new yaks in the backend__
- **[Chief Page Wrangler](<Chief Page Wrangler.md>):** [Maier Fenster](<Maier Fenster.md>)
    - **[Additional Page Wranglers](<Additional Page Wranglers.md>):** [Fname Lname](<Fname Lname.md>) | [Fname Lname](<Fname Lname.md>) 
- **[Created](<Created.md>):** [October 4th, 2020](<October 4th, 2020.md>) by [Maier Fenster](<Maier Fenster.md>)
- **[Last Updated](<Last Updated.md>):** [October 6th, 2020](<October 6th, 2020.md>) by [Jenna Dixon](<Jenna Dixon.md>)
- **[Last Gardened](<Last Gardened.md>):** [October 21th, 2020](<October 21th, 2020.md>) by [Jenna Dixon](<Jenna Dixon.md>) 
- 
- it looks like we are talking about some combination of:

    - 1. yak starts with minimal friction to get into discord
    - 2. somewhere along the line we ask for some basic info

    - 3. somewhere along the line (can be at same time as [2](<2.md>)) we ask for more info, like yak-map data
    - 4. we expect yak to post introduction
    - 5. we want to show yak where to start
    - 6. probably want to dribble some "look here" call outs
    - 7. invite yak to orientation call
    - 8. filter out yak if they do not do one or more of the steps
    - 9. signup yak to newsletter
    - 10. try to recruit yak to one or more activities
    - 11. perhaps continue dripping reminders to yak after yak is not new, perhaps by email rather than or in addition to discord, perhaps based on amount of activity
        - [Maier Fenster](<Maier Fenster.md>) I am assuming we use discord unique 15-digit id for a unique identifier also in knack. the way it gets there is that when somebody joins discord, we scrape their unique id and populate knack. we then create a username/password on knack for that unique id and so, when we send discord user a link to his member-data on knack, it can be prepopulated with that unique id. 
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
- [Hugo Macedo](<Hugo Macedo.md>) reacting to Yak Map vs. Onboarding 
    - tell a story people can relate to
        - we know the [Map is not the territory](https://en.wikipedia.org/wiki/Map%E2%80%93territory_relation#%22A_map_is_not_the_territory%22), but it sure helps to navigate and explore the diversity of the Yak Collective. 
        - While assembling the YC Marketing cell, I would love to know who has the marketing experience to contribute
        - I wonder if there are people lost in the big forest of discord usernames that would like to help
        - I still don't know who's out there (or in there). I can imagine the diversity of expertise, experience, points of view, ...  Should be like Amazonia forest!! - but now I can only see a vast sea of green 
            - ![](https://s3-us-west-1.amazonaws.com/contentlab.studiod/getty/98f3a9c4d5774269baac0f5d9358b27c)

# Backlinks
## [IT Infrastructure](<IT Infrastructure.md>)
- [onboarding it - thoughts about onboarding infrastructure](<onboarding it - thoughts about onboarding infrastructure.md>)

