const event = new Event('customEvent');
document.dispatchEvent(event);
// Attendez que le document soit prêt avant d'exécuter le code
$(document).ready(function () {
    // Votre code principal ici
    // Par exemple, vous pouvez initialiser des éléments, ajouter des gestionnaires d'événements, etc.
});
