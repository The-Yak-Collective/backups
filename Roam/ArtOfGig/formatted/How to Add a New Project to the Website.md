Project slide files are both a data source for `widget-project-slide-deck` and a way to generate a stand-alone HTML slide deck. Check out [Future Frontiers](https://www.yakcollective.org/projects/future-frontiers/) and the [associated slide files](https://github.com/The-Yak-Collective/yakcollective/tree/netlify-prod/projects/future-frontiers) to get a sense of how this works. Project slides are plain Markdown files; in Jekyll, these files should conform to the [kramdown](https://kramdown.gettalong.org/) spec.
This is the template file for a project main page. Every project requires a _minimum_ of this page to "exist". All project main pages live in the `/projects/` directly; _no_ other pages should live in this directory.
A "tagline" for the project, which is used as a subtitle by `widget-project-hero` and `widget-project-box`. Should basically be a single __short__ sentence. By convention, periods (`.`) are not included in this line, but question marks (`?`) and exclamation marks (`!`) are.
A summary/introduction to the project. This will be used as the main text of `widget-project-hero`, and (_if_ the `description` attribute is _not_ set) the first 20 words will be used on Twitter cards, Facebook shares, etc.
About:: __How to add a new project to the Yak Collective website.__
### title
    This is the slide's title. It's okay to give multiple slides the same title; in fact, if you're using `widget-project-slide-deck` with `collapse_slides=true`, then this will produce a nice effect where only the first slide in a sequence will have its title displayed.
### title
    Use this to set the project's title.
This is the slide's title. It's okay to give multiple slides the same title; in fact, if you're using `widget-project-slide-deck` with `collapse_slides=true`, then this will produce a nice effect where only the first slide in a sequence will have its title displayed.
Use this to set the project's title.
^^This attribute __must__ be present, and it __must__ have the value **page-project-slide**.^^
This is the project's publication date in ISO "YYYY-MM-DD". Because of limitations with how Jekyll handles date conversions, it's necessary to specify this as a full timestamp, though by convention the time part is always "00:00:00" (no timezone). Thus December 9, 2020 would be written as `2020-12-09 00:00:00`.
The "sequence" in which a given project exists. Sequences are defined in `_data/sequences.yml`; currently the only valid value for this attribute is `covid-19`.
A free-form string indicating what "kind" of project this is. While `type` __could__ be anything, we generally want to be conservative about adding new options.
Report
Note that slide content should be __short__ -- think a paragraph or two, or a bullet list. These are slides, so less is more. You __cannot__ use any widgets as part of your slide content.
For more information about the ins-and-outs of page front matter, refer to [Jekyll's documentation](https://jekyllrb.com/docs/front-matter/) and the [YAML specification](https://yaml.org/spec/1.2/spec.html). You are strongly encouraged to take a look at other project main pages (and the contents of their resource directories) in order to get a sense for how this looks in practice.
You'll generally use the "`|` + indent" convention for this attribute (see above) since you'll generally be writing a couple of paragraphs of text. Markdown (and even HTML) is fine to use here.
Chief Page Wrangler:: [Nathan Acks](<Nathan Acks.md>)
    - **[Additional Page Wranglers](<Additional Page Wranglers.md>):** `[Fname Lname](<Fname Lname.md>)` | `[Fname Lname](<Fname Lname.md>)`
### layout
    ^^This attribute __must__ be present, and it __must__ have the value **page-project-slide**.^^
### date
    This is the project's publication date in ISO "YYYY-MM-DD". Because of limitations with how Jekyll handles date conversions, it's necessary to specify this as a full timestamp, though by convention the time part is always "00:00:00" (no timezone). Thus December 9, 2020 would be written as `2020-12-09 00:00:00`.
    Be aware that Netlify's build environment uses UTC for its timezone, so "publish on December 9th" may not __actually__ mean that the page goes live on __your__ December 9th.
Be aware that Netlify's build environment uses UTC for its timezone, so "publish on December 9th" may not __actually__ mean that the page goes live on __your__ December 9th.
Currently recognized project types:
    Report
    Visualization
    Zine
Visualization
Also, be aware that slides are ordered by `widget-project-slide-deck` by URL (basically, file name), and this ordering impacts both the formatting of the table of contents and the effect of `collapse_slides=true` -- only slides that are "adjacent" will have their sections and titles "rolled up". If you're using either of these features in `widget-project-slide-deck`, you'll want to make sure you adopt a slide naming convention that ensures that slides of a given section, and slides with the same title/author combination, always appear in sequence when sorted by name in your file manager.
Projects will automatically go alive more-or-less on the `date` listed in the main page front matter. Unpublished, upcoming projects are listed on the [Now](/now/) page, while published projects are automatically moved to the [Projects](/projects/) page. If you are building the site locally, you can simulate this using `jekyll serve --future` (or an equivalent command).
Created:: [December 11th, 2020](<December 11th, 2020.md>) by [Nathan Acks](<Nathan Acks.md>)
### sequence
    The "sequence" in which a given project exists. Sequences are defined in `_data/sequences.yml`; currently the only valid value for this attribute is `covid-19`.
Zine
Last Updated:: [December 11th, 2020](<December 11th, 2020.md>) by [Nathan Acks](<Nathan Acks.md>)
### type
    A free-form string indicating what "kind" of project this is. While `type` __could__ be anything, we generally want to be conservative about adding new options.
    Currently recognized project types:
        Report
        Visualization
        Zine
Last Gardened:: `/Today` by `[Fname Lname](<Fname Lname.md>)`
### tagline
    A "tagline" for the project, which is used as a subtitle by `widget-project-hero` and `widget-project-box`. Should basically be a single __short__ sentence. By convention, periods (`.`) are not included in this line, but question marks (`?`) and exclamation marks (`!`) are.
# Project Structure
    - Projects on the Yak Collective website are made up of a minimum of two files:
        - A __project (main) page__ (often just called a "project page") in the `projects` directory.
        - A "hero image" representing the project located in a resource directory with the same name as the project, also in the `projects` directory.
    - The name of the project page / resource directory will become the URL of the project on the website, and should be a "sluggified" version of the project name. For example, "Don't Waste the Reboot" is represented by the project page `projects/dont-waste-the-reboot.md`, and uses the hero image `projects/dont-waste-the-reboot/dont-waste-the-reboot.jpg`.
    - The resource directory is your place to put files related to the project. These can be project sub-pages or slides (see below), images used by any of your project pages, files intended to be downloaded, or even custom CSS and JavaScript files if your project is particularly complex/flashy.
### summary
    A summary/introduction to the project. This will be used as the main text of `widget-project-hero`, and (_if_ the `description` attribute is _not_ set) the first 20 words will be used on Twitter cards, Facebook shares, etc.
    You'll generally use the "`|` + indent" convention for this attribute (see above) since you'll generally be writing a couple of paragraphs of text. Markdown (and even HTML) is fine to use here.
# Project (Main) Page
    This is the template file for a project main page. Every project requires a _minimum_ of this page to "exist". All project main pages live in the `/projects/` directly; _no_ other pages should live in this directory.
    - Project pages are generally simple Markdown (`.md`) files (though more technical projects can use HTML); in Jekyll, these files should conform to the [kramdown](https://kramdown.gettalong.org/) spec. Generally, the first line of a project main page (immediately below the closing `---` of the front matter) will be `{% include widget-project-header.html %}`, which will generate the project header. Projects have some combination of the following [front matter](https://jekyllrb.com/docs/front-matter/):
        - ```yaml
title: Project Main Page Template
tagline: Learn how to create project main pages!
date: 2020-12-09 00:00:00
sequence: covid-19
type: Report
hero_image: /projects/astonishing-stories/astonishing-stories.jpg
summary: |
  This file will teach you the basics for creating project main pages.
description: A shorter page description.
credits:
  lead_editors:
    - acks-nathan
  collaborators:
    - fenster-maier
page_text_color: black
page_bg_color: 255,255,255
page_headers: |
  <!-- HTML -->```
    For more information about the ins-and-outs of page front matter, refer to [Jekyll's documentation](https://jekyllrb.com/docs/front-matter/) and the [YAML specification](https://yaml.org/spec/1.2/spec.html). You are strongly encouraged to take a look at other project main pages (and the contents of their resource directories) in order to get a sense for how this looks in practice.
    Projects will automatically go alive more-or-less on the `date` listed in the main page front matter. Unpublished, upcoming projects are listed on the [Now](/now/) page, while published projects are automatically moved to the [Projects](/projects/) page. If you are building the site locally, you can simulate this using `jekyll serve --future` (or an equivalent command).
    - You can use any [website widget]([Website Widgets](<Website Widgets.md>)) on a project (main) page.
    - ## Required Front Matter
        ### title
            Use this to set the project's title.
        ### date
            This is the project's publication date in ISO "YYYY-MM-DD". Because of limitations with how Jekyll handles date conversions, it's necessary to specify this as a full timestamp, though by convention the time part is always "00:00:00" (no timezone). Thus December 9, 2020 would be written as `2020-12-09 00:00:00`.
            Be aware that Netlify's build environment uses UTC for its timezone, so "publish on December 9th" may not __actually__ mean that the page goes live on __your__ December 9th.
        ### sequence
            The "sequence" in which a given project exists. Sequences are defined in `_data/sequences.yml`; currently the only valid value for this attribute is `covid-19`.
        ### type
            A free-form string indicating what "kind" of project this is. While `type` __could__ be anything, we generally want to be conservative about adding new options.
            Currently recognized project types:
                Report
                Visualization
                Zine
        - ### hero_image
            - An image used to represent the project. It is used in `widget-project-box` as is, and by default is also displayed as a background image at 50% opacity by `widget-project-hero` (this opacity level is one of the most common things to tweak using the `page_headers` front matter attribute). Also used for the project main page's Twitter card.
            - Should generally be  a landscape image 2048px - 4096px on its largest side, at once both interesting enough to represent the project and non-descript enough to use as a background for text without being distracting, and ideally will be tilable.
        ### tagline
            A "tagline" for the project, which is used as a subtitle by `widget-project-hero` and `widget-project-box`. Should basically be a single __short__ sentence. By convention, periods (`.`) are not included in this line, but question marks (`?`) and exclamation marks (`!`) are.
        ### summary
            A summary/introduction to the project. This will be used as the main text of `widget-project-hero`, and (_if_ the `description` attribute is _not_ set) the first 20 words will be used on Twitter cards, Facebook shares, etc.
            You'll generally use the "`|` + indent" convention for this attribute (see above) since you'll generally be writing a couple of paragraphs of text. Markdown (and even HTML) is fine to use here.
    - ## Optional Front Matter
        - ### description
            - A short one-or-two sentence description that will be displayed on Twitter cards, Facebook shares, etc. If you don't include this attribute, then the first 20 words of the summary will be used instead. While you __can__ include Markdown or HTML formatting here, it will be stripped during the build process, so best to just use plain text.
        - ### credits
            - The `credits` attribute is a flexible object of credits/collaborators for the project. It can have any number of sub-attributes, each of which represents a different type of credit, and under which is an array of member IDs (that will be linked to member pages) or plain names (that will be displayed as-is). sub-attributes should be lower-case, and underscores (`_`) will be replaced with spaces. By convention, collaborators in each section should be ordered alphabetically by family name, and then given name.
            - How this works is easiest to see with an example. Suppose we have the following `credits` object in our project main page front matter:
                - ```yaml
credits:
  lead_editors:
    - acks-nathan
    - rao-venkatesh
  collaborators:
    - "Jamie Chen"
    - dixon-jenna
    - fenster-maier```
            - This will produce two credit sections:
                1. A section titled **Lead editors** listing "Nathan Acks" and "Venkatesh Rao", both of whose names are linked back to their respective member pages.
                2. A section titled **Collaborators** listing "Jamie Chen", "Jenna Dixon", and "Maier Fenster". Jenna and Maier's names will both be linked back to their respective member pages, but Jamie's name will appear as a simple, unlinked credit.
            - credits:
                - lead_editors:
                    - acks-nathan
                    - rao-venkatesh
                - collaborators:
                    - "Jamie Chen"
                    - dixon-jenna
                    - fenster-maier
            - While you don't technically __need__ the `credits` front matter attribute, you almost certainly want to include one, and it should include a `lead_editors` sub-attribute and __at least__ one other section (most projects just use `collaborators`, but see [Astonishing Stories](https://www.yakcollective.org/projects/astonishing-stories/) for an example of a more creative use of this attribute).
        - ### page_text_color
            - One of `black` (for black text on a default white background) or `white` (for white text on a default black background). If unset, defaults to `black`.
        - ### page_bg_color
            - Use this to override the default page background color, as specified by `page_text_color` (above). This color __must__ be specified as an RGB tuple; for example, `255,255,0` is a bright yellow, and `128,128,128` is a medium gray.
        - ### page_headers
            - An attribute for advanced users; anything included here will be inserted verbatim at the end of the page's HTML `<head/>`. Use this to specify additional CSS or JavaScript. Because this attribute expects raw HTML, you definitely want to use the "`|` + indent" syntax.
            - Note that the Yak Collective website is based on the [Tachyons design framework](https://tachyons.io/docs/), so you can use any of the classes that Tachyons defines __without__ specifying `page_headers`.
            - Be aware that it's very easy to break you page if you don't know what you're doing with this attribute. If anything in the above two paragraphs doesn't make sense to you, you should probably __not__ use this attribute!
# Additional Project Pages
    - f
# Project Sub-Pages
    - Project sub-pages live in the project resource folder and should __not__ have a `layout` attribute specified in their front matter. These pages __cannot__ use the `widget-iframe` widget, but are otherwise just as flexible as project main pages. They always include an index of (non-hidden) project pages as their last element; if a page `author` is specified, then they will include a member card and (if available) the `bio_short` information for that member just above the index.
    - Project sub-pages live
    - are _almost__ identical to generic pages (see `template-page.md` in the project root), but have the following restrictions:
    - ## Required Front Matter
        - f
    - Otherwise, these are just plain Markdown files; in Jekyll, these files should conform to the [kramdown](https://kramdown.gettalong.org/) spec. See any of the __Astonishing Stories__ sub-pages, (such as ["Wholeness in a Timeless Activity"](/projects/astonishing-stories/wholeness-in-a-timeless-activity/)) for example of project sub-pages.
    - They _cannot_ use the `widget-iframe` widget.
    - Non-hidden project sub-pages can be listed on the project main page using `widget-project-page-list`.
    - Project sub-pages don't have any required front matter, but there are a number of optional fields that you may want to specify.
        - ```yaml
title: The Page Title
date: 2020-12-09 00:00:00
hero_image: /projects/astonishing-stories/agglomerizing-the-aesthetic.jpg
hero_attach_vertical: center
hero_attach_horizontal: center
description: A description of the page.
author: acks-nathan
hidden: false
page_text_color: black
page_bg_color: 255,255,255
page_headers: |
  <!-- HTML -->```
    - Each of these header attributes is described in more detail in the following sections.
    - ## Optional Front Matter
        - ### title
            - Use this to set a page title that's __different__ than your initial header line (`# My Page Title`). ^^If you do not include an initial header, then this attribute is __required__.^^
        - ```yaml
        - ## Required Front Matter
        - ### date
            - This is the project sub-page's publication date in ISO "YYYY-MM-DD". Because of limitations with how Jekyll handles date conversions, it's necessary to specify this as a full timestamp, though by convention the time part is always "00:00:00" (no timezone). Thus December 9, 2020 would be written as `2020-12-09 00:00:00`.
            - Be aware that Netlify's build environment uses UTC for its timezone, so "publish on December 9th" may not __actually__ mean that the page goes live on __your__ December 9th.
            - Note that pages are sorted by `widget-project-page-list` by date, and then by URL (file name). In order to make sure that your project sub-pages are displayed in a consistent manner, it is advisable to either include the `date` on all pages (even if it's not always the same) or on __no__ pages (best if the date is not relevant for your project sub-page ordering).
        - ### hero_image
            - An image used to represent the project sub-page. It is used for the project page cards generated by `widget-project-page-list`; see [Astonishing Stories](https://www.yakcollective.org/projects/astonishing-stories/) for an example. Also used as the page's Twitter card.
            - Should generally be a square or __portrait__ image 512px - 2048px on its longest side.
        - No front matter (the bit between the two `---` lines at the top of the file, which _must_ be included, even if there's nothing between them) is required for generic pages _if_ the first line of the actual page contents is a top-level header (`# Project Sub-Page Template` in the present case). If you _don't_ want to start your page with a header line for whatever reason, _or_ if you want your page title (as displayed by the browser) to be different than this initial header line, then you should include a `title` attribute. For example,
        - ```
        - ### hero_attach_vertical
            - One of `top`, `bottom`, or `center`. This is used by `widget-project-page-list` to help position the `hero_image` in the sub-page's card. Pick the value that best matches where the "focus" of the image is. If omitted, defaults to `center`.
        - ```markdown
        - ### hero_attach_horizontal
            - One of `left`, `right`, or `center`. This is used by `widget-project-page-list` to help position the `hero_image` in the sub-page's card. Pick the value that best matches where the "focus" of the image is. If omitted, defaults to `center`.
        - --
        - ### description
            - A short one-or-two sentence description that will be displayed on Twitter cards, Facebook shares, etc. If you don't include this attribute, then the first 20 words of the page content will be used instead. While you __can__ include Markdown or HTML formatting here, it will be stripped during the build process, so best to just use plain text.
        - title: "Something Something"
        - ### author
            - The page author. Ideally, this should be the filename (less the extension) of someone in the `members` directory: So, to specify Venkatesh Rao as a page author, you'd set this to `rao-venkatesh` (since the corresponding member file is `members/rao-venkatesh.md`). When use in this form, information about the specified Yak Collective member will be pulled into Twitter (and other services that support Twitter cards) when the page URL is shared.
            - Alternately, you can just specify someone's name ("Venkatesh Rao"). This is still useful to do to attribute the page (`author` information gets used in a lot of places), but won't pull in __any__ additional information (so the page will be attributed simple to the Yak Collective on Twitter, __et al.__).
        - --
        - ### hidden
            - Whether or not the sub-page should be hidden in the `widget-project-page-list` display. If you just want every one of your sub-pages to be displayed, then you can safely omit this attribute. But if you want `widget-project-page-list` to instead display a list of "entry points" into your sub-pages, with the remaining sub-pages linked from those entry points but not otherwise displayed, then you should set this attribute to `false` for entry point sub-pages and `true` for all other sub-pages.
        - # Something Else
        - ### page_text_color
            - One of `black` (for black text on a default white background) or `white` (for white text on a default black background). If unset, defaults to `black`.
        - Page content, and so on.
        - ### page_bg_color
            - Use this to override the default page background color, as specified by `page_text_color` (above). This color _must_ be specified as an RGB tuple; for example, `255,255,0` is a bright yellow, and `128,128,128` is a medium gray.
        - ```
        - ### page_headers
            - An attribute for advanced users; anything included here will be inserted verbatim at the end of the page's HTML `<head/>`. Use this to specify additional CSS or JavaScript. Because this attribute expects raw HTML, you definitely want to use the "`|` + indent" syntax.
            - Note that the Yak Collective website is based on the [Tachyons design framework](https://tachyons.io/docs/), so you can use any of the classes that Tachyons defines __without__ specifying `page_headers`.
            - Be aware that it's very easy to break you page if you don't know what you're doing with this attribute. If anything in the above two paragraphs doesn't make sense to you, you should probably __not__ use this attribute!
        - will generate a page whose top-level header is _Something Else_, but whose browser tab uses the title _Something Something_.
        - Be aware that if the _value_ of your front matter attribute contains a `:`, `&`, or `#`, then you _must_ either surround it in double quotes (`"`) _or_ use a `|` character, followed by a line break, and then with subsequent lines (until the next front matter attribute or the closing `---`) indented by _two_ spaces. So something like this
        - ```yaml
        - title: "My [1](<1.md>) Page Title: Now With Two Unsafe Characters!"
        - ```
        - is equivalent to
        - ```yaml
        - title: |
            - My [1](<1.md>) Page Title: Now With Two Unsafe Characters!
        - ```
        - In general, you should use quotes for shorter, single line values. Use the "`|` + indent" syntax for longer values, or when you need to use multiple lines.
        - For more information about the ins-and-outs of page front matter, refer to [Jekyll's documentation](https://jekyllrb.com/docs/front-matter/) and the [YAML specification](https://yaml.org/spec/1.2/spec.html).
        - _Optional_ front matter attributes are listed in the next section.
        - ## Optional Front Matter
        - The following _optional_ front matter attributes are supported for generic pages.
        - title: The page title
        - date: 2020-12-09 00:00:00
        - hero_image: /projects/astonishing-stories/agglomerizing-the-aesthetic.jpg
        - hero_attach_vertical: center
        - hero_attach_horizontal: center
        - description: A description of the page.
        - author: acks-nathan
        - hidden: false
        - page_text_color: black
        - page_bg_color: 255,255,255
        - page_headers: |
            - <!-- HTML -->
# Project Slides
    Project slide files are both a data source for `widget-project-slide-deck` and a way to generate a stand-alone HTML slide deck. Check out [Future Frontiers](https://www.yakcollective.org/projects/future-frontiers/) and the [associated slide files](https://github.com/The-Yak-Collective/yakcollective/tree/netlify-prod/projects/future-frontiers) to get a sense of how this works. Project slides are plain Markdown files; in Jekyll, these files should conform to the [kramdown](https://kramdown.gettalong.org/) spec.
    Note that slide content should be __short__ -- think a paragraph or two, or a bullet list. These are slides, so less is more. You __cannot__ use any widgets as part of your slide content.
    Also, be aware that slides are ordered by `widget-project-slide-deck` by URL (basically, file name), and this ordering impacts both the formatting of the table of contents and the effect of `collapse_slides=true` -- only slides that are "adjacent" will have their sections and titles "rolled up". If you're using either of these features in `widget-project-slide-deck`, you'll want to make sure you adopt a slide naming convention that ensures that slides of a given section, and slides with the same title/author combination, always appear in sequence when sorted by name in your file manager.
    - Project slides have some combination of the following front matter attributes.
        - ```yaml
title: Project Slide Template
layout: page-project-slide
date: 2020-12-01 00:00:00
section: A Section
tags:
  - philosophy
hero_image: /projects/future-frontiers/01-philosophy-01-on-horizons-01.jpg
hero_position: left
hero_border: true
hero_description: On horizons
hero_caption:  |
  Carse photo from [Simon &amp; Schuster](https://www.simonandschuster.biz/authors/James-Carse/313085); collage by [Jenna Dixon](/members/dixon-jenna/)
description: Frontiers are essential food for the psyche, for a species with the temporal imagination to see past the limits of individual mortality.
author: rao-venkatesh
page_text_color: black
page_bg_color: "252,251,248"
page_headers: |
  <!-- HTML -->```
    - Required and optional attributes are described in more detail in the following sections.
    - ## Required Front Matter
        ### title
            This is the slide's title. It's okay to give multiple slides the same title; in fact, if you're using `widget-project-slide-deck` with `collapse_slides=true`, then this will produce a nice effect where only the first slide in a sequence will have its title displayed.
        ### layout
            ^^This attribute __must__ be present, and it __must__ have the value **page-project-slide**.^^
    - ## Optional Front Matter
        - ### date
            - This is the projectslide's publication date in ISO "YYYY-MM-DD". Because of limitations with how Jekyll handles date conversions, it's necessary to specify this as a full timestamp, though by convention the time part is always "00:00:00" (no timezone). Thus December 9, 2020 would be written as `2020-12-09 00:00:00`.
            - Be aware that Netlify's build environment uses UTC for its timezone, so "publish on December 9th" may not __actually__ mean that the page goes live on __your__ December 9th.
            - For consistency, it is recommended that your project either include the `date` on __all__ of your slides, or __none__ of your slides. However, unlike project sub-pages (`templates/template-project/template-page.md`), this is a purely cosmetic suggestion.
        - ### section
            - The "section" a slide should be grouped under in the table of contents generated by `widget-project-slide-deck`. Does nothing if the `table_of_contents` parameter for that widget isn't `true`.
            - Be aware that, just as slides with the same title are only collapsed together in the table of contents if they are adjacent, so to will slides with the same section only be grouped together if they are adjacent. For example, let's say you have three slides:
                - `slide-1.md` with `section: Important`
                - `slide-2.md` with `section: Unimportant`
                - `slide-3.md` with `section: Important`
            - This will produce the following table of contents:
                - Important
                    - Slide 1 Title
                - Unimportant
                    - Slide 2 Title
                - Important
                    - Slide 3 Title
            - On the other hand, considering the following slides, which are "grouped" by section:
                - `slide-1.md` with `section: Important`
                - `slide-2.md` with `section: Important`
                - `slide-3.md` with `section: Unimportant`
            - This will produce the following table of contents:
                - Important
                    - Slide 1 Title
                    - Slide 2 Title
                - Unimportant
                    - Slide 3 Title
            - This second case is almost certainly what you want, and illustrates the importance of thinking through the structure of your slide deck and using a file naming system for individual slides that reflects this structure.
        - ### tags
            - A list of "tags" to attach to the slide. At the moment, these tags don't link anywhere, and simply serve as a sign post for readers. They are displayed in a row beneath the slide title and author, with each tag prefixed by a hash character (`#`). For example, consider the following slide front matter:
                - ```yaml
title: The Music of the Freeways
author: acks-nathan
tags:
  - cars
  - philosophy
  - xylophones```
            - ```yaml
            - title: The Music of the Freeways
            - author: acks-nathan
            - tags:
                - cars
                - philosophy
                - xylophones
            - ```
            - This will produce a title block that looks like the following:
                - > **The Music of the Freeways**
[Nathan Acks](https://www.yakcollective.org/members/acks-nathan/)
[cars](<cars.md>) [philosophy](<philosophy.md>) [xylophones](<xylophones.md>)
        - ### hero_image
            - The slide's main image; by default, it will take up either the left or right half of the slide, depending on the value of `hero_position`. Also used for the slide's Twitter card.
            - Should generally be a square or landscape image 1024px - 3072px on its longest slide.
            - If omitted a full-width slide will be produced, which is useful in some cases.
        - ### hero_position
            - Whether the `hero_image` should be on the slide's `left` or `right`. Defaults to `left` if you leave it out.
        - ### hero_border
            - Should the `hero_image` have a thin (1px) border drawn around it? You almost always want to set this to `true` unless `hero_image` uses a transparent background or already incorporates a border of some sort.
        - ### hero_description
            - The "alt text" to use for the `hero_image`. For accessibility reasons you should generally write a short (1 or 2 sentence) description of the image. Don't include image credits here -- use `hero_caption` for that.
        - ### hero_caption
            - The text to display immediately __below__ the slide hero image. This can be a larger block of text providing additional context for the image, but is generally used to provide image credit. Markdown-formatted text is accepted by this attribute, so if you have a link to the image source or artist, you're encouraged to include it here.
        - ### description
            - A short one-or-two sentence description that will be displayed on Twitter cards, Facebook shares, etc. If you don't include this attribute, then the first 20 words of the page content will be used instead. While you __can__ include Markdown or HTML formatting here, it will be stripped during the build process, so best to just use plain text.
        - ### author
            - The page author. Ideally, this should be the filename (less the extension) of someone in the `members` directory: So, to specify Venkatesh Rao as a page author, you'd set this to `rao-venkatesh` (since the corresponding member file is `members/rao-venkatesh.md`). When use in this form, information about the specified Yak Collective member will be pulled into Twitter (and other services that support Twitter cards) when the page URL is shared.
            - Alternately, you can just specify someone's name ("Venkatesh Rao"). This is still useful to do to attribute the page (`author` information gets used in a lot of places), but won't pull in __any__ additional information (so the page will be attributed simple to the Yak Collective on Twitter, __et al.__).
        - ### page_text_color
            - One of `black` (for black text on a default white background) or `white` (for white text on a default black background). If unset, defaults to `black`.
            - Note that `widget-project-slide-deck` will also pick up on this attribute; see [Future Frontiers](https://www.yakcollective.org/projects/future-frontiers/) to get a sense of what you can do with this and `page_bg_color`
        - ### page_bg_color
            - Use this to override the default page background color, as specified by `page_text_color` (above). This color __must__ be specified as an RGB tuple; for example, `255,255,0` is a bright yellow, and `128,128,128` is a medium gray.
            - Note that `widget-project-slide-deck` will also pick up on this attribute; see [Future Frontiers](https://www.yakcollective.org/projects/future-frontiers/) to get a sense of what you can do with this and `page_text_color`.
        - ### page_headers
            - An attribute for advanced users; anything included here will be inserted verbatim at the end of the page's HTML `<head/>`. Use this to specify additional CSS or JavaScript. Because this attribute expects raw HTML, you definitely want to use the "`|` + indent" syntax.
            - Note that the Yak Collective website is based on the [Tachyons design framework](https://tachyons.io/docs/), so you can use any of the classes that Tachyons defines __without__ specifying `page_headers`.
            - Be aware that it's very easy to break you page if you don't know what you're doing with this attribute. If anything in the above two paragraphs doesn't make sense to you, you should probably __not__ use this attribute!
--
---
title: Project Main Page Template
--
date: 2020-12-09 00:00:00
title: Project Slide Template
sequence: covid-19
layout: page-project-slide
type: Report
--
tagline: Learn how to create project main pages!
hero_image: /projects/astonishing-stories/astonishing-stories.jpg
summary: |
    - This file will teach you the basics for creating project main pages.
--
description: A shorter page description.
credits:
    - lead_editors:
        - acks-nathan
    - collaborators:
        - fenster-maier
## Required Front Matter
page_text_color: black
The front matter (the bit between the two `---` lines at the top of the file) listed at the top of this file represents the _minimal_ front matter for a project main page.
page_bg_color: 255,255,255
Be aware that if the _value_ of your front matter attribute contains a `:`, `&`, or `#`, then you _must_ either surround it in double quotes (`"`) _or_ use a `|` character, followed by a line break, and then with subsequent lines (until the next front matter attribute or the closing `---`) indented by _two_ spaces. So something like this
page_headers: |
    - <!-- HTML -->
```yaml
The front matter (the bit between the two `---` lines at the top of the file) listed at the top of this file represents the _minimal_ front matter for a project main page.
title: "My [1](<1.md>) Page Title: Now With Two Unsafe Characters!"
Be aware that if the _value_ of your front matter attribute contains a `:`, `&`, or `#`, then you _must_ either surround it in double quotes (`"`) _or_ use a `|` character, followed by a line break, and then with subsequent lines (until the next front matter attribute or the closing `---`) indented by _two_ spaces. So something like this
```
### `hero_image`
```yaml
is equivalent to
An image used to represent the project. It is used in `widget-project-box` as is, and by default is also displayed as a background image at 50% opacity by `widget-project-hero` (this opacity level is one of the most common things to tweak using the `page_headers` front matter attribute). Also used for the project main page's Twitter card.
title: "My [1](<1.md>) Page Title: Now With Two Unsafe Characters!"
```yaml
Should generally be  a landscape image 2048px - 4096px on its largest side, at once both interesting enough to represent the project and non-descript enough to use as a background for text without being distracting, and ideally will be tilable.
```
title: |
    - My [1](<1.md>) Page Title: Now With Two Unsafe Characters!
### `description`
is equivalent to
```
A short one-or-two sentence description that will be displayed on Twitter cards, Facebook shares, etc. If you don't include this attribute, then the first 20 words of the summary will be used instead. While you _can_ include Markdown or HTML formatting here, it will be stripped during the build process, so best to just use plain text.
```yaml
In general, you should use quotes for shorter, single line values. Use the "`|` + indent" syntax for longer values, or when you need to use multiple lines.
### `credits`
title: |
    - My [1](<1.md>) Page Title: Now With Two Unsafe Characters!
For more information about the ins-and-outs of page front matter, refer to [Jekyll's documentation](https://jekyllrb.com/docs/front-matter/) and the [YAML specification](https://yaml.org/spec/1.2/spec.html).
The `credits` attribute is a flexible object of credits/collaborators for the project. It can have any number of sub-attributes, each of which represents a different type of credit, and under which is an array of member IDs (that will be linked to member pages) or plain names (that will be displayed as-is). sub-attributes should be lower-case, and underscores (`_`) will be replaced with spaces. By convention, collaborators in each section should be ordered alphabetically by family name, and then given name.
```
_Required_ front matter attributes are described in the following sections.
How this works is easiest to see with an example. Suppose we have the following `credits` object in our project main page front matter:
In general, you should use quotes for shorter, single line values. Use the "`|` + indent" syntax for longer values, or when you need to use multiple lines.
```yaml

credits:
    - lead_editors:
        - acks-nathan
        - rao-venkatesh
    - collaborators:
        - "Jamie Chen"
        - dixon-jenna
        - fenster-maier
```
_Required_ front matter attributes are described in the following sections.
This will produce two credit sections:
1. A section titled **Lead editors** listing "Nathan Acks" and "Venkatesh Rao", both of whose names are linked back to their respective member pages.
## Optional Front Matter
2. A section titled **Collaborators** listing "Jamie Chen", "Jenna Dixon", and "Maier Fenster". Jenna and Maier's names will both be linked back to their respective member pages, but Jamie's name will appear as a simple, unlinked credit.
The following _optional_ front matter attributes are supported for generic pages.
While you don't technically _need_ the `credits` front matter attribute, you almost certainly want to include one, and it should include a `lead_editors` sub-attribute and _at least_ one other section (most projects just use `collaborators`, but see [_Astonishing Stories_](/projects/astonishing-stories/) for an example of a more creative use of this attribute).
```yaml
### `page_text_color`
date: 2020-12-01 00:00:00
One of `black` (for black text on a default white background) or `white` (for white text on a default black background). If unset, defaults to `black`.
section: A Section
### `page_bg_color`
tags:
    - philosophy
Use this to override the default page background color, as specified by `page_text_color` (above). This color _must_ be specified as an RGB tuple; for example, `255,255,0` is a bright yellow, and `128,128,128` is a medium gray.
hero_image: /projects/future-frontiers/01-philosophy-01-on-horizons-01.jpg
### `page_headers`
hero_position: left
An attribute for advanced users; anything included here will be inserted verbatim at the end of the page's HTML `<head/>`. Use this to specify additional CSS or JavaScript. Because this attribute expects raw HTML, you definitely want to use the "`|` + indent" syntax.
hero_border: true
hero_description: On horizons
Note that the Yak Collective website is based on the [Tachyons design framework](https://tachyons.io/docs/), so you can use any of the classes that Tachyons defines _without_ specifying `page_headers`.
hero_caption:  |
    - Carse photo from [Simon &amp; Schuster](https://www.simonandschuster.biz/authors/James-Carse/313085); collage by [Jenna Dixon](/members/dixon-jenna/)
Be aware that it's very easy to break you page if you don't know what you're doing with this attribute. If anything in the above two paragraphs doesn't make sense to you, you should probably _not_ use this attribute!
description: Frontiers are essential food for the psyche, for a species with the temporal imagination to see past the limits of individual mortality.
author: rao-venkatesh
page_text_color: black
page_bg_color: "252,251,248"
page_headers: |
    - <!-- HTML -->
```
Each of these header attributes is described in more detail in the following sections.

# Backlinks
## [Website Architecture](<Website Architecture.md>)
- Yak Collective projects. See the [How to Add a New Project to the Website](<How to Add a New Project to the Website.md>)

## [Website Widgets](<Website Widgets.md>)
- For more specific instructions about how to add a project page to the website, see the [How to Add a New Project to the Website](<How to Add a New Project to the Website.md>)

## [Yak Collective Website](<Yak Collective Website.md>)
- [How to Add a New Project to the Website](<How to Add a New Project to the Website.md>)

- [How to Add a New Project to the Website](<How to Add a New Project to the Website.md>)

