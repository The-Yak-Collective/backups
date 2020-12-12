About:: __Documentation for the "convenience" widgets used to extend Markdown on the Yak Collective website.__
Chief Page Wrangler:: [[Nathan Acks]]
    - Additional Page Wranglers:: `[[Fname Lname]]` | `[[Fname Lname]]`
Created:: [[December 11th, 2020]] by [[Nathan Acks]]
Last Updated:: [[December 11th, 2020]] by [[Nathan Acks]]
Last Gardened:: `/Today` by `[[Fname Lname]]`
This page documents the "widgets" (special [Jekyll includes](https://jekyllrb.com/docs/includes/)) that have been developed for the [Yak Collective website](https://www.yakcollective.org). It is meant more as a "quick reference".
    - For detailed information about the site structure (what files go where, etc.), see the [[Website Architecture]] page.
    - For more specific instructions about how to add a project page to the website, see the [[How to Add a New Project to the Website]] guide.
    - For an overview of the five types of pages on the website, required and optional [YAML front matter](https://jekyllrb.com/docs/front-matter/), and a detailed list of which widgets can be used, see the following template files:
        - "Generic" pages: https://github.com/The-Yak-Collective/yakcollective/blob/netlify-prod/template-page.md
        - Project (main) pages: https://github.com/The-Yak-Collective/yakcollective/blob/netlify-prod/projects/template-project.md
        - Project sub-pages: https://github.com/The-Yak-Collective/yakcollective/blob/netlify-prod/projects/template-project/template-page.md
        - Project slides: https://github.com/The-Yak-Collective/yakcollective/blob/netlify-prod/projects/template-project/template-slide.md
        - Member data files: https://github.com/The-Yak-Collective/yakcollective/blob/netlify-prod/members/template-member.md
# widget-google-slides
    - Insert a Google Slide deck in a centered "breakout box". __Requires__ a single parameter:
        - `gid` is the Google Drive document ID for the Google Slides you want to embed. The `gid` is the long random string immediately prior to `/edit` in the URL for your document (not including the leading or trailing `/`).
    - Example usage:
        - ```html
{% include widget-google-slides.html
   gid="1OfBuSq4SImE1Gq2EaAGCAlkwC8LZRCWx-7O_VOHJ5TI"
%}```
    - ```
    - {% include widget-google-slides.html
        - gid="1OfBuSq4SImE1Gq2EaAGCAlkwC8LZRCWx-7O_VOHJ5TI"
    - %}
    - ```
    - See [Don't Waste the Reboot](https://www.yakcollective.org/projects/dont-waste-the-reboot/) and [The New Old Home](https://www.yakcollective.org/projects/the-new-old-home/) for examples of this widget in action.
# widget-image
    - Insert an image in a "breakout box". This is provided as a fancier, more versatile alternative to just writing `![My alt text.](/path/to/image.jpg)` in Markdown; however, be aware that images included in this fashion will __not__ show up in site RSS feeds!
    - This widget __requires__ the following parameter:
        - `image` is the path to the image to include (relative to the final site).
    - There are also two optional parameters:
        - `layout` can be one of `left` (pop content out on the left), `right` (pop content out on the right), `center` (center content, but pop out slightly from the main text on _both_ the left and right), or `full-bleed` (span from the left side of the browser window all the way to the right). If omitted, `center` will be used.
        - `alt` specifies the image alt text. Including a descriptive alt text is recommended for accessibility reasons. Do not use Markdown!
        - `caption` specifies a caption, and is often used to provide image credits. Markdown is permitted here.
    - Example usage:
        - ```html
{% include widget-image.html
   layout="left"
   image="/projects/astonishing-stories/wholeness-in-a-timeless-activity.jpg"
   alt="Wholeness in a Timeless Activity"
   caption="Illustration by [Justice](/members/thelot-justice/)."
%}```
    - See __Astonishing Stories__ project (sub)pages (such as ["Wholeness in a Timeless Activity"](https://www.yakcollective.org/projects/astonishing-stories/wholeness-in-a-timeless-activity/)) for examples of this widget in action.
    - ```markdown
    - {%
        - include widget-image.html
        - layout="left"
        - image="/projects/astonishing-stories/wholeness-in-a-timeless-activity.jpg"
        - alt="Wholeness in a Timeless Activity"
        - caption="Illustration by [Justice](/members/thelot-justice/)."
    - %}
    - ```
# widget-member-card
    - Member cards can be used either as links to the actual member page or as containers of member information. In general you should In the first case.
    - __Requires__ a single parameter:
        - `member` is the ID of a member -- basically, the name of the corresponding file in `/members/`, less the `/.md` extension. For example, Venkatesh Rao's member card would be called by passing in `member="rao-venkatesh"`.
    - There is also an optional paramter:
        - `standalone` is a [truthy/falsy](https://shopify.github.io/liquid/basics/truthy-and-falsy/) parameter indicating whether the card should be presented as a fully-functional container of member information (true), or as a link to a member page (false). Treated as falsy if omitted, which is almost always what you want.
    - Example usage:
        - ```html
{% include widget-member-card.html
   member="rao-venkatesh"
%}```
    - ```markdown
    - {% include widget-member-card.html
        - member="rao-venkatesh"
    - %}
    - ```
    - Member cards can be found on many pages throughout the Yak Collective website; for example, start with the [Members](https://www.yakcollective.org/members/) page itself to see cards in their "default" mode, and then click through to any member page to see a card in `standalone` mode.
# widget-project-box
    - Project boxes display project summary information, similar to member cards. As with member cards, they can be presented either as links to project pages or plain information containers, but unlike member cards you can't specify which to use -- project boxes are links if the project has been published, and simple containers if the project is unpublished.
    - There is a single __required__ parameter:
        - `project` specifies a project ID -- the name of the file corresponding to the project in the `/projects/` directory, less the `.md` bit. So Future Frontier's project ID is specified by setting `project="future-frontiers"`.
    - The is also an optional parameter:
        - `hide_published` is a [truthy/falsy](https://shopify.github.io/liquid/basics/truthy-and-falsy/) parameter; when truthy, it _hides_ the final "published" timestamp line. Treated as falsy if omitted, which is almost always what you want.
    - Example usage:
        - ```html
{% include widget-project-box.html
   project="future-frontiers"
%}```
    - Project boxes can be found on many pages throughout the Yak Collective website. For example, the [Projects](https://www.yakcollective.org/projects/) displays a list of project boxes in their "default" mode, while the [Now](https://www.yakcollective.org/now/) page displays project boxes in the (unpublished) "container" mode with the timestamp line hidden.
    - ```markdown
    - {% include widget-project-box.html
        - project="future-frontiers"
    - %}
    - ```
# widget-toc
    - A widget that generates a "table of contents" from document headings. It has no configuration, and can _only_ be included on Markdown-formatted pages. If you are including this widget, it must come either immediately after the opening header line (`# My Page Title`) __or__ be the _first_ thing on the page if no leading header is being used.
    - Example usage:
        - ```html
{% include widget-toc.md %}```
    - See the [About](https://www.yakcollective.org/about/) page for an example of this `widget-toc` in action.
    - ```markdown
    - {% include widget-toc.md %}
    - ```
# widget-post-list
    - A widget that generates a list of __posts__, organized by month and year. It can __only__ be included on Markdown-formatted pages.
    - Be aware that [posts](https://jekyllrb.com/docs/posts/) are **__not__** the same thing as [pages](https://jekyllrb.com/docs/pages/). Currently, only cached newsletter pages and member writings are accessible using this widget.
    - This widget has no required parameters __per se__, but if you're using it you'll almost certainly want to set at least some of the following:
        - `init_header_level` specifies the initial header level to use. If "2" is passed in, then `h2` tags will be used for years and `h3` tags for months, etc. Defaults to "2", as that's what most pages will use. Values larger than "5" are treated as "5", since `<h7/>` tags don't exist in HTML.
        - `show_author` is a [truthy/falsy](https://shopify.github.io/liquid/basics/truthy-and-falsy/) parameter that specifies whether to show post author (if it is set).
        - `author` allows you to filter posts by a given member ID (`rao-venkatesh`, etc.).
        - `category` allows you to filter posts by category. Currently only `newsletters` and `writings` are valid post categories.
    - Example usage:
        - ```html
{% include widget-post-list.md
   init_header_level=2
   show_author=true
   category="writings"
%}```
    - The canonical post list is the [Writings](https://www.yakcollective.org/writings/) page, but it is also included on some individual member pages.
    - ```markdown
    - {% include widget-post-list.md
        - init_header_level=2
        - show_author=true
        - category="writings"
    - %}
    - ```
# widget-project-header
    - The widget that's used to display a project header. It's really meant to be included as the first line of content for a project, but if you want you can include it anywhere by specifying the optional `project` parameter (which should be a valid project ID). This parameter is not necessary on the project's main page.
    - Example usage:
        - ```html
{% include widget-project-header.html
   project="dont-waste-the-reboot"
%}```
    - ```markdown
    - {% include widget-project-header.html
        - project="dont-waste-the-reboot"
    - %}
    - ```
    - See [Don't Waste the Reboot](https://www.yakcollective.org/projects/dont-waste-the-reboot/), [The New Old Home](https://www.yakcollective.org/projects/the-new-old-home/), [Astonishing Stories](https://www.yakcollective.org/projects/astonishing-stories/), and [Future Frontiers](https://www.yakcollective.org/projects/future-frontiers/) for examples of this widget in action.
# widget-project-page-list
    - Include a grid of project page boxes for all _displayed_ pages associated with a given project. A "displayed" project page is one for which the `hidden` front matter attribute is either false or unset; see `projects/template-project/template-page.md` for more details.
    - Projects will be listed (in ascending order) by date, and then by URL (essentially file name).
    - This widget is designed to be included on a project's main page, and requires no parameters in this case. In all other cases, the `project` parameter should be included and set to a valid project ID.
    - Example usage:
        - ```html
{% include widget-project-page-list.html
   project="astonishing-stories"
%}```
    - ```markdown
    - {% include widget-project-page-list.html
        - project="astonishing-stories"
    - %}
    - ```
    - See [Astonishing Stories](https://www.yakcollective.org/projects/astonishing-stories/) for an example of this widget in action.
# widget-project-slide-deck
    - Create [an "Idle Words" style "infinity" slide deck](https://idlewords.com/talks/). This is accomplished by chaining together instances of `widget-slide`, with slide data drawn from project slide files (see `projects/template-project/project-slide.md`).
    - Slides will be listed (in ascending order) by URL (essentially file name).
    - You can technically call this without any parameters from a project's main page, but you'll probably be much happier if you set at least __some__ of the many optional parameters:
        - `project` specifies a valid project ID ("future-frontiers"). It is only necessary if `widget-project-slide-deck` is included in a page other than a project's main page.
        - `hero_position` specifies whether slide hero images should be on the `left` or `right` for __all__ slides. If unset, each slide will use the value specified by the slide file itself (which may or may not be consistent).
        - `slide_separator` is a [truthy/falsy](https://shopify.github.io/liquid/basics/truthy-and-falsy/) parameter that specifies whether or not to add a (top) border between slides.
        - `slide_align` specifies whether slide `hero_image` and `slide_content` should be aligned to the `top`, `bottom`, or `center` for __all__ slides. If unset, each slide will use the value specified by the slide file itself (which may or may not be consistent).
        - `title_links` controls how slide titles should be linked. One of `internal` (links to the anchor of the current slide), `external` (links to the stand-alone slide page), or `none` (no link). If unset, `external` is used.
        - `show_dates` is a [truthy/falsy](https://shopify.github.io/liquid/basics/truthy-and-falsy/) parameter that specifies whether or not slide dates should be displayed.
        - `collapse_slides` is a [truthy/falsy](https://shopify.github.io/liquid/basics/truthy-and-falsy/) parameter that specifies whether or not slide titles and authors should be suppressed if identical between sequential slides.
        - `table_of_contents` is a [truthy/falsy](https://shopify.github.io/liquid/basics/truthy-and-falsy/) parameter that specifies whether a table of contents for the deck should be generated.
        - `table_of_contents_hero` specifies the image to use for the table of contents slide. If unset, the project's `hero_image` attribute is used.
        - `table_of_contents_hero_description` specifies the image alt text for the table of contents slide. If unset, the project's `title` attribute is used.
        - `table_of_contents_hero_caption` specifies the image caption for the table of contents slide (generally used for image credits).
    - Example usage:
        - ```html
{% include widget-project-slide-deck.html
   project="future-frontiers"
   hero_position="left"
   slide_separator=true
   slide_align="top"
   title_links="internal"
   show_dates=true
   collapse_slides=true
   table_of_contents=true
   table_of_contents_hero="/projects/future-frontiers/table-of-contents.jpg"
   table_of_contents_hero_description="Table of contents"
   table_of_contents_hero_caption="[Venkatesh Rao](/members/rao-venkatesh)"
%}```
    - See [Future Frontiers](https://www.yakcollective.org/projects/future-frontiers/) for an example of this widget in action.
    - ```markdown
    - {% include widget-project-slide-deck.html
        - project="future-frontiers"
        - hero_position="left"
        - slide_separator=true
        - slide_align="top"
        - title_links="internal"
        - show_dates=true
        - collapse_slides=true
        - table_of_contents=true
        - table_of_contents_hero="/projects/future-frontiers/table-of-contents.jpg"
        - table_of_contents_hero_description="Table of contents"
        - table_of_contents_hero_caption="[Venkatesh Rao](/members/rao-venkatesh)"
    - %}
    - ```
# widget-slide
    - An advanced, lower-level widget used for producing slide-like layouts. The main reason this is considered to be "advanced" is that you will generally want to pass in either multi-line Markdown or straight HTML for the `slide_content`, which necessitates the use of [Liquid's "capture" operator](https://shopify.github.io/liquid/tags/variable/#capture). It __requires__ only a single parameter:
        - `slide_content` is the, well, slide content. It can be either Markdown or HTML (or a mix). Keep in mind that this is a slide, so you should probably stick to something short -- a paragraph (maybe two), a bulleted list, etc.
    - There are a bevy of optional parameters:
        - `hero_image` is the "hero" image for the slide, which will take up half of the space either to the left or right of the `slide_content`. If unset, a full-width slide is produced (images can still be embedded within that slide using Markdown or HTML, however).
        - `hero_position` specified whether `hero_image` will be on the `left` or `right` of the `slide_content`. If unset, `left` is used.
        - `hero_description` is the alt text for the `hero_image`.
        - `hero_caption` specifies a caption to display below the `hero_image`. Most commonly used for image credits.
        - `hero_border` is a [truthy/falsy](https://shopify.github.io/liquid/basics/truthy-and-falsy/) parameter indicating whether or not to display a thin border around the `hero_image`. If unset, no border is drawn.
        - `slide_separator` is a [truthy/falsy](https://shopify.github.io/liquid/basics/truthy-and-falsy/) parameter indicating whether or not to add a border along the top of the slide. This is useful to set when displaying multiple slides sequentially.
        - `slide_align` specifies whether the `hero_image` and `slide_content` should be `top`, `bottom`, or `center` aligned. If unset, `top` will be used (which is probably what you want).
        - `slide_id` specifies an HTML element ID to be attached to the slide's containing `<div/>`. This is useful if you want to link to a slide or use the `page_headers` front matter attribute to specify per-slide CSS styling.
    - Most of the time you'll want to create project slides (see `projects/template-project/template-slide.md`) and then use `widget-project-slide-deck` to display them, rather than calling this widget directly. Check out [Future Frontiers](https://www.yakcollective.org/projects/future-frontiers/) to get a sense of what `widget-slide` (along with a little CSS) can do.
# widget-breakout-box
    - An advanced, low-level widget that breaks a specified bit of content out of the main text flow. Can be used for pull quotes and the like (Markdown), but can also be passed entire blocks of HTML. It __requires__ a single parameter:
        - `content` defines the content (HTML or Markdown) to be removed from the main text flow.
    - There are also two optional parameters:
        - `layout` can be one of `left` (pop content out on the left), `right` (pop content out on the right), `center` (center content, but pop out slightly from the main text on _both_ the left and right), or `full-bleed` (span from the left side of the browser window all the way to the right; you probably only want to use this when passing HTML). If omitted, `center` will be used.
        - `extra_class` specifies additional class(es) that will be added to the outer `<div/>` of the breakout box. Useful for controlling positioning for fancy formatting (either [Tachyons](https://tachyons.io/docs/) classes or styling specified directly using the `page_headers` front matter attribute).
    - Note that `widget-google-slides`, `widget-image`, `widget-post-list`, `widget-project-header`, `widget-project-page-list`, and `widget-slide` are all based off of `widget-breakout-box`.
# widget-iframe
    - An **__experimental__** widget that allows you to embed an external page in the Yak Collective website. It __requires__ a single parameter:
        - `url` is the URL of the external webpage you want to embed.
    - The viewport for the embedded page will extend from just below the standard Yak Collective header to just above the standard footer, and from the far left to far right of your browser window. Because of this, if you use `widget-iframe`, it must be the **__only__** content on your page (which implies that you __must__ use the `title` attribute in the front matter for pages including this widget).
    - One consequence of the above is that `widget-iframe` can __only__ be used on "generic" pages and project (main) pages. Using this widget on a project sub-page, project slide, or in a member data file __will__ break the associated page's layout!
