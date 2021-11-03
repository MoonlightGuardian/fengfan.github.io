hugo --destination ./docs --buildDrafts --cleanDestinationDir
git init
git add .
git commit -m "uodate"
git branch -M main
git remote add origin https://github.com/MoonlightGuardian/fengfan.github.io.git
git push -u origin main

  cp ./themes/网页上传.sh ./docs/网页上传.sh
 cd docs
./网页上传.sh