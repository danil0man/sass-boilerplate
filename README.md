A boilerplate to install sass directory fast in any project


----Install Node Sass----


npm --version 

npm init -y 

npm install node-sass 

// Script // 

"sass": "node-sass -w scss/ -o [projectName]/css/ --recursive"



----Create Directory----



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



----Connect partials to style.scss----



nano style.scss

// Abstract @import 'abstract/functions';

@import 'abstract/minmix';

@import 'abstract/variables';

// Base @import 'base/animation';

@import 'base/base';

@import 'base/reset';

@import 'base/responsive';

@import 'base/typography';

@import 'base/utilities';

// Components @import 'components/button';

// Layout @import 'layout/footer';

@import 'layout/forms';

@import 'layout/grid';

@import 'layout/header';

@import 'layout/navigation';

// Pages @import 'pages/about';

@import 'pages/contact';

@import 'pages/home';



----Running----


npm run sass
