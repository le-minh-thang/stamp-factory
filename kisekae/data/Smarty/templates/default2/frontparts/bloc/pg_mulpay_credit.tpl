<!--{*
 * Copyright(c) 2012 GMO Payment Gateway, Inc. All rights reserved.
 * http://www.gmo-pg.com/
 * Updated: 2013/03/29
 *}-->
<script src="https://pt01.mul-pay.jp/ext/js/token.js"></script>
<script src="<!--{$smarty.const.ROOT_URLPATH}-->js/payment.js"></script>
<script type="text/javascript">//<![CDATA[
    $(function() {
                <!--{$tpl_payment_onload}-->
    });
//]]>
</script>
        <!--{if $tpl_is_td_tran}-->
        <div id="payment_form_td_tran" style="<!--{if !$tpl_is_td_tran}-->display:none;<!--{/if}-->">
            <div class="information">
                <p>本人認証サービス(3-Dセキュア認証)の画面に移動します。</p>
            </div>
            <table summary="">
                <tr>
                <td class="alignC">
                    本人認証サービス（3-Dセキュア認証）を続けます。<br /><br />
                    「次へ」ボタンをクリックして下さい。<br /><br />
                    <span class="attention2">※画面が切り替るまで少々時間がかかる場合がございますが、そのままお待ちください。</span>
                </td>
                </tr>
            </table>
        </div>
        <input type="hidden" name="PaReq" value="<!--{$arrTdData.PaReq}-->" />
        <input type="hidden" name="TermUrl" value="<!--{$arrTdData.TermUrl}-->" />
        <input type="hidden" name="MD" value="<!--{$arrTdData.MD}-->" />
        <!--{/if}-->
        <input type="hidden" name="token" value="" id="token"/>
        <div id="payment_form_loading" style="<!--{if !$tpl_is_loding}-->display:none;<!--{/if}-->">
            <div class="information">
                <p>決済処理中です。しばらくお待ち下さい。</p>
            </div>
            <table summary="">
                <tr>
                <td class="alignC">
                    <img src="<!--{$smarty.const.MDL_PG_MULPAY_MEDIAFILE_URL}-->loading.gif" />
                </td>
                </tr>
            </table>
        </div>
        <div id="payment_form_body" style="<!--{if $tpl_is_loding}-->display:none;<!--{/if}-->">
            <div class="information">
                <p>下記項目にご入力ください。「<span class="attention2">※</span>」印は入力必須項目です。<br /><br />
                入力後、一番下の「申し込む」ボタンをクリックしてください。<br /><br /></p>
                <!--{assign var=key value="payment"}-->
                <p class="attention2"><!--{$arrErr[$key]}--></p>
            </div>

            <p class="title3"><!--{$tpl_title|h}-->情報のご入力</p>

<!--{if ($tpl_title == "後払いクレジットカード決済")}-->
            <div class="information">
                <p style="font-size: 10pt; margin-bottom: 20px; color: gray; margin-left: 14px; margin-top: -30px;">※ カード会社のみでの認証になります。スタンプファクトリーには情報は残りません。</p>
            </div>
<!--{/if}-->

            <table summary="クレジットカード番号入力">
                <colgroup width="20%"></colgroup>
                <colgroup width="80%"></colgroup>
                <tr>
                    <th colspan="2" class="alignC"></th>
                </tr>

<!--{if ($tpl_title == "後払いクレジットカード決済")}-->
<!--{else}-->
                <tr>
                    <th class="tdright2">
                        お支払金額<span class="attention2">※</span>
                    </th>
                    <td class="tdinput">
		    	<span class="tdright4" style="font-size: 20px;"><!--{$smarty.get.__total}--> 円（税抜）</span>
                    </td>
                </tr>

