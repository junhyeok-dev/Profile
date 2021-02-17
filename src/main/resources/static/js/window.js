function setBodyMargin() {
    var windowWidth = $(window).width();

    if (windowWidth > 1280) {
        $("body").css("margin-left", "calc(50% - 640px)");
    } else {
        $("body").css("margin-left", "0");
    }
}

$(window).on("load", function () {
    setBodyMargin();
});

$(window).on("resize", function () {
    setBodyMargin();
});