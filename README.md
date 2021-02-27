# A boilerplate to install a dist and scss folder fast in any project #

## General Info ##

> I got tired of creating the same starting boilerplate everytime I made a new project so I decided to make a bash script makes a new project for me. Once the project is created is possible to just delete or add more pages if need it.

## How to use ##

> Just run the bash file and it will create a project directory. Inside it it will create a scss directory and a dist directory for html, css and js, plus img folder. 

## Technologies ##

>This file use Git Bash or Linux Command Prompt. The Scss can be activated by using [Live Sass Compiler](https://github.com/ritwickdey/vscode-live-sass-compiler) extension in VSC.
>
>The Source Code below uses normalize.css to add it to your code please go to [Normalize](https://necolas.github.io/normalize.css/8.0.1/normalize.css). The script comes with it ready
>
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
mkdir project # Creates a project folder
cd project # Goes inside the project folder
mkdir dist scss # Creates a dist and scss folder
cd dist # Goes inside the dist folder
touch index.html # Creates the index page
mkdir img css js # Creates img css and js folder
cd css # Goes inside the css folder
touch style.css style.min.css style.min.css.map # Creates a style sheet and minified css and map stylesheet
cd .. # Returns to dist
cd js # Goes inside js folder
touch script.js # Create a js script
cd ../.. # Returns to project
cd scss # Goes inside scss folder
touch style.scss # Creates main scss stylesheet
mkdir abstract base components layout pages # Creates 5 folders (+ Maybe add more in the future like vendor and themes)
cd abstract # Goes inside abstract folder
touch _functions.scss _minmix.scss _variables.scss # Creates function, mixins and variables partials
cd .. # Returns to scss
cd base # Goes inside base folder
touch _normalize.scss _animation.scss _base.scss _reset.scss _typography.scss _utilities.scss # Creates a normalize, animation, base, reset, typography and utilities partials
cd .. # Returns to scss
cd components # Goes inside component folder
touch _button.scss # Creates a button partial (+ Maybe add more components in the future like cards, collapsables and dropdowns)
cd .. # Returns to scss
cd layout # Goes inside layout folder
touch _footer.scss _forms.scss _grid.scss _header.scss _navigation.scss _responsive.scss # Creates footer, forms, grid, header, navigation and responsive partials (+ Maybe have breakpoints and other layout elements)
cd .. # Returns to scss
cd pages # Goes inside pages folder
touch _home.scss _about.scss _contact.scss # Creates home, about and contact partials
cd .. # Returns to scss

#######################################################
# Space here for future folders like vendors and themes
#
#
#
#
#######################################################

# Populate the main scss 
echo "// Abstract" >> style.scss 
echo "@import 'abstract/variables';" >> style.scss
echo "@import 'abstract/minmix';" >> style.scss
echo "@import 'abstract/functions';" >> style.scss
echo -e "\n" >> style.scss

echo "// Base" >> style.scss
echo "@import 'base/normalize';" >> style.scss
echo "@import 'base/reset';" >> style.scss
echo "@import 'base/animation';" >> style.scss
echo "@import 'base/base';" >> style.scss
echo "@import 'base/typography';" >> style.scss
echo "@import 'base/utilities';" >> style.scss
echo -e "\n" >> style.scss

echo "// Layout" >> style.scss
echo "@import 'layout/grid';" >> style.scss
echo "@import 'layout/header';" >> style.scss
echo "@import 'layout/navigation';" >> style.scss
echo "@import 'layout/footer';" >> style.scss
echo "@import 'layout/forms';" >> style.scss
echo -e "\n" >> style.scss

echo "// Components" >> style.scss
echo "@import 'components/button';" >> style.scss
echo -e "\n" >> style.scss

echo "// Pages" >> style.scss
echo "@import 'pages/home';" >> style.scss
echo "@import 'pages/about';" >> style.scss
echo "@import 'pages/contact';" >> style.scss


echo -e "\n" >> style.scss
echo "// Responsive" >> style.scss
echo "@import 'layout/responsive';" >> style.scss

# Add basic reset
echo "*,
*::before,
*::after {
    margin: 0;
    padding: 0;
    box-sizing: inherit;
}" >> base/_reset.scss

# Set the font size to 10px for easier using rem
echo "html {
    font-size: 62.5%;
}" >> base/_base.scss

echo "" >> base/_base.scss

# Add borderbox and overflow to body
echo "body {
    box-sizing: border-box;
    overflow-x: none;
}"  >> base/_base.scss

echo "normalize.css code" >> base/_normalize.scss # Please insert normalize code here https://necolas.github.io/normalize.css/8.0.1/normalize.css
echo "Finish!"
```
