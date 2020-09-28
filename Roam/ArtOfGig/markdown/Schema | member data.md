- status:: draft v1 [[August 24th, 2020]]
- last updated:: 
    - [[September 12th, 2020]] by [[Nathan Acks]]
    - [[September 27th, 2020]] by [[Jenna Dixon]]
- srn:: [[Nathan Acks]]
- gardeners:: [[Vinay Débrou]] | [[Maier Fenster]] | [[Nathan Acks]] | [[Jordan Peacock]]
- # Current Website Member Data Template
    - UID::
        - ^^Required^^ Internal member ID, used for webpage URLs and some website `<div/>` IDs.
            - [[Nathan Acks]] says: Using the `firstname-lastname` format makes sense at first and provides for pretty URLs, but it makes handling name-changes harder than it should be. Experience in the $dayjob says that we __will__ eventually run into problems using this as an ID. So long as YC is small, we can probably work around things with redirects... But if I was going to implement this today (or reimplement it in [[Knack]]), I'd use some kind of non-name UID (`a34bce`, etc.) instead.
        - Example: `nathan-acks`
            - {{[[TODO]]}} [[September 27th, 2020]] [[Jenna Dixon]] »»» ~~agree totally. Out of the box we can have~~ `Nathan-Acks` -- ~~ie I'll have to find a way to lower case the names. I also would suggest~~ `Acks-Nathan` ie `Lname-Fname` ~~to make sorting the list in the backend with a click possible.~~ hold this thought, I may be misunderstanding what you are suggesting above. ID should __not__ use actual names, will get Knack to autogenerate a non-name UID √
    - Name::
        - ^^Required^^ Full member name.
        - Example: `Nathan Acks`
    - Join Date::
        - ^^Required^^ Member "join date". Generally the date of the first project that member is associated with.
        - Example: `2020-05-03`
    - Indie Status::
        - __Optional__ Number of year the member has been indie.
        - Example: `1 year`
    - Tagline::
        - __Optional__ The member's chosen self-description.
        - Example: `Armchair Futurist / Defense Against the Dark Arts`
    - Current::
        - __Optional__ Member's current role, projects, etc.
        - Example: `Wannabe hacker`
    - Previously::
        - __Optional__ Previous roles that the member has had, organizations worked for, etc.
        - Example: `The Public Interest Network`
    - Twitter::
        - __Optional__ The member's Twitter handle, sans the https://twitter.com/ bit.
        - Example: `nathan_acks`
    - Avatar::
        - ^^Required^^ Path (relative to the web root) of the member's avatar.
        - Example: `/assets/dynamic/nathan-acks.jpg`
            - {{[[TODO]]}} #ping ^^ link or upload? jd ^^ [[September 27th, 2020]]
    - links::
        - __Optional__ A YAML array of link objects. Each object has a **url:** attribute (the, well, URL) and a **title:** attribute (the name that should be used for this URL).
        - Example: `[{title: Homepage, url: https://delphi-strategy.com/}, {title: Photography, url: https://digital-orrery.com/}, {title: Web Log, url: https://ecopunk.info/}]`
            - {{[[TODO]]}} #ping ^^ we wouldn't ask them to do this, would we? just ask for the links+lables? hmmm /jd^^ [[September 27th, 2020]]
    - content::
        - __Optional__ Free-form content using Markdown. Currently unused.
        - This isn't a "real" field -- rather members are currently represented using Markdown files in a `members` [Jekyll collection](https://jekyllrb.com/docs/collections/). All of the information __except__ this field is YAML frontmatter, while the **content:** is just the actual Markdown data.
