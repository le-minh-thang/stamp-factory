var send = true;
Multipayment.init('tshopid')

function fnCheckSubmit(mode) {
    $('#payment_form_body').slideToggle();
    $('#payment_form_loading').slideToggle();

    if(send) {
        send = false;
        $(window).off('beforeunload');
        event.preventDefault();
        event.stopPropagation();

        var data = {
            cardno: $(".tdinput input[name='CardNo']").val(),
            expire: "20" + $("select[name='Expire_year']").val() + $("select[name='Expire_month']").val(),
            securitycode: $(".tdinput input[name='SecurityCode']").val(),
            holdername: $(".tdinput input[name='card_name1']").val(),
            tokennumber: '1'
        }

        Multipayment.getToken(data, function (response) {
                if (response.resultCode != '000') {
                    send = true;
                    $('#payment_form_body').slideToggle();
                    $('#payment_form_loading').slideToggle();

                    window.alert('購入処理中にエラーが発生しました')
                } else {
                    //カード情報は念のため値を除去
                    $(".tdinput input[name='CardNo']").val('')
                    $(".tdinput input[name='SecurityCode']").val('')
                    $(".tdinput input[name='card_name1']").val('')
                    $("select[name='Expire_year']").val('')
                    $("select[name='Expire_month']").val('')
                    $('#token').val(response.tokenObject.token)

                    //スクリプトからフォームを submit
                    fnModeSubmit(mode, '', '');
                }
            }
        );
    } else {
        alert("只今、処理中です。しばらくお待ち下さい。");
        return false;
    }
}