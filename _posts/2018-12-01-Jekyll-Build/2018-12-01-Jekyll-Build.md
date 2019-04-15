---
title: Build Your Blog with GitHub Pages
tags: Jekyll
edit: 2019-03-26
categories: Jekyll
status: Paused
mathjax: true
highlight: true
mermaid: true
description: Build Your Blog with GitHub Pages. This is a sketch of how to use my theme `PointingToTheMoon` to write your blog. This theme is great for academic use, for it features simple post page with mathjax support and a side bar with toc. The main page on the other hand is somewhat fancy.
---

# What Do I Have to Offer

There are many themes out there, yet none of them suits my need. 

1. I want my post page's width to be at least 80% so the reader can simply read the post. I don't want persistent sidebars with a big picture of the blog owner
2. I want my post to be extra readable. The font needs to be sharp and large enough. Not Consolas fonts or Comic Sans. 
3. I want my blog to have the same features typora has, namely
   1. I need mathjax. Other themes seem rarely supporting it.
   2. [mermaid diagram](https://mermaidjs.github.io/) is always a good thing to have. 
   3. ==highlight==. This feature has to be implemented by js.
4. I don't want to build my blog locally and push the entire website to GitHub. After I have done styling, I write in markdown (using typora) and push it, that should be **all** it needed. 
5. I want my assets in the same folder as my posts. I use the workaround as direct link it to the `raw.github` page, like this `<img src="https://raw.githubusercontent.com/yk-liu/PointingToTheMoon/master/_posts/2018-12-11-Jekyll-Build/assets/GitHub-desktop.png" width="80%">`. I consulted GitHub, and they said it's okay to do so.
6. I want cool things, such as visitor map, tag clouds, and category clouds, commenting. I want Chinese readers to be able to comment as well. Disqus is blocked, and other sources are poorly maintained. So I chose commentit. All you need is a GitHub account or Facebook or Twitter.
7. I have ZERO experience with front end stuff. The JavaScript is exhausting, so I avoided using JS as much as possible. It turns out a hidden sidebar can be down in pure CSS.

Now I ended up with this theme. I know it's not perfect, but I will settle it for now. I will consider any suggestions you guys make, you can comment it in this page.

About the extended markdown syntaxes, you can see it [here]().

# Why GitHub Pages?

1. It's simple.

   1. The Domain is just `username.github.io`. You don't need to buy your own domain. PS, All domains must be registered by the owner using a personal ID. So that saves you a ton of trouble. But GitHub pages also allows you to 
   2. GitHub pages build the website for you. This means you don't need to install `Jekyll` or `ruby`; you don't need you locally build your website and publish it. You simply commit your source code and that's all. 
   3. After properly configured, you can write in `markdown`, and `push` (a fancy name for upload) to GitHub.  Things like equations, lists, tables, mermaid-diagrams, images, or videos are automated supported. This means all you'll need is a text editor as simple as good old notepad.exe to write your post, yet I strongly recommend [`typora`](https://www.typora.io/). As the time of writing, it is free.

2. You have absolute control over anything.

   1. The look. WordPress, blogspace, as well as other services,  do provide beautiful templates. But some of them have unnecessary constraints of where to put what. While on GitHub, you get to control what your pages look like. Still, there are thousands of readily-made themes at your disposal if you are lazy. With a few modifications, you can tailor your website the way you want.
   2. Functions. RSS feed, search, table of contents, pagination, visitor analysis, commenting, *etc*. Anything you can think of it out there. GitHub is a static site generator, which means there are no server-side calculations. However, you can always trick the users with a few walkarounds and CDNs.

3. There is a nice touch. GitHub's famous for being used by techies.

   Having your own website built entirely by yourself.

4. Limitations

   GitHub Pages source repositories have a recommended limit of 1GB. Published GitHub Pages sites may be no larger than 1 GB. GitHub Pages sites have a soft bandwidth limit of 100GB per month.    GitHub Pages sites have a soft limit of 10 builds per hour. See [here](https://help.github.com/articles/what-is-github-pages/#usage-limits)

# About Git

I am going to assume that you know the basic operations of git. If not, download the [GitHub Desktop](https://desktop.github.com/), and do everything in GUI. For the majority of bloggers, only commit and push is required. For you to publish your work, save your file in your editor, go to GitHub Desktop, commit your changes, and push.

<img src="https://raw.githubusercontent.com/yk-liu/PointingToTheMoon/master/_posts/2018-12-11-Jekyll-Build/assets/GitHub-desktop.png" alt="GitHub desktop screen shot" width="60%">

# Clone The Repo

Clone this [repo](https://github.com/yk-liu/PointingToTheMoon) and publish it!

# What Should I Modify

Here is a list of files you need to modify

1. **FIRST: If you are using the "yk-liu.github.io" repo, REMOVE ALL INFO ABOUT YK-LIU.** If you are using "/PointingToTheMoon" repo, you can ignore this step. Including personal description in `/index.html`, `/google8e731c6ab620fd34`, `/about/index.md` and my CV at `/about/CV-of-Liu-Yingkai.pdf`.

2. License.md: add your version of license at the beginning of the file.

3. Readme.md: add your description.

4. config.yml: fill in as much as you can. Also see step 7.

5. index.html: fill in the description and (if any) proposed posts.

6. register at [commentit.io](https://commentit.io/). This enables your website's comment feature.

7. register at [clustermap.com](clustermap.com). Choose your widget as "Map widget", and you will see something like

   ```html
   <script type="text/javascript" id="clustrmaps" src="//cdn.clustrmaps.com/map_v2.js?d=MlqUzlcZFdHetSQtyml5oHyt9RwVjZrsGbvyaRpMwgU&cl=ffffff&w=a"></script>
   ```

   copy the string from "d=" to "&cl=", namely "MlqUzlcZFdHetSQtyml5oHyt9RwVjZrsGbvyaRpMwgU" in this case to config.yml.

8. secret/index.html: decrypt the page use password `ykliu` and save the page locally. Choose your password, copy and paste the HTML into the input textbox, and download the page. Replace secret/index.html with the HTML file you downloaded. Now you have an encrypted page only you can use to encrypt your other pages!

9. Better google discovery: Google site authentication. Just go to [webmaster](https://search.google.com/search-console?hl=en) and click `add property` and download the google authentication file, put in under the root of your repo. A few days later, you should be able to see your website in google search by searching `site:your-site-name.github.io` (no space in between).

After that, you should be able to enjoy your blogging!