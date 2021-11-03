git init
git add .
git commit -m "uodate"
git branch -M main
git remote add origin https://github.com/MoonlightGuardian/blog.git
git push -u origin main

git pull --rebase origin master
git pull origin main  --allow-unrelated-histories

<<<<<<< HEAD

=======
cd -

rm -rf ./.git
rm -rf ./静态上传.sh
>>>>>>> 682d51425c023aba5d4933c8cb28399d0cd9220b


