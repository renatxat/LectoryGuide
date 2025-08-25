# Latex in VSCode

## Heading

### Installation

1) Скачиваем `MikTex` [по этой инструкции](https://miktex.org/download).

2) (Windows only) устанавливаем `Strawberry Perl`.

3) Устанавливаем [расширения](#extensions) в `VScode`.

```bash
sudo apt-get install miktex
```

### Extensions

- [Latex Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop).

- [LaTeX Snippets extension](https://marketplace.visualstudio.com/items?itemName=JeffersonQin.latex-snippets-jeff) --- use `LaTeX Plotting Tool` in palette.

- [Paste image](https://marketplace.visualstudio.com/items?itemName=mushan.vscode-paste-image).

- [Rewrap](https://marketplace.visualstudio.com/items?itemName=stkb.rewrap).

DO NOT install following extension:

- [Latex](https://marketplace.visualstudio.com/items?itemName=mathematic.vscode-latex).

- [LaTeX language support](https://marketplace.visualstudio.com/items?itemName=torn4dom4n.latex-support).

### Shortcuts

- `ctrl+alt+j` --- SyncTex: find place in pdf viewer by word in sources.
- `ctrl+click` --- jump from pdf to code.
- (`alt+a` and `alt+q`) or (`select text` and `alt+q`) --- rewrap comments

### Man

Create `Custom.tex` to input specific latex features for current project.


## Template project

### Setup new project

```bash
mkdir <Project>
cd <Project>

# Create github repo for <Project>
git init
git commit --allow-empty -m "empty initial commit"
git remote add origin <repo>

git remote add template git@github.com:Gosstik/LatexTemplate.git
git remote set-url --push template DISABLE
git fetch template
git rebase template/master
git submodule update --init --remote --recursive --rebase
cd Headings && git checkout master && cd ..

# git config push.recurseSubmodules check
# git commit -am "feat: git config push.recurseSubmodules check"

git push -u origin master
```


### Basic functions

```bash
### Pull changes for Headings
./Headings/Scripts/Pull.sh

### Commit changes in Headings
./Headings/Scripts/CommitAndPush.sh

### Push all changes (without add in main repo)
git add <files_to_add>
git commit -m "<commit_message>"
./Headings/Scripts/Publish.sh
```


### Set specific branch to track

```bash
git config -f .gitmodules submodule.Headings.branch master
git config status.submodulesummary 1
```


### Handy

- [Latex engines](https://www.overleaf.com/learn/latex/Articles/What%27s_in_a_Name%3A_A_Guide_to_the_Many_Flavours_of_TeX).
- [How to wrile thesis](https://www.overleaf.com/learn/latex/How_to_Write_a_Thesis_in_LaTeX_(Part_1)%3A_Basic_Structure)
