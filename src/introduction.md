# Introduction

This book is the primary reference for Oxur, a Lisp syntax for the Rust
programming language. In contrast to the [Rust reference], it only
provides one type of material: the syntax that informally describes each
language construct and its use.

This book's content was originally based upon the [Rust Reference](https://doc.rust-lang.org/nightly/reference/) ([source code](https://github.com/rust-lang/reference)) and it attempts to track changes there, as they impact Oxur.

<div class="warning">

Warning: This book is incomplete. Documenting everything takes a while. See
the [GitHub issues] for what is not documented in this book.

</div>

## What *The Reference* is Not

This book does not serve as an introduction to the Rust, Lisp, or Oxur languages.
Background familiarity with Rust and Lisp is assumed. A separate book will be made
available for learning Oxur itself, and thus help those interested in acquiring
such background familiarity.

## How to Use This Book

This book does not assume you are reading this book sequentially. Each
chapter generally can be read standalone, but will cross-link to other chapters
for facets of the language they refer to, but do not discuss.

There are two main ways to read this document.

The first is to answer a specific question. If you know which chapter answers
that question, you can jump to that chapter in the table of contents. Otherwise,
you can press `s` or the click the magnifying glass on the top bar to search for
keywords related to your question. For example, say you wanted to know when a
temporary value created in a let statement is dropped. If you didn't already
know that the [lifetime of temporaries] is defined in the [expressions chapter],
you could search "temporary let" and the first search result will take you to
that section.

The second is to generally improve your knowledge of a facet of the language.
In that case, just browse the table of contents until you see something you
want to know more about, and just start reading. If a link looks interesting,
click it, and read about that section.

That said, there is no wrong way to read this book. Read it however you feel
helps you best.

### Conventions

Like all technical books, this book has certain conventions in how it displays
information. These conventions are documented here.

* Statements that define a term contain that term in *italics*. Whenever that
  term is used outside of that chapter, it is usually a link to the section that
  has this definition.

  An *example term* is an example of a term being defined.

* Notes that contain useful information about the state of the book or point out
  useful, but mostly out of scope, information are in blockquotes that start
  with the word "Note:" in **bold**.

  > **Note**: This is an example note.

* Warnings that show unsound behavior in the language or possibly confusing
  interactions of language features are in a special warning box.

  <div class="warning">

  Warning: This is an example warning.

  </div>

* Code snippets inline in the text are inside `<code>` tags.

  Longer code examples are in a syntax highlighted box that has controls for
  copying, executing, and showing hidden lines in the top right corner.

  ```lisp
  # ;; This is a hidden line.
  (fn main ()
    (println! "This is a code example"))
  ```

* The grammar and lexical structure is in blockquotes with either "Lexer" or
  "Syntax" in <sup>**bold superscript**</sup> as the first line.

  > **<sup>Syntax</sup>**\
  > _ExampleGrammar_:\
  > &nbsp;&nbsp; &nbsp;&nbsp; `~` [_Expression_]\
  > &nbsp;&nbsp; | `box` [_Expression_]

  See [Notation] for more detail.

## Contributing

We welcome contributions of all kinds.

You can contribute to this book by opening an issue or sending a pull
request to [the Oxur Specification repository]. If this book does not answer
your question, and you think its answer is in scope of it, please do not
hesitate to [file an issue] or ask about it in the `#oxur-spec` channel on
[Slack] (here's [an invite to the Slack workspace]). Knowing what people use
this book for the most helps direct our attention to making those sections
the best that they can be.

[Rust reference]: https://doc.rust-lang.org/nightly/reference/
[book]: ../book/index.html
[github issues]: https://github.com/oxur/spec/issues
[the Oxur Specification repository]: https://github.com/oxur/spec/
[_Expression_]: expressions.md
[expressions chapter]: expressions.md
[lifetime of temporaries]: expressions.md#temporary-lifetimes
[Notation]: notation.md
[file an issue]: https://github.com/oxur/spec/issues/new
[Slack]: https://app.slack.com/client/TTVERL39C/CTT8KMEAC
[an invite to the Slack workspace]: https://join.slack.com/t/oxur/shared_invite/enQtOTMzODIzNzY2NDY3LTFiY2U3NDA1YWM5ZjIyZTEzNTI2OTNjM2I0M2QzZDYyOWFhM2YwYjljMjQ5OWYwNjAzMDc3NjYzOTQ2NzVjNzE
