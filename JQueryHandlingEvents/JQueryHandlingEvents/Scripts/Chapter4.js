function WireEvents() {

    // Exercise 1
    $('#button1').click(function () {
        var first = $('#FirstNameTextBox').val();
        var last = $('#LastNameTextBox').val();
        var outputDiv = $('#outputDiv');
        outputDiv.text(outputDiv.text() + ' ' + first + ' ' + last);
    });

    // Exercise 2
    $('#MyDiv').mouseenter(function () {
        Toggle($(this));
        $(this).css('cursor', 'pointer');
    })
            .mouseleave(function () {
                Toggle($(this));
            })
            .mouseup(function (e) {
                $(this).text('X: ' + e.pageX + ' - Y: ' + e.pageY);
            });

    function Toggle(div) {
        div.toggleClass('HighlightClass');
    }

    // Exercise 3
    $('.MyInput').change(function () {
        alert($(this).val());
        $(this).addClass('HighlightClass');
    });

    // Exercise 4
    $('#MyDiv2').bind('mouseenter mouseleave mouseup', function (e) {
        if (e.type == "mouseup")
            $(this).text('X: ' + e.pageX + ' - Y: ' + e.pageY);
        else
            $(this).toggleClass('HighlightClass');
    });

    // Exercise 5
    $('#button2').click(function () {
        $('#MyDiv2').unbind('mouseup');
        var outputDiv2 = $('#outputDiv2');
        outputDiv2.text('Unbinded!!');
    });

    // Exercise 6
    var phonesDiv = $('#phonesDiv');
    $('#addPhone').click(function () {
        var phoneSelDiv = $('div:eq(0)', phonesDiv).clone();
        var phoneTbDiv = $('div:eq(1)', phonesDiv).clone();
        $('select', phoneSelDiv).val('');
        $('input', phoneTbDiv).removeClass().val('');

        phonesDiv.append('<div style="clear:both;" />')
                        .append(phoneSelDiv)
                        .append(phoneTbDiv);
    });

    phonesDiv.live('keypress', function (e) {
        // only allows numbers and "-".
        if ((e.keyCode < 48 || e.keyCode > 57) && e.keyCode != 45) {
            e.stopPropagation();
            return false;
        }
    });

    // Exercise 7
    phonesDiv.delegate('select', 'change', function (e) {
        var selectVal = $(this).val();
        //var thisPhonediv = $(this).parents(':eq(1)'); // the same to: $(this).parent.parent
        //var input = $('input', thisPhonediv);
        var input = $('input', $(this).parent().next('div'));

        input.removeClass('DottedBorder');
        input.removeClass('DashedBorder');

        if (selectVal == 'Mobile') {
            input.addClass('DottedBorder');
        }
        else if (selectVal == 'Office') {
            input.addClass('DashedBorder');
        }
    });

    //Exercise 8
    $('#MyTable tr:odd').hover(
                    function () {
                        $(this).toggleClass('DarkOddRowwClass');
                        $(this).toggleClass('LigthOddRowClass');
                    });

    $('#MyTable tr:even').hover(
                    function () {
                        $(this).toggleClass('DarkEvenRowClass');
                        $(this).toggleClass('LigthEvenRowClass');
                    });

    //Exercise 9
    $('#MyDiv3').toggle(
                    function () {
                        $(this).css('background-color', '#2E2EFE');
                    },
                    function () {
                        $(this).css('background-color', '#DF0174');
                    },
                    function () {
                        $(this).css('background-color', '#FFFFFF');
                    });
}