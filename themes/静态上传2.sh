
hugo --destination ./docs --buildDrafts --cleanDestinationDir 
<<<<<<< HEAD

=======
>>>>>>> 682d51425c023aba5d4933c8cb28399d0cd9220b
cd docs
git init
git add .
git commit -m "uodate"
git branch -M main
git remote add origin https://github.com/MoonlightGuardian/blog.git
git push -u origin main
<<<<<<< HEAD
=======
cd -
rm -rf ./.git
rm -rf ./静态上传2.sh
>>>>>>> 682d51425c023aba5d4933c8cb28399d0cd9220b
