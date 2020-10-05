- prepared by [[Maier Fenster]] October 4,2020
- it looks like we are talking about some combination of:

    - 1. yak starts with minimal friction to get into discord {{comment-button}}

    - 2. somewhere along the line we ask for some basic info{{comment-button}}

    - 3. somewhere along the line (can be at same time as #2) we ask for more info, like yak-map data{{comment-button}}

    - 4. we expect yak to post introduction{{comment-button}}

    - 5. we want to show yak where to start{{comment-button}}

    - 6. probably want to dribble some "look here" call outs {{comment-button}}

    - 7. invite yak to orientation call {{comment-button}}

    - 8. filter out yak if they do not do one or more of the steps{{comment-button}}

    - 9. signup yak to newsletter{{comment-button}}

    - 10. try to recruit yak to one or more activities{{comment-button}}

    - 11. perhaps continue dripping reminders to yak after yak is not new, perhaps by email rather than or in addition to discord, perhaps based on amount of activity{{comment-button}}
- I am assuming we use discord unique 15-digit (?) id for a unique identifier also in knack. the way it gests there is that when somebody joins discord, we scrape their unique id and populate knack. we then create a username/password on knack for that unique id and so, when we send discord user a link to his member-data on knack, it can be prepopulated with that unique id. {{comment-button}}
- as to interface, we seem to be going towards:

    - a. use knack forms and knack itself to enter and store yak data{{comment-button}}

    - b. interface with yak via discord{{comment-button}}

    - c. onboarding via email or website{{comment-button}}

- please let me know if i am missing anything major.
anyway, i was thinking on how we tie it all together.

- if we take discord as our main interface, i would like to suggest we: 

    - i. use knack to store information about new yaks - at first only their discord name! {{comment-button}}

    - ii. use a discord robot to identify new yaks joining and send them to knack to enter new data, etc. {{comment-button}}

    - iii. define a state-transition table describing different stages in the onboarding of a yak, including  pruning the yak from both knack and discord. the table includes actions which move the yak between states. the robot use the table to contact new yaks and send them prompts, links, etc. as needed. {{comment-button}}

- please comment! {{comment-button}}