<!--{/if}-->

                <tr>
                    <th class="tdright2">
                        カード番号<span class="attention2">※</span>
                    </th>
                    <td class="tdinput">
                    <!--{assign var=key1 value="CardNo"}-->
                    <span class="attention2"><!--{$arrErr[$key1]}--></span>
                    <input type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" style="ime-mode: disabled; <!--{$arrErr[$key1]|sfGetErrorColor}-->"  size="16" class="inptxt2" placeholder="半角入力 (例: 1234567890123456)" />
                    <img src="/visa-master.jpg" class="ccard" />
                    </td>
                </tr>
                <tr>
                    <th class="tdright2">
                        カード有効期限<span class="attention2">※</span>
                    </th>
                    <td class="tdinput">
                    <!--{assign var=key1 value="Expire_month"}-->
                    <!--{assign var=key2 value="Expire_year"}-->
                    <span class="attention2"><!--{$arrErr[$key1]}--></span>
                    <span class="attention2"><!--{$arrErr[$key2]}--></span>
                    <select class="inptxt3" name="<!--{$key1}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->">
                    <option value="">&minus;&minus;</option>
                    <!--{html_options options=$arrMonth selected=$arrForm[$key1].value}-->
                    </select><span class="tdright4">月&nbsp; / &nbsp;20</span>
		    <select name="<!--{$key2}-->" class="inptxt3" style="<!--{$arrErr[$key2]|sfGetErrorColor}-->">
                    <option value="">&minus;&minus;</option>
                    <!--{html_options options=$arrYear selected=$arrForm[$key2].value}-->
                    </select><span class="tdright4">年</span>
                    </td>
                </tr>
                <tr>
                    <th class="tdright2">
                        カード名義<span class="attention2">※</span>
                    </th>
                    <td class="tdinput">
                        <!--{assign var=key1 value="card_name1"}-->
                        <!--{assign var=key2 value="card_name2"}-->
                        <span class="attention2"><!--{$arrErr[$key1]}--></span>
                        <span class="attention2"><!--{$arrErr[$key2]}--></span>
                        <span class="tdright4">名:</span><input type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" style="ime-mode: disabled; <!--{$arrErr[$key1]|sfGetErrorColor}-->" size="20" class="inptxt2" placeholder="半角英文字入力（例：TARO）" />
                        <br />
                        <span class="tdright4">姓:</span><input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$arrForm[$key2].length}-->" style="ime-mode: disabled; <!--{$arrErr[$key2]|sfGetErrorColor}-->" size="20" class="inptxt2" placeholder="半角英文字入力（例：YAMADA）" />
                        <p class="mini"><span class="attention2">カードに記載の名前をご記入下さい。ご本人名義のカードをご使用ください。</span></p>
                    </td>
                </tr>
                <!--{if $arrPaymentInfo.use_securitycd == '1'}-->
                <tr>
                    <th class="tdright2">
                        セキュリティコード<!--{if $arrPaymentInfo.use_securitycd_option != '1'}--><span class="attention2">※</span><!--{/if}-->
                    </th>
                    <td class="tdinput">
                        <!--{assign var=key value="SecurityCode"}-->
                        <span class="attention2"><!--{$arrErr[$key]}--></span>
                        <input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|h}-->" maxlength="<!--{$arrForm[$key].length}-->" style="ime-mode: disabled; <!--{$arrErr[$key]|sfGetErrorColor}-->"  size="4" class="inptxt3" placeholder="半角入力 (例: 123)" />
                        <p class="mini"><span class="attention2">※主にカード裏面の署名欄に記載されている末尾３桁～４桁の数字をご記入下さい。</span></p>
                    </td>
                </tr>
                <!--{/if}-->

<!--{if ($tpl_title == "後払いクレジットカード決済")}-->
                <tr style="display: none; visibility: hidden;">
                    <th class="tdright2">
                        支払い方法<span class="attention2">※</span>
                    </th>
                    <td class="tdinput">
                        <!--{assign var=key1 value="Method"}-->
                        <span class="attention2"><!--{$arrErr[$key1]}--></span>
                        <select class="inptxt3" style="max-width: 90px;" name="<!--{$key1}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->">
                        <!--{html_options options=$arrPayMethod selected=$arrForm[$key1].value}-->
                        </select>
                    </td>
                </tr>
