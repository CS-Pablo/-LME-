document.addEventListener('customEvent', () => {
    // Effectuer des actions ici
});

$(document).ready(function () {
    // Cache des éléments HTML
    var menuContainer = $('#menu-container');
    var menuOptions = $('#menu-options');

    // Cache de l'état du menu
    var menuVisible = false;

    // Fonction pour afficher ou masquer le menu
    function toggleMenu() {
        menuVisible = !menuVisible;
        if (menuVisible) {
            menuContainer.show();
        } else {
            menuContainer.hide();
        }
    }

    // Écouteur pour la touche F6
    $(document).on('keyup', function (event) {
        if (event.keyCode === 117) { // Touche F6
            toggleMenu();
        }
    });

    // Gestion des options de menu
    menuOptions.on('click', '.menu-option', function () {
        var selectedOption = $(this).text();
        // Vous pouvez ajouter ici le code pour traiter l'option sélectionnée
        console.log('Option sélectionnée : ' + selectedOption);
        toggleMenu(); // Fermer le menu après sélection
    });
});
