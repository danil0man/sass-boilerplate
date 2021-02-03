# A boilerplate to install a dist and scss folder fast in any project #

## General Info ##

> I got tired of creating the same starting boilerplate everytime I made a new project so I decided to make a bash script makes a new project for me. Once the project is created is possible to just delete or add more pages if need it.

## How to use ##

> Just run the bash file and it will create a project directory. Inside it it will create a scss directory and a dist directory for html, css and js, plus img folder. 

## Technologies ##

>This file use Git Bash or Linux Command Prompt. The Scss can be activated by using [Live Sass Compiler](https://github.com/ritwickdey/vscode-live-sass-compiler) extension in VSC.
Make sure to change the settings on vsc to save the sass in the right folder.
```
"liveSassCompile.settings.formats": [
      {
         "format": "compressed",
         "extensionName": ".min.css",
         "savePath": "project/dist/css"
      }
   ]
```

## Code in the script ##
> If you like to modify the bash file in case you need more automation to your project here is the code.

```bash
mkdir project
cd project
mkdir dist scss
cd dist
touch index.html
mkdir img css js
cd css
touch style.css style.min.css style.min.css.map
cd ..
cd js
touch script.js
cd ../..
cd scss
touch style.scss
mkdir abstract base components layout pages
cd abstract
touch _functions.scss _minmix.scss _variables.scss
cd ..
cd base
touch _animation.scss _base.scss _reset.scss _responsive.scss _typography.scss _utilities.scss
cd ..
cd components
touch _button.scss
cd ..
cd layout
touch _footer.scss _forms.scss _grid.scss _header.scss _navigation.scss 
cd ..
cd pages
touch _home.scss _about.scss _contact.scss
cd ..
echo "// Abstract" >> style.scss
echo "@import 'abstract/functions';" >> style.scss
echo "@import 'abstract/minmix';" >> style.scss
echo "@import 'abstract/variables';" >> style.scss
echo -e "\n" >> style.scss
echo "// Base" >> style.scss
echo "@import 'base/animation';" >> style.scss
echo "@import 'base/base';" >> style.scss
echo "@import 'base/reset';" >> style.scss
echo "@import 'base/responsive';" >> style.scss
echo "@import 'base/typography';" >> style.scss
echo "@import 'base/utilities';" >> style.scss
echo -e "\n" >> style.scss
echo "// Components" >> style.scss
echo "@import 'components/button';" >> style.scss
echo -e "\n" >> style.scss
echo "// Layout" >> style.scss
echo "@import 'layout/footer';" >> style.scss
echo "@import 'layout/forms';" >> style.scss
echo "@import 'layout/grid';" >> style.scss
echo "@import 'layout/header';" >> style.scss
echo "@import 'layout/navigation';" >> style.scss
echo -e "\n" >> style.scss
echo "// Pages" >> style.scss
echo "@import 'pages/about';" >> style.scss
echo "@import 'pages/contact';" >> style.scss
echo "@import 'pages/home';" >> style.scss
echo "Finish!"
```
