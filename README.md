rfZenHan
========
http://rayflood.org/diary-temp/rfZenHan-0.2.zip  
rfZenHan.py 全角半角その他を変換するライブラリです。
* 文字種別ごとに全角半角を変換できる。
* cp932(Windows Shift-JIS)の特殊文字を一般化できる。
* ファイルシステム上安全な文字に変換できる。
* 個別に変換ルールを設定することで、英数記号は半角、カナは全角といった変換が一発で可能。
* PerlのライブラリUnicode::Japaneseの全角半角変換メソッド互換。  
http://d.hatena.ne.jp/dayflower/20060530/1148951624

使い方
------
    import rfZenHan
    print rfZenHan.h2z(u" 012ABCabc!@#ｱｲｳｶﾞﾀﾞﾊﾟ㈱:")
    print rfZenHan.z2h(u"　０１２ＡＢＣａｂｃ！＠＃アイウガダパ(株)：")
    rfzh = rfZenHan(rfZenHan.NormalizeCIFS)
    print rfzh.conv(u"　０１２ＡＢＣａｂｃ！＠＃ｱｲｳｶﾞﾀﾞﾊﾟ㈱:")

注意！
------
変換対象文字列はUnicode前提です。  
変換されてない場合は事前に変換して渡してください。  
例：
    # リテラルの場合は""の前にuをつける。
    print rfZenHan.h2z(u" 012ABCabc!@#ｱｲｳｶﾞﾀﾞﾊﾟ㈱:")
    # それ以外はunicode()関数で変換する。
    print rfZenHan.h2z(unicode(utf8str, "utf-8"))

github
------
https://github.com/hATrayflood/rfZenHan

License
-------
The MIT License (MIT)  
http://opensource.org/licenses/mit-license.php  
