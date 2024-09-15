About:: __Style guide for coding the Yak Collective website (and, ideally, other projects like Discord bots).__
Chief Page Wrangler:: [[Nathan Acks]]
    - Additional Page Wranglers:: `[[Fname Lname]]` | `[[Fname Lname]]`
Created:: [[August 31st, 2020]] by [[Nathan Acks]]
Last Updated:: [[December 7th, 2020]] by [[Nathan Acks]]
Last Gardened:: `/Today` by `[[Fname Lname]]`
# File Naming
    - Use `lower-case-with-dashes.txt` instead of `Mixed_Caps_And_Underscored.TXT`.
        - Of course, sometimes you've just gotta use an underscore (Jekyll collections, etc.).
    - Re-use existing directories/structure whenever it makes sense to do so.
    - Keep things logically organized!
# Formatting
    - [Indent with tabs, align with spaces.](https://dmitryfrank.com/articles/indent_with_tabs_align_with_spaces)
    - In general, lines should be wrapped at 72 characters. Don't be slavish to this though; if your line is 74 characters, or wrapping it would be aesthetically detrimental, this rule can be broken. Try to keep lines below 80 characters max, however, if at all possible.
        - For the purposes of wrapping, a tab should be considered equivalent to 4 spaces.
    - Variable and function names
        - For YAML and Liquid, use `lower-case-with-dashes`
        - For everything else, use `camelCase`
    - Put spaces around operators (`1 + 1`, not `1+1`).
    - Parentheses, brackets, and braces
        ```javascript
if (conditionOne || conditionTwo) {
  // Statement
} else {
  //Statement
}

myArray = [ 1, 2, 3, 4 ];

mathIsDifferent = 1 + (2 * (3 / 4));```
# Code Comments
    - Every file (unless it's __very__ simple) should begin with a comment describing its purpose and giving other high-level information as applicable.
    - Every block of code should be preceded with a block of comments describing its operation.
    - Comments within blocks of code should be used only if what's happening in a given line isn't obvious from context + the code block's main body of comments.
    - For the [[Yak Collective Website]], [Liquid comments](https://shopify.github.io/liquid/tags/comment/) should be preferred in processed files.
