const locale = require('./locale');

// Supposons que lang est la langue du joueur (par exemple, 'fr' pour le français)
const lang = 'fr';

// Affiche le titre et la description du menu
console.log(locale[lang].jobMenuTitle); // Affiche "Menu des emplois"
console.log(locale[lang].jobMenuDescription); // Affiche "Sélectionnez votre emploi :"

// Affiche les noms des emplois
console.log(locale[lang].policeJob); // Affiche "Policier"
console.log(locale[lang].emsJob); // Affiche "Travailleur EMS"
console.log(locale[lang].bankerJob); // Affiche "Banquier"

// Lorsqu'un joueur sélectionne un emploi (par exemple, EMS)
const selectedJob = 'EMS';
console.log(locale[lang].jobSelected.replace('%s', locale[lang][selectedJob])); // Affiche "Vous avez choisi l'emploi de Travailleur EMS."
