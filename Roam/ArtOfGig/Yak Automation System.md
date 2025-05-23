# What is the Yak Automation System (YAS)?
    - This page is intended to collect notes as we build out a generalized "Yak Automation System" (YAS?).
    - The point of this system is to come up with a English-like domain-specific language that we can use to describe proposals **and** to build out an automation system based on this language.
        - This language will not only be used to implement a direct automation system, but also a "Yak dreamspace" where half-considered "wouldn't it be cool if..." proposals can be written down and then synthesized by GPT-3 or some similar system into unique new proposals that could be presented to the collective.
    - When possible, the YAS should be able to automatically implement these proposals once they reach some consensus threshold.
        - The first YAS automation will __probably__ be [channel lifecycle automation]([[Discord Channel Lifecycle and Organization]]).
    - The first step in this process is to create [a list of past proposals/decisions](((b-1y0K2DN))) so we can figure out what what structure this language will need.
# 2021 Proposals/Decisions
    - ## Actions that can be fully automated
        - Create channel X with topic Y [OPTIONAL: in category Z]
            - "Projects" are essentially a special case of this these days...
        - Rename channel X to Y
        - Move channel X to category Z
            - This should happen automatically after some time for channels in the incubator
        - Archive channel X
            - Also should happen automatically after some period of dormancy + 1 warning
        - Resurrect channel X [OPTIONAL: in category Z]
        - Promote user X to role Y
            - Should happen automatically for "yaks" after a post in `#introductions` + a display name in the right format
                - Maybe provide feedback if the display name is incorrect?
        - Remove user X from role Y
        - Subscribe to new announcements feed X in `#grapevine`
            - We just kind of do this higgledy-piggledy right now, but maybe that's okay?
            - May sometimes require people (within Discord), but could be fully automatable for things like Twitter and RSS feeds.
    - ## Recurring or event-driven actions that require humans
        - ???
    - ## One-time or case-by-case actions that require humans
        - Approve change Y to Discord
            - I'm thinking of my ill-fated emoji-fication adventure as an example of this. Probably should just cause a yakshaver to be pinged when approved.
        - Approve new release of project X [OPTIONAL: with demo Y]
            - Historically this is all new major versions of the website, but seems like we should make it more general
            - There's been very little feedback about this in the past, so maybe this should be a negative check-off?
        - Add user X to the Gnosis safe
            - Maybe voting here should be restricted to existing yakbankers?
            - Probably should have yakbankers pinged when approved
        - Change Gnosis safe voting threshold to X/Y
            - Maybe voting here should be restricted to existing yakbankers?
        - Approve using new platform/tool/bot X
            - Might be something that's been getting developed in-house...
        - Approve shutting down platform/tool/bot X
            - I'm cheating here because this hasn't actually come up formally, but it seems like a good mirror for approving something
        - Approve document X
            - Surveys, etc.
            - Probably shouldn't apply to the output of projects / work groups / study groups (group members should approve these)
# Other Things We'd Want the Robot to Understand
    - ## Actions that can be fully automated
        - Event automation #[[Jenna Dixon]]
            - on-Discord event setup
            - on-Discord Announcement channel reminder sequence
            - yaktweet bot reminder sequence, optional
                - some groups might want to stay on server only eg OGS? v Yak Rover 
            - prolly other bits
            - sync Discord events with Google Calendar #[[Nathan Acks]]
            - handle recurring Discord events #[[Nathan Acks]]
        - Change voting threshold of decision type X to Y votes in favor
        - Create bounty X with payout Y and reviewer Z
            - Might need to involve people in some cases?
        - Create new channel category X
        - Destroy channel category X [OPTIONAL: reassign current channels to category Y]
    - ## Recurring or event-driven actions that require humans
        - ???
    - ## One-time or case-by-case actions that require humans
        - Approve budget X for project Y with responsible user Z
            - Maybe this isn't needed if we use bounties?
            - Can we create "sub-safes" in Gnosis that some group of people are given access to? That might be one way of doing this.
