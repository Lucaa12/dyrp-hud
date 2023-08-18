$(document).ready(function() {
    var cashcaval = document.querySelector('#cashcaval');
    var bancaval = document.querySelector('#bancashcaval');
    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item !== undefined && item.action === "update") {
            if (item.money !== undefined && item.bank !== undefined) {
                cashcaval.innerHTML = item.money;
                bancaval.innerHTML = item.bank;
            }
        }
    });
});