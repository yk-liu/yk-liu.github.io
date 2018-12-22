---
title: Build Your Blog with GitHub Pages
tags: Jekyll
edit: 2018-12-19
categories: Jekyll
status: Paused
mathjax: true
highlight: true
mermaid: true
description: Build Your Blog with GitHub Pages. This is a sketch of how to use my theme `PointingToTheMoon` to write your blog. This theme is great for academic use, for it features simple post page with mathjax support and a side bar with toc. The main page on the other hand is somewhat fancy.
---

# What Do I Have to Offer

The demo is [here](https://yk-liu.github.io/PointingToTheMoon/) with a [sample post](https://yk-liu.github.io/PointingToTheMoon/sample/post/2018/12/12/sample-post.html).

There are many theme out there, yet none of them suits my need. 

1. I want my post page's width to be at least 80% so the reader can simply read the post. I don't want persistent sidebars with a big picture of the blog owner
2. I want my post to be extra readable. The font need to be clear and large enough. Not Consolas fonts or Comic Sans. 
3. I want my blog to have the same features typora has, namely
   1. I need mathjax. Other themes seems rarely supporting it.
   2. [mermaid diagram](https://mermaidjs.github.io/) is always a good thing to have. 
   3. ==highlight==. This feature has to be implemented by js.
4. I don't want to build my blog locally and push the entire website to GitHub. After I have done styling, I wrote in markdown (using typora) and push it, that should be **all** it needed. 
5. I want my assets in the same folder as post. I use the work-around as direct link it to the `raw.github` page, like this `<img src="https://raw.githubusercontent.com/yk-liu/PointingToTheMoon/master/_posts/2018-12-11-Jekyll-Build/assets/GitHub-desktop.png" width="80%">`.
6. I want cool things, such as visitor map, tag clouds and category clouds, commenting. I want Chinese reader to be able to comment as well. Disqus is blocked, and other sources are poorly maintained. So I chose commentit. ALl you need is a GitHub account or Facebook or Twitter.
7. I have ZERO experience with front end stuff. The JavaScript is exhausting, so I avoided using JS as much as possible. Turns out a hidden side bar can be down in pure CSS.

Now I ended up with this theme. I know it's not perfect, but I will settle it for now. I will consider any suggestions you guys make, just comment it in this page.

# Why GitHub Pages?

1. It's simple.

   1. The Domain is just `username.github.io`. You don't need to buy your own domain. PS, All domains must be registered by the owner with ID. So that saves you a ton of trouble. But GitHub pages also allows you to 
   2. GitHub pages build the website for you. This means you don't need to install `jekyll` or `ruby`, you don't need you locally build your website and publish it. You just commit your source code and that's all. 
   3. After properly configured, you can write in `markdown`, and `push` (a fancy name for upload) to GitHub.  Things like equations, lists, tables, mermaid-diagrams, images, or videos are automated supported. This means all you'll need is a text editor as simple as good old notepad.exe to write your post, yet I strongly recommend [`typora`](https://www.typora.io/). As the time of writing, it is free.

2. You have absolute control over anything.

   1. The look. WordPress, blogspace as well as other services does provide good-looking templates. But some of them have unnecessary constrains of where to put what. While on GitHub, you get to control what your pages look like. Still, there are thousands of readily made themes at your disposal if you are lazy. With a few modifications, you can tailor your website the way you want.
   2. Functions. RSS feed, search, table of contents, pagination, visitor analysis, commenting, *etc*. anything you can think of it out there. GitHub is a static site generator, which means there are no server side calculations. But you can always trick the users with a few walk-arounds and CDNs.

3. There is a nice touch. GitHub's famous for being used by techies.

   Having your own website built entirely by yourself.

4. Limitations

   GitHub Pages source repositories have a recommended limit of 1GB. Published GitHub Pages sites may be no larger than 1 GB. GitHub Pages sites have a soft bandwidth limit of 100GB per month.	GitHub Pages sites have a soft limit of 10 builds per hour. See [here](https://help.github.com/articles/what-is-github-pages/#usage-limits)

# About Git

I am going to assume that you know the basic operations of git. If not, just download the [GitHub Desktop](https://desktop.github.com/), and do everything in GUI. For the most of bloggers, only commit and push is required. For you to publish your work, save your file in your editor, go to GitHub Desktop, commit your changes, and push.

<img src="https://raw.githubusercontent.com/yk-liu/PointingToTheMoon/master/_posts/2018-12-11-Jekyll-Build/assets/GitHub-desktop.png" width="80%">

# Clone the The Repo

Clone the [repo](https://github.com/yk-liu/PointingToTheMoon) and publish it!

# What Should I Modify

Here is a list of files you need to modify

1. License.md: add your version of license at the beginning of the file.
2. Readme.md: add your description.
3. config.yml: fill in as much as you can.
4. index.html: fill in description and (if any) proposed posts.
5. register at [commentit.io](https://commentit.io/). This enables your website's comment feature.
6. secret/index.html: decrypt the page use password `ykliu`. And save the page locally. Choose your password, copy and paste the html into the input textbox, and download the page. Replace secret/index.html with the html file you downloaded. Now you have a encrypted page only you can use to encrypt your other pages!
7. Better google discovery: google site authentication. Just go to [webmaster](https://search.google.com/search-console?hl=en) and click `add property` and download the google authentication file, put in under the root of your repo. A few days later, you should be able to see your website in google search by searching `site:your-site-name.github.io` (no space in between).

After that, you should be able to enjoy your blogging!