<!--{else}-->
                <tr>
                    <th class="tdright2">
                        支払い方法<span class="attention2">※</span>
                    </th>
                    <td class="tdinput">
                        <!--{assign var=key1 value="Method"}-->
                        <span class="attention2"><!--{$arrErr[$key1]}--></span>
                        <select class="inptxt3" style="max-width: 90px;" name="<!--{$key1}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->">
                        <!--{html_options options=$arrPayMethod selected=$arrForm[$key1].value}-->
                        </select>
                    </td>
                </tr>
<!--{/if}-->
                <!--{if $arrPaymentInfo.enable_customer_regist && $tpl_pg_regist_card_form}-->
                <tr>
                    <th class="tdright2">
                        カード情報登録
                    </th>
                    <td class="tdinput">
                        <!--{assign var=key value="register_card"}-->
                        <span class="attention2"><!--{$arrErr[$key]}--></span>

                        <!--{if !$tpl_plg_pg_mulpay_is_subscription}-->
                        <input type="checkbox" name="<!--{$key}-->" value="1" <!--{if $arrForm[$key].value != ""}-->checked<!--{/if}--> >
                        <label for="<!--{$key}-->">このカードを登録する。</label>
                        <!--{else}-->
                        <input type="hidden" name="<!--{$key}-->" value="1" />
                        <!--{$tpl_plg_pg_mulpay_subscription_name|h}-->では自動でカード登録します。
                        <!--{/if}-->
                        <p class="mini">カード情報を登録すると次回より入力無しで購入出来ます。<br /><br />カード情報は当店では保管いたしません。<br /><br />委託する決済代行会社にて安全に保管されます。</p>
                    </td>
                </tr>
                <!--{/if}-->
                <!--{if $tpl_pg_regist_card_max}-->
                <tr>
                    <th class="tdright2">
                        カード情報登録
                    </th>
                    <td class="tdinput">
                        <span class="attention2">カード情報が既に<!--{$smarty.const.MDL_PG_MULPAY_REGIST_CARD_NUM|h}-->個登録されています。<br /><br />これ以上は新規で登録出来ません。</span>
                        <p class="mini">新たに登録したい場合は、大変お手数ですが後ほどマイページにて編集して下さい。</p>
                    </td>
                </tr>
                <!--{/if}-->
            </table>

            <table>
                <tr>
                    <td>
                        以上の内容で間違いなければ、下記「申し込む」ボタンをクリックしてください。<br /><br />
                        <span class="attention2">※画面が切り替るまで少々時間がかかる場合がございますが、そのままお待ちください。</span>
                    </td>
                </tr>
            </table>

            <div class="btn_area">
                    <!--{if false && !$tpl_btn_next}-->
                        <input type="image" onclick="return fnCheckSubmit('return');" src="/btn-submit2.png" alt="戻る" border="0" name="back" id="back"/>
                    <!--{/if}-->
                    <!--{if false && $tpl_btn_next}-->
                        <input type="image" onclick="return fnCheckSubmit('next');" onmouseover="chgImg('<!--{$TPL_URLPATH}-->img/button/btn_next_on.jpg',this)" onmouseout="chgImg('<!--{$TPL_URLPATH}-->img/button/btn_next.jpg',this)" src="<!--{$TPL_URLPATH}-->img/button/btn_next.jpg" alt="次へ" border="0" name="next" id="next" />
                    <!--{else}-->
                        <br /><center>
                        <input class="inpsbmimg" type="image" onclick="return fnCheckSubmit('next');" src="/btn-submit2.png" alt="お申し込み完了ページへ"  name="next" id="next" />
                        </center>
                    <!--{/if}-->
            </div>

       </div>
<!--{* /payment_form_body *}-->