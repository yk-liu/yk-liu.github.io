---
layout: info
title: Markdown Syntax
edit: 2019-03-26
mathjax: true
mermaid: true
highlight: true
---

# Basics Markdown Syntax

GitHub uses [kramdown](https://kramdown.gettalong.org/syntax.html) as GitHub Flavored Markdown (GFM). Some of the syntax are listed below.

## Typesetting

```md
*This is italic.* **This is Bold**. * If asterisk is surrounded by spaces, it is not parsed. *

_This is also italic._ __This is also Bold__. _ If underscore is surrounded by spaces, it is not parsed. _

[This is an external link](https://bit.ly). `"https://"` is important. [This is an internal link](#typesetting). Internal links are all lowercase with space replaced by hyphens "-". 

You can mix them like [*this*](https://bit.ly), [`this`](https://bit.ly), **[this](https://bit.ly)**, but not like `[this](https://bit.ly)`.

==Highlighting is not supported by GFM, but I implemented on this theme.==

```

*This is italic.* **This is Bold**. * If asterisk is surrounded by spaces, it is not parsed. *

_This is also italic._ __This is also Bold__. _ If underscore is surrounded by spaces, it is not parsed. _

[This is an external link](https://bit.ly). `"https://"` is important. [This is an internal link](#typesetting). Internal links are all lowercase with space replaced by hyphens "-". 

You can mix them like [*this*](https://bit.ly), [`this`](https://bit.ly), **[this](https://bit.ly)**, but not like `[this](https://bit.ly)`.

==Highlighting is not supported by GFM, but I implemented on this theme.==

## Lists

```markdown
- This is unordered list
  - sub item
    - subsub item
      - subsubsub item
        - it goes on and on ...
- List can have multiple lines

  like this.
- > Or block quotes
- ```markdown
  or code fences
​```

---

1. This is ordered list
   1. sub item
2. This is as well
3. It can keep going

---

1. You can avoid manuel numbering like this
   1. sub item
1. It keeps going
1. yedda yedda
```

- This is unordered list
  - sub item
    - subsub item
      - subsubsub item
        - it goes on and on ...
- List can have multiple lines

  like this.
- > Or block quotes
- ```markdown
  or code fences
  ```

---

1. This is ordered list
   1. sub item
2. This is as well
3. It can keep going

---

1. You can avoid manuel numbering like this

   1. sub item

1. It keeps going

1. yedda yedda

## Images

```markdown
Markdown uses `![caption](link)` to reference pictures, caption is optional. You cannot control the size. 

![caption](https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/triangles.png)

So I prefer using HTML tags like this:

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/triangles.png" width="30%">
```

Markdown uses `![caption](link)` to reference pictures, caption is optional. You cannot control the size. 

![caption](https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/triangles.png)

So I prefer using HTML tags like this:

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/triangles.png" width="30%">

> Note: I consulted GitHub support about using `raw.github` link for pictures, they said it's okay to do so:
>
> > **Can I use raw links to show my pictures in my blog?**
> >
> > I know this is not how the Jekyll recommended. Still I am wondering if this practice is discouraged from you guy for if my site got more popular and the traffic would be greater. I would like to know is there any traffic limit on the raw links and is there any work arounds that I could keep my directory structure?
>
> and they said:
>
> > Hi Yingkai,
> >
> > Thanks for reaching out.
> >
> > We don't endorse this kind of structure typically, but it doesn't seem to be causing any problems on our end.
> >
> > Also, there isn't any documented traffic limit on raw links nor are we aware of any workarounds (though it's possible they exist).
> >
> > We'll be sure to reach out if the traffic is causing undue load on our systems, but we're open to answering any other questions you may have about this. Cheers!
> >
> > All the best,
> > GitHub Staff

## Blocks: Blockquotes, Code fences

```markdown
> This is a quote block
>
> > This is a quote block in side another

​```python
# This is a python code fence
import numpy as np
print("""This is a python code fence""")
​```

​```fortran
! This is a fortran code fence
implicit none
​```

​```
This is a simple code fence. You can use it to display text in Mono fonts.
​```

You can mix them as well, like 

>```
>this.
>```
```

> This is a quote block
>
> > This is a quote block in side another

```python
# This is a python code fence
import numpy as np
print("""This is a python code fence""")
```

```fortran
! This is a fortran code fence
implicit none
```

```
This is a simple code fence. You can use it to display text in Mono fonts.
```

You can mix them as well, like 

>```
>this.
>```

## Tables

```markdown
| This column is left aligned | This column is centered | This column is right aligned |
| :-------------------------- | :---------------------: | ---------------------------: |
| 1                           |            4            |                            7 |
| 2                           |            5            |                            8 |
| 3                           |            6            |                            9 |

| You can use `![caption](link)` in tables.                    | You can use Math in tables. | You can use `<img src="" width="">` in tables.               |
| ------------------------------------------------------------ | --------------------------- | ------------------------------------------------------------ |
| ![caption](https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/triangles.png) | $1+1=2$                     | <img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/triangles.png" width="30%"> |
```

| This column is left aligned | This column is centered | This column is right aligned |
| :-------------------------- | :---------------------: | ---------------------------: |
| 1                           |            4            |                            7 |
| 2                           |            5            |                            8 |
| 3                           |            6            |                            9 |

| You can use `![caption](link)` in tables.                    | You can use Math in tables. | You can use `<img src="" width="">` in tables.               |
| ------------------------------------------------------------ | --------------------------- | ------------------------------------------------------------ |
| ![caption](https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/triangles.png) | $1+1=2$                     | <img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/triangles.png" width="30%"> |

## Mathjax

```markdown
This is inline math $\sum_{i=1}^{N} i $. This is display math.

$$
\sum_{i=1}^{N} i 
$$

[Mathjax](http://docs.mathjax.org/en/latest/tex.html) syntax is like latex. You cannot use `\usepackge`, but you can use `\newcommand` like this 

$$
\newcommand{\NewOp}[2]{\lbrace{#1}\mid \otimes{#2}\rbrace}
$$

And `\NewOp` will be available in all later math blocks, whether inline $\NewOp{x}{y}$ or display

$$
\NewOp{x}{y}
$$

Be **very careful** with the vertical bar symbol and underscore in math. If you use it like $|x|\ge 0$, $|0|=0$, or like $\lbrace x | x\gt 0\rbrace$, you will get a bunch of gibberish.

Use `\vert` in $\vert x\vert\ge 0$, $\vert 0\vert=0$. Use `\mid` in $\lbrace x \mid x\gt 0​$ instead.

Also using underscores like this $x_1$, $x_2$, $x_{c_2}^{c_3}$, with $y_{c_2}^{c_3}​$, will be processed as _this_.

Wrap underscores with whitespaces like this $x _ 1$, $x _ 2$, $x _ {c _ 2}^{c _ 3}$, with $y _ {c _ 2}^{c _ 3 }​$.
```

This is inline math $\sum_{i=1}^{N} i $. This is display math.

$$
\sum_{i=1}^{N} i 
$$

The extra empty line matters, or you will end up with
$$
\sum_{i=1}^{N} i
$$

[Mathjax](http://docs.mathjax.org/en/latest/tex.html) syntax is like latex. You cannot use `\usepackge`, but you can use `\newcommand` like this 

$$
\newcommand{\NewOp}[2]{\lbrace{#1}\mid \otimes{#2}\rbrace}
$$

And `\NewOp` will be available in all later math blocks, whether inline $\NewOp{x}{y}​$ or display

$$
\NewOp{x}{y}
$$


## Mermaid diagram

 Not supported by GFM, implemented using JavaScript.

```
​```mermaid
  graph LR;
    
  A[Hello!] --> B{This}
  B --> C(is a)
  C --> D((Flowchart!))
​```
```

```mermaid
  graph LR;
   A[Hello!] --> B{This}
  B --> C(is a)
  C --> D((Flowchart!))
```

## Headings

```
# Heading 1

## Heading 2

### Heading 3

#### Heading 4

##### Heading 5

###### Heading 6
```

# Heading 1

## Heading 2

### Heading 3

#### Heading 4

##### Heading 5

###### Heading 6

# Kind Reminders for Bloggers

## Mathjax Pitfalls

1. {% raw %}

   do not use `{{` anywhere in your math. Say `\bra{{-2}^\psi}` use `{ {` instead. Jekyll will parse that as liquid tags. You can do that by replacing. 

   {% endraw %}

2. do not use `x_1` in inline math, write that as `x _ 1`. Jekyll will parse that as italic fonts. You can do that by replacing, but be careful that some of the links contains `_` so make sure you correct those links afterwards.

```
   Using underscores like this $x_1$, $x_2$, $x_{c_2}^{c_3}$, with $y_{c_2}^{c_3}$, will be processed as _italic_.

   Wrap underscores with whitespaces like this $x _ 1$, $x _ 2$, $x _ {c _ 2}^{c _ 3}$, with $y _ {c _ 2}^{c _ 3 }$.
```

   Using underscores like this $x_1$, $x_2$, $x_{c_2}^{c_3}$, with $y_{c_2}^{c_3}$, will be processed as _italic_.

   Wrap underscores with whitespaces like this $x _ 1$, $x _ 2$, $x _ {c _ 2}^{c _ 3}$, with $y _ {c _ 2}^{c _ 3 }​$.

3. ```
   Be **very careful** with the vertical bar symbol and underscore in math. If you use it like $|x|\ge 0$, $|0|=0$, or like $\lbrace x | x\gt 0\rbrace$, you will get a bunch of gibberish.
   
   Use `\vert` in $\vert x\vert\ge 0$, $\vert 0\vert=0$. Use `\mid` in $\lbrace x \mid x\gt 0​$ instead.
   ```

   Be **very careful** with the vertical bar symbol and underscore in math. If you use it like $|x|\ge 0$, $|0|=0$, or like $\lbrace x | x\gt 0\rbrace​$, you will get a bunch of gibberish.

   Use `\vert` in $\vert x\vert\ge 0$, $\vert 0\vert=0$. Use `\mid` in $\lbrace x \mid x\gt 0\rbrace$ instead.

4. Use `\newline` instead of `\\` in inline math. `\substack` is a very useful command.

5. ```markdown
   The extra empty line of displaymath matters, or you will end up with
   $$
   \sum_{i=1}^{N} i
   $$
   ```

   The extra empty line matters, or you will end up with
   $$
   \sum_{i=1}^{N} i
   $$

## YAML front matter pitfalls

Don't use `[ ]` in YAML front matter. 

Don't use `:` in YAML front matter. If you have to, use pipe line:

```
title: >
   The Matrix II: Reload
```

## Typora related

`<img src="" width=80%>` will be rendered by typora but Jekyll only renders `<img src="" width="80%">`


## Foot Notes

This is a note[^1]. Footnotes can have captions like[^this]. You can reference to the same note multiple times like[^this]. Foot notes can have many other options like[^this-one]. Or just like [^that]. This is a [reference style link][linkid] to a page. And [this][linkid] is also a link. As is [this][] and [that].

# Foot Notes

The Foot notes are like this


[^1]: https://yk-liu.github.io
[^this]: https://yk-liu.github.io

[^this-one]: 
    > Blockquotes can be in a footnote.

```
    as well as code blocks
```

[^that]: or, naturally, simple paragraphs.

[^linkid]: https://yk-liu.github.io "Optional Title"

