# Shiwei Liu 个人学术主页交付说明

这是一个基于 AcademicPages / Jekyll 的个人学术主页模板，已经替换为 Shiwei Liu 的照片、简历、主页简介、研究方向、论文列表和 CV 页面。

## 目录说明

主要需要修改的文件：

| 文件 | 用途 |
| --- | --- |
| `_config.yml` | 网站标题、作者姓名、头像、邮箱、Google Scholar、GitHub Pages 地址 |
| `_pages/about.md` | 首页 About 内容 |
| `_pages/publications.html` | Publications 页面 |
| `_pages/cv.md` | CV 网页版内容 |
| `images/profile.jpg` | 侧边栏头像 |
| `files/shiwei-liu-cv.pdf` | 可下载的 PDF 简历 |

一般不需要修改的目录：

| 目录 | 用途 |
| --- | --- |
| `_layouts/` | Jekyll 页面布局 |
| `_includes/` | Jekyll 组件 |
| `_sass/` | 样式源码 |
| `assets/` | CSS、JS、字体资源 |

## 本地预览

本机已经验证过可用的 Ruby 路径是：

```bash
/opt/homebrew/opt/ruby/bin/ruby
```

本地启动方式：

```bash
cd personal-academic-homepage
/opt/homebrew/opt/ruby/bin/bundle install
/opt/homebrew/opt/ruby/bin/bundle exec jekyll serve -H 127.0.0.1 -P 4000
```

然后在浏览器打开：

```text
http://127.0.0.1:4000/
```

如果本机没有 Homebrew Ruby，可以先安装：

```bash
brew install ruby
```

## 修改个人信息

修改姓名、邮箱、单位、Google Scholar 等信息：

```text
_config.yml
```

修改首页正文：

```text
_pages/about.md
```

修改论文列表：

```text
_pages/publications.html
```

修改网页版 CV：

```text
_pages/cv.md
```

替换头像时，把新照片覆盖为：

```text
images/profile.jpg
```

替换 PDF 简历时，把新 PDF 覆盖为：

```text
files/shiwei-liu-cv.pdf
```

## 推送到 GitHub Pages

### 方式一：个人主页仓库

如果仓库名是：

```text
GitHub用户名.github.io
```

则 `_config.yml` 改成：

```yml
url        : "https://GitHub用户名.github.io"
baseurl    : ""
repository : "GitHub用户名/GitHub用户名.github.io"
```

推送：

```bash
git remote set-url origin https://github.com/GitHub用户名/GitHub用户名.github.io.git
git add .
git commit -m "Build personal academic website"
git push -u origin main
```

### 方式二：普通项目仓库

如果仓库名是：

```text
shiwei-liu-homepage
```

则 `_config.yml` 改成：

```yml
url        : "https://GitHub用户名.github.io"
baseurl    : "/shiwei-liu-homepage"
repository : "GitHub用户名/shiwei-liu-homepage"
```

推送：

```bash
git remote set-url origin https://github.com/GitHub用户名/shiwei-liu-homepage.git
git add .
git commit -m "Build personal academic website"
git push -u origin main
```

GitHub Pages 设置：

1. 打开仓库的 `Settings`
2. 进入 `Pages`
3. Source 选择 `Deploy from a branch`
4. Branch 选择 `main`
5. Folder 选择 `/root`
6. 保存后等待 GitHub 自动部署

## 当前已验证

本地已通过：

```bash
/opt/homebrew/opt/ruby/bin/bundle exec jekyll build
```

并确认首页和 Publications 页面可以正常访问。

## 注意事项

* `vendor/` 和 `_site/` 是本地依赖/构建产物，不需要提交到 GitHub。
* `.git/` 是当前机器上的 Git 历史，交付 zip 包里不包含它。
* 如果 GitHub Pages 构建失败，优先检查 `_config.yml` 里的 `url`、`baseurl`、`repository` 是否和仓库名一致。
