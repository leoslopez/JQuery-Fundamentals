function exerciseOne() {    
    var html = '';

    $('div.BlueDiv, div.RedDiv').each(function (index) {
        html += "<br />" + index + " " + $(this).text();
    });

    var output = $('#OutputDiv');
    output.addClass('GreenBorder');
    output.html(html);
}

function exerciseTwo() {    
    $('div.BlueDiv, div.RedDiv').each(function (index) {
        var div = $(this);
        div.css('font-size', '25pt');
        div.attr('title', 'Some Title');
    });
}

function exerciseThree() {    
    $('div.BlueDiv, div.RedDiv').attr(
        {
            title: 'Some Title New',
            style: 'background-color:violet'
        })
        .css('font-size', '20pt')
        .css('color', 'green');
}

function exerciseFour() {    
    var tcd = $('#TableContainerDiv');
    tcd.append('<span class="OliveBackground">Appended child 1</span>');
    tcd.prepend('<span class="OliveBackground">Prepended child 1</span>');
}

function exerciseFive() {    
    $('span.foo').wrap('<div class="RedDiv ParentWraper" />')
    $('div.ParentWraper').each(function () {
        alert($(this).html());
    });
}

function exerciseSix() {     
    $('div.ParentWraper').remove();
}

function exerciseSeven() {
    $('#lblLast').addClass('OrangeBackground');
    
}

function exerciseEight() {
    $('#lblFirst').removeClass('OrangeBackground');
}

function exerciseNine() {    
    $('input[type="text"]').toggleClass('HighlightClass');
}

function FocusBlur(tb) {
    $(tb).toggleClass('HighlightClass');
}