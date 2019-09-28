virtualenv -p /usr/bin/python3 myvenv
cd ./myvenv/bin
pwd
source activate
echo "activated venv"
cd ..
cd ..
pwd
pip install django==2.1.1
django-admin startproject ebdjango
cd ebdjango
mkdir .ebextensions
pip freeze > requirements.txt
cd ..
mv django.config ./ebdjango/.ebextensions
deactivate
cd ./ebdjango
eb init -p python-3.6 django-tutorial
eb init
eb create django-env
eb status
eb deploy
eb open