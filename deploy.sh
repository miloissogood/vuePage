//deploy.sh
#!/usr/bin/env sh
# 當發生錯誤時終止腳本運行
set -e
# 打包
npm run build --mode=prod
# 移動至到打包後的dist目錄 
cd dist
ls
git init //因為dist資料夾預設是被ignore的，因此在進入dist資料夾後初始化git
git add -A
git commit -m 'deploy'

git push -f https://github.com/miloissogood/vuePage.git master:gh-pages

cd -