- # Examples as of [[August 31st, 2020]]
    - ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2FHEvvWCbTUm.png?alt=media&token=10227c51-5eeb-483f-b81d-41eabc410560)
    - ```yaml
---
name: jordan-peacock
title: Jordan Peacock
date: 2020-04-30
indie_status: 3+ years
twitter: hewhocutsdown
tagline: CEO, Becoming Machinic; Founder, Sortilege
previously: U.S. Bank, HelpSystems
avatar: /assets/dynamic/jordan-peacock.jpg
links:
  - title: LinkedIn
    url: https://www.linkedin.com/in/hewhocutsdown/
---```
- # Current Members as of [[August 31st, 2020]]
    - Yak Collective members have contributed to one or more projects.
        - [   Alex Dobrenko Improviser / Writer / Filmmaker Indie status: 5+ years Previously: Distance / UCB / Funny or Die  alexdobrenko.com    @Dobrenkz  ](https://www.yakcollective.org/members/alex-dobrenko/)
        - [   Amanda Reeves Indie status: 1+ years Previously: Strategic coaching & health service redesign  Wabi Sabi Futures / Ahoyhoy    @WabiSabiFutures  ](https://www.yakcollective.org/members/amanda-reeves/)
        - [   Anne-Laure Le Cunff Indie status: 2+ years Previously: Google, Entrepreneur First  Founder, Ness Labs    @anthilemoon  ](https://www.yakcollective.org/members/anne-laure-le-cunff/)
        - [   Ben Mosior Indie status: 6+ years  Methodology whisperer / Hired Thought    @HiredThought  ](https://www.yakcollective.org/members/ben-mosior/)
        - [   Benjamin Taylor Indie status: 11 years Previously: PwC, Capita, Adviser to Mayor in a London Borough  RedQuadrant / Systems Practice    @antlerboy  ](https://www.yakcollective.org/members/benjamin-taylor/)
        - [   Darren Kong Indie status: 3+ years Previously: Other Internet  Varietal Digital    @varietalxyz  ](https://www.yakcollective.org/members/darren-kong/)
        - [   David McDougall Currently: Director of Product, Arabesque S-Ray Previously: Founder, Lusiad Innovation  Innovation at Scale    @dmcdougall  ](https://www.yakcollective.org/members/david-mcdougall/)
        - [   Harry Pottash Philosopher & Investor Indie status: 5+ years Previously: Engineer, Founder  ](https://www.yakcollective.org/members/harry-pottash/)
        - [   Jordan Allen Business Development & Revenue Generation Indie status: 1+ years   @quickdrawyall  ](https://www.yakcollective.org/members/jordan-allen/)
        - [   Jordan Peacock CEO, Becoming Machinic; Founder, Sortilege Indie status: 3+ years Previously: U.S. Bank, HelpSystems  LinkedIn    @hewhocutsdown  ](https://www.yakcollective.org/members/jordan-peacock/)
        - [   Martha Balaile Indie status: 1+ years  Illustrator    @MythologyStudio  ](https://www.yakcollective.org/members/martha-balaile/)
        - [   Nita Baum Indie status: 13 years  b*free / Solar Responders    @bfree_live  ](https://www.yakcollective.org/members/nita-baum/)
        - [   Pamela Hobart Philosopher, Mother of 3 Indie status: 3+ years Currently: The Life Coach for Smart People  pamelajhobart.com / Substack    @amelapay  ](https://www.yakcollective.org/members/pamela-hobart/)
        - [   Paul Millerd Indie status: 3+ years Previously: McKinsey, BCG, GE, Russell Reynolds  Boundless / Strategy U    @p_millerd  ](https://www.yakcollective.org/members/paul-millerd/)
        - [   Randy Lubin Indie status: 10+ years  Consulting Entrepreneur    @randylubin  ](https://www.yakcollective.org/members/randy-lubin/)
        - [   Rodrigo Pinto Indie status: 3+ years  Project management and software development    @Rodrigo_plp  ](https://www.yakcollective.org/members/rodrigo-pinto/)
        - [   Sachin Benny Indie status: 1+ years Previously: Led growth for an online DTC furniture brand  Marketing strategy & positioning    @sachinb91  ](https://www.yakcollective.org/members/sachin-benny/)
        - [   Thomas Verhagen Indie status: 1+ year  Analyze, structure & boost    @thomasverhagen  ](https://www.yakcollective.org/members/thomas-verhagen/)
        - [   Tom Critchlow Indie status: 5+ years Previously: Google  tomcritchlow.com / Little Futures    @tomcritchlow  ](https://www.yakcollective.org/members/tom-critchlow/)
        - [   Vaughn Tan Indie status: 5+ years Currently: University College London School of Management Previously: Google  bio / book / newsletter    @vaughn_tan  ](https://www.yakcollective.org/members/vaughn-tan/)
        - [   Venkatesh Rao Indie status: 9+ years Previously: Xerox  VenkateshRao.com    @vgr  ](https://www.yakcollective.org/members/venkatesh-rao/)
        - [   Vinay Débrou Indie status: 2+ years Previously: Data Analyst at a Fintech SaaS company  Consultant, Data & Brand Strategy / Substack    @vinaydebrou  ](https://www.yakcollective.org/members/vinay-debrou/)
        - [   Vlad Mehakovic Indie status: Aug 2019  mehakovic.com    @vladiim  ](https://www.yakcollective.org/members/vlad-mehakovic/)
        - [   Benton Heimsath  bentonheimsath.com    @bentonheimsath  ](https://www.yakcollective.org/members/benton-heimsath/)
        - [   Chris Clark Freelance Data Projects   @chrisclark1729  ](https://www.yakcollective.org/members/chris-clark/)
        - [   Drew Schorno Clown school graduate. Failed startup alumni. Currently: Caring for my grandmother at home.  drewschorno.com    @dschorno  ](https://www.yakcollective.org/members/drew-schorno/)
        - [   Drew Shiel Independent Domestic Historian Currently: Moderator at AskHistorians   @gothwalk  ](https://www.yakcollective.org/members/drew-shiel/)
        - [   Kannen Ramsamy Policy & Communications  LinkedIn   ](https://www.yakcollective.org/members/kannen-ramsamy/)
        - [   Michael Colin Supply Chain; Logistics; Freight Tech Currently: Founder & CEO, MVMNT   @divinix_chi  ](https://www.yakcollective.org/members/michael-colin/)
        - [   Ryan Hume Industrial Designer + Illustrator + Music Technologist Indie status: 1+ years  ryanhume.com   ](https://www.yakcollective.org/members/ryan-hume/)
        - [   Scott Garlinger Director of Business Development, Groupmuse; A.I. Operator, Dynasty   @scott_garlinger  ](https://www.yakcollective.org/members/scott-garlinger/)
        - [   Shreeda Segan Design Thinker & Writer  Substack / Portfolio    @freeshreeda  ](https://www.yakcollective.org/members/shreeda-segan/)
        - [   Thomas Hollands Writing and Strategy Currently: L.E.K. Consulting Previously: Barclays & UCL  blog / LinkedIn    @tdoggyholhol  ](https://www.yakcollective.org/members/thomas-hollands/)
        - [   Toby Shorin Previously: Other Internet  tobyshorin.com   ](https://www.yakcollective.org/members/toby-shorin/)
