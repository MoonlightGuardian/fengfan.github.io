rm -rf docs/ #删除docs文件夹   docs文件夹是生成的静态网页文件目录#
git rm -rf --cached docs/ #告诉git我删除了docs文件夹#

#下边是上传文件到git#
git init
git add .
git commit -m "uodate"
git branch -M main
git remote add origin https://github.com/MoonlightGuardian/fengfan.github.io.git
git push -u origin main
# 下边是拉取解决报错
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c4e140576233776b2881cea41ea5faa318bf06c0
 git pull --rebase origin master
 git pull origin main  --allow-unrelated-histories
# git pull origin main

<<<<<<< HEAD
cp -a ./themes/must.sh ./must.sh
=======
>>>>>>> c4e140576233776b2881cea41ea5faa318bf06c0
rm -rf docs/ #删除docs文件夹   docs文件夹是生成的静态网页文件目录#
git rm -rf --cached docs/ #告诉git我删除了docs文件夹#

#下边是上传文件到git#
git init
git add .
git commit -m "uodate"
git branch -M main
git remote add origin https://github.com/MoonlightGuardian/fengfan.github.io.git
git push -u origin main
# 是生成docs网页

<<<<<<< HEAD
=======
=======
# git pull --rebase origin master
# git pull origin main

# 是生成docs网页
>>>>>>> 682d51425c023aba5d4933c8cb28399d0cd9220b
>>>>>>> c4e140576233776b2881cea41ea5faa318bf06c0
hugo --destination ./docs --buildDrafts --cleanDestinationDir  
 
git init
git add .
git commit -m "uodate"
git branch -M main
git remote add origin https://github.com/MoonlightGuardian/fengfan.github.io.git
git push -u origin main
<<<<<<< HEAD

=======
<<<<<<< HEAD

=======
>>>>>>> 682d51425c023aba5d4933c8cb28399d0cd9220b
>>>>>>> c4e140576233776b2881cea41ea5faa318bf06c0
# # 下边是拉取解决报错
# git pull --rebase origin master
# git pull origin main


# 复制sh到docs文件夹并且运行   静态上传.sh是上传到另外一个公开的库 
cp -a ./themes/静态上传.sh ./docs/静态上传.sh
cd docs
./静态上传.sh
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c4e140576233776b2881cea41ea5faa318bf06c0

cd -

rm -rf ./.git
rm -rf ./静态上传.sh

<<<<<<< HEAD
=======
=======
>>>>>>> 682d51425c023aba5d4933c8cb28399d0cd9220b
>>>>>>> c4e140576233776b2881cea41ea5faa318bf06c0
cp -a ./themes/静态上传2.sh ./docs/静态上传2.sh
cd docs
./静态上传2.sh

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c4e140576233776b2881cea41ea5faa318bf06c0
cd -

rm -rf ./.git
rm -rf ./docs/.git
rm -rf ./静态上传2.sh

<<<<<<< HEAD
=======
=======
>>>>>>> 682d51425c023aba5d4933c8cb28399d0cd9220b
>>>>>>> c4e140576233776b2881cea41ea5faa318bf06c0
rm -r ./must.sh
# 运行本地网站  -D 是显示草稿
hugo server  -D
