### Git Config

```sh
Host github.com-sankar
	HostName github.com
	User git
	IdentityFile ~/.ssh/sankar

Host github.com-orgname
	HostName github.com
	User git
	IdentityFile ~/.ssh/orgname
```

### Git setup

```sh
git config --local user.email "your-email"
git config --local user.name "your-name"
```

```sh
git config --global user.email "your-email"
git config --global user.name "your-name"
```

### If you want to change the URL of the remote named "origin" to a new URL

```sh
git remote set-url origin <url>
```
