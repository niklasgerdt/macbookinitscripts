mkdir ~/.ssh
cp config ~/.ssh

cp github_company_account_key ~/.ssh
chmod 400 ~/.ssh/github_company_account_key
chown $USER ~/.ssh/github_company_account_key

cp github_private_account_key ~/.ssh
chmod 400 ~/.ssh/github_private_account_key
chown $USER ~/.ssh/github_private_account_key

eval $(ssh-agent)
ssh-add ~/.ssh/github_company_account_key
ssh-add ~/.ssh/github_private_account_key

