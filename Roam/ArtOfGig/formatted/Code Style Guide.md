owner:: [Nathan Acks](<Nathan Acks.md>)
last updated:: [September 6th, 2020](<September 6th, 2020.md>)
last updated by:: [Nathan Acks](<Nathan Acks.md>)
# File Naming
    - Use `lower-case-with-dashes.txt` instead of `Mixed_Caps_And_Underscored.TXT`.
        - Of course, sometimes you've just gotta use an underscore (Jekyll collections, etc.).
    - Re-use existing directories/structure whenever it makes sense to do so.
    - Keep things logically organized!
# Formatting
    - [Indent with tabs, align with spaces.](https://dmitryfrank.com/articles/indent_with_tabs_align_with_spaces)
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
    - For the [Yak Collective Website](<Yak Collective Website.md>), [Liquid comments](https://shopify.github.io/liquid/tags/comment/) should be preferred in processed files.

# Backlinks
## [Contributing to the Website](<Contributing to the Website.md>)
- [Code Style Guide](<Code Style Guide.md>)

## [IT Infrastructure](<IT Infrastructure.md>)
- [Code Style Guide](<Code Style Guide.md>)

## [Yak Collective Website](<Yak Collective Website.md>)
- [Code Style Guide](<Code Style Guide.md>)

