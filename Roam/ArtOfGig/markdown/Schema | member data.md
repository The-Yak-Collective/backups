About:: __Map of fields in Knack member database.__
Chief Page Wrangler:: [[Nathan Acks]]
    - Additional Page Wranglers:: [[Vinay Débrou]] | [[Maier Fenster]] | [[Jenna Dixon]] | [[Jordan Peacock]]
Last Updated:: [[December 11th, 2020]] by [[Nathan Acks]]
Last Gardened:: [[December 7th, 2020]] by [[Nathan Acks]]
Member data files are formally this is just a special kind of page. However, we treat the corresponding `.md` files more like a data structure that is then referenced in many other pages. Because of this, the most important part of these files is the front matter -- most member data files don't even have any content beyond that.
That doesn't mean that you __can't__ add page content -- if you do, it will be treated a bit like a "long bio" and displayed on your member page. But even here, the `bio_short` front matter attribute (see below) will be used in more places. If you do add a "long bio" as page content, stick to plain Markdown conforming to the [kramdown](https://kramdown.gettalong.org/) spec, and avoid using any [widgets]([[Website Widgets]]).
File names (less the `.md` extension) become the member ID, which is then used in various places across the Yak Collective website. File names (and hence member IDs) should follow a "last name + dash + first name" format, so a member named "Nathan Acks" should get a member file called `acks-nathan.md`. By convention, member avatars are named in the same fashion (`acks-nathan.jpg`, etc.), but this is simply to make file management easier.
Note that the functionality represented by the member data files will eventually be subsumed into [[Knack]].
# Website Member Data Template
    ```yaml
title: Member Template
date: 2020-12-09 00:00:00
indie_status: 10 years
tagline: "Just a template, showing people how it's done"
previously: A todo item in Roam
currently: A file in GitHub
avatar: /members/template-member.jpg
twitter: yak_collective
links:
  - title: Website
    url: https://www.yakcollective.org/
  - title: Newsletter
    url: https://yakcollective.substack.com/
bio_short: |
  I'm a template file that exists to demonstrate how to
  construct a member data file.
page_text_color: black
page_bg_color: 255,255,255
page_headers: |
  <!-- HTML -->```
    ## Widgets
    
    title: Member Template
    You should _not_ use any widgets on member data pages, as these are intended to be informational, rather than expressive.
    date: 2020-12-09 00:00:00
    --
# Formatting Notes
    - Be aware that if the __value__ of your front matter attribute contains a `:`, `&`, or `#`, then you __must__ either surround it in double quotes (`"`) __or__ use a `|` character, followed by a line break, and then with subsequent lines (until the next front matter attribute or the closing `---`) indented by __two__ spaces. So something like this
        - ```yaml
title: "My #1 Page Title: Now With Two Unsafe Characters!"```
    - ```yaml
    - title: "My #1 Page Title: Now With Two Unsafe Characters!"
    - ```yaml
    - ```
    - title: |
        - My #1 Page Title: Now With Two Unsafe Characters!
    - is equivalent to
        - ```yaml
title: |
  My #1 Page Title: Now With Two Unsafe Characters!```
    - ```
    - In general, you should use quotes for shorter, single line values. Use the "`|` + indent" syntax for longer values, or when you need to use multiple lines.
    - For more information about the ins-and-outs of page front matter, refer to [Jekyll's documentation](https://jekyllrb.com/docs/front-matter/) and the [YAML specification](https://yaml.org/spec/1.2/spec.html).
# Required Attributes
    - ## name (^^a.k.a. "UID" or "Member ID"^^)
        - __If__ we opt not to import files using the "last name + first name" convention described above, then we will need to include a `name` attribute following this convention so that members can be successfully looked up.
        - So, __either__ we import the data from Knack for "Nathan Acks" as a data file named `acks-nathan.md` __or__ we specify the attribute/value tuple `name: acks-nathan`. It's safe, but not necessary, to do both.
    - ## title (^^a.k.a. "Name"^^)
        - This is the member's full __name__ ("Venkatesh Rao", Maier Fenster", etc.). Just go with it.
    - ## date (^^a.k.a. "Join Date"^^)
        - This is the member's "made yak" date in ISO "YYYY-MM-DD". __Generally__ it will match the publication date of the first project that they are listed in the credits for.
        - Because of limitations with how Jekyll handles date conversions, it's necessary to specify this as a full timestamp, though by convention the time part is always "00:00:00" (no timezone). Thus December 9, 2020 would be written as `2020-12-09 00:00:00`.
        - Members without a `date`, or whose `date` is in the future, will not be displayed on the website.
# Optional Attributes
    - ## indie_status
        - A short phrase indicating how long a member has been "independent". Generally something like "1 year", "5+ years", "10 years", or "Pre-leap".
    - ## tagline
        - A __short__ tagline for the member. If present, this will be displayed directly under their name. Most yaks use the `tagline` to describe what they specialize in. A few get witty about it.
    - ## previously
        - A __short__ list of industries and/or companies and/or titles that the member has been associated with. Generally used to provide a sense of "credentials".
    - ## currently
        - A __short__ list of industries and/or companies and/or titles that the member is __currently__ associated with. This is most commonly used by pre-leap yaks to describe their current employment.
    - ## avatar
        - The path (generally relative to the final website) of the member's avatar. By convention avatar files have the same name as the member data file, and exist as a sibling of that file in the `members/` directory. So long as you stick to this convention, this means that the `avatar` front matter attribute of `dixon-jenna.md` will just be `/members/dixon-jenna.jpg` (or something similar).
    - ## twitter
        - The member's Twitter handle, less the conventional `@`. For example, Venkatesh Rao has the Twitter handle `@vgr`, which corresponds to the Twitter user timeline URL https://twitter.com/vgr, and thus would use `vgr` for this attribute.
    - ## links
        - This attribute specifies an array of links, each of which has a title (to be displayed) and a URL. If `links` is set, its contents are included as the final line of `widget-member-card`, with each link separated by a slash (`/`). For example, suppose that `links` was set as follows:
            - ```yaml
links:
  - title: Website
    url: https://www.yakcollective.org/
  - title: Newsletter
    url: https://yakcollective.substack.com/```
        - ```yaml
        - links:
            - title: Website
                - url: https://www.yakcollective.org/
            - title: Newsletter
                - url: https://yakcollective.substack.com/
        - ```
        - This would produce the following final line of `widget-member-card`:
            - > [Website](https://www.yakcollective.org/) / [Newsletter](https://yakcollective.substack.com/)
    - ## rss
        - Because we are moving away from [[IFTTT]], we will (eventually) need to store member RSS fields in Knack and import them into Jekyll as part of the build process. Really, this only makes sense if member data is imported as files, rather than directly into Jekyll.
        - This should be an `rss` attribute that has an array of RSS feeds as its value. For example:
            - ```yaml
rss:
  - https://www.yakcollective.org/writings/feed.xml
  - https://yakcollective.substack.com/feed```
        - Here's the conversation from the previous version of this page:
            - [[Nathan Acks]] we should also have an "rss feed" field in the member data (for feeds to be aggregated on the "writings" page) [[October 15th, 2020]]
            - [[Jenna Dixon]] nice catch √ just added the field, and added it to the profile edit page for yaks and admins [[October 15th, 2020]]
            - [[Nathan Acks]] In Knack, set to a URL field with no link text.
    - ## yak_orbit
        - **yak orbit**: (display only) will reflect how member-like the yak is, generally, but not exactly corresponding to yak..member scale [[Maier Fenster]]
        - [[Maier Fenster]]yak-map items seem missing, i would assume: 'yak map opt in', 'domain1','domain2','freetextdomain'
    - ## password
        - **password**: [[Maier Fenster]] (display to admin and user only) we need to store this somewhere, no?
        - [[Nathan Acks]] Obviously, we __shouldn't__ port this into Jekyll during build.
    - ## bio_short
        - A __short__ (1 - 5 sentence) bio. Right now this is only used on project sub-pages, where it is included along with an instance of `widget-member-card` at the bottom of pages for which the `author` attribute is set. Think of this like the short reporter bio sometimes included at the end of magazine articles.
        - You'll generally use the "`|` + indent" convention for this attribute (see above) since you'll generally be writing a short paragraph. Markdown (and even HTML) is fine to use here.
    - # bio_long (^^a.k.a. "content"^^)
        - A longer (1 - 3 paragraph, possibly with an image or list) can be included as part of the data file's `content`, which is everything after the closing `---` of the front matter. This will be rendered on individual member pages, but not elsewhere.
# Non-Standard But Allowed Attributes
    - The following front matter attributes are allowed in member data files, but should seldom, if ever, be included. There is probably no reason to implement them in [[Knack]].
    - ## page_text_color
        - One of `black` (for black text on a default white background) or `white` (for white text on a default black background). If unset, defaults to `black`.
    - ## page_bg_color
        - Use this to override the default page background color, as specified by `page_text_color` (above). This color _must_ be specified as an RGB tuple; for example, `255,255,0` is a bright yellow, and `128,128,128` is a medium gray.
    - ## page_headers
        - An attribute for advanced users; anything included here will be inserted verbatim at the end of the page's HTML `<head/>`. Use this to specify additional CSS or JavaScript. Because this attribute expects raw HTML, you definitely want to use the "`|` + indent" syntax.
        - Be aware that it's very easy to break the corresponding member page if you don't know what you're doing with this attribute!
The following _optional_ front matter attributes are supported for generic pages.
# Examples as of [[December 11th, 2020]]
    - https://github.com/The-Yak-Collective/yakcollective/blob/netlify-prod/members/peacock-jordan.md
    - ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2FinXUHxTeB6.png?alt=media&token=aa3784b3-ca84-4c44-8040-61374db640bb)
    - ```yaml
---
title: Jordan Peacock
date: 2020-04-30 00:00:00
indie_status: 3+ years
twitter: hewhocutsdown
tagline: CEO, Becoming Machinic; Founder, Sortilege
previously: U.S. Bank, HelpSystems
avatar: /members/peacock-jordan.jpg
links:
  - title: LinkedIn
    url: https://www.linkedin.com/in/hewhocutsdown/
---```
```yaml
# Current Members as of [[August 31st, 2020]]
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
indie_status: 10 years
tagline: Just a template, showing people how it's done
previously: A todo item in Roam
currently: A file in GitHub
avatar: /members/template-member.jpg
twitter: yak_collective
links:
    - title: Website
        - url: https://www.yakcollective.org/
    - title: Newsletter
        - url: https://yakcollective.substack.com/
bio_short: |
    - I'm a template file that exists to demonstrate how to construct a member data file.
page_text_color: black
page_bg_color: 255,255,255
page_headers: |
    - <!-- HTML -->
```
Each of these header attributes is described in more detail in the following sections.
