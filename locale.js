const locale = require('./locale');

const locale = {
    fr: {
      jobMenuTitle: "Menu des emplois",
      jobMenuDescription: "Sélectionnez votre emploi :",
      policeJob: "Policier",
      emsJob: "Travailleur EMS",
      bankerJob: "Banquier",
      // Ajoutez d'autres chaînes de caractères
    },
    en: {
      jobMenuTitle: "Job Menu",
      jobMenuDescription: "Select your job:",
      policeJob: "Police Officer",
      emsJob: "EMS Worker",
      bankerJob: "Banker",
      // Ajoutez d'autres chaînes de caractères
    },
    es: {
      jobMenuTitle: "Menú de trabajos",
      jobMenuDescription: "Selecciona tu trabajo:",
      policeJob: "Policía",
      emsJob: "Trabajador de EMS",
      bankerJob: "Bancario",
      // Ajoutez d'autres chaînes de caractères
    },
    // Ajoutez d'autres langues au besoin
  };
  

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



