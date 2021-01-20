mkdir scss
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