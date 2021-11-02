rm -r docs/ #删除docs文件夹   docs文件夹是生成的静态网页文件目录#
git rm -r --cached docs/ #告诉git我删除了docs文件夹#

#下边是上传文件到git#
git init
git add .
git commit -m "uodate"
git branch -M main
git remote add origin https://github.com/MoonlightGuardian/fengfan.github.io.git
git push -u origin main

# 是生成docs网页
hugo --destination ./docs --buildDrafts --cleanDestinationDir   

git init
git add .
git commit -m "uodate"
git branch -M main
git remote add origin https://github.com/MoonlightGuardian/fengfan.github.io.git
git push -u origin main
# 运行本地网站  -D 是显示草稿
hugo server  -D

