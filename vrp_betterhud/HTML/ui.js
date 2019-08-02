// Credits: Marmota#2533
$(document).ready(function () {
    window.addEventListener('message', function (event) {
        var data = event.data;
        $("body").css("display", data.show ? "none" : "block");
        $("#armor").css("width", data.armor + "%");
        $("#life").css("width", data.life + "%");
        $("#hunger").css("width", 100 - data.hunger + "%");
        $("#thirst").css("width", 100 - data.thirst + "%");
    });
});