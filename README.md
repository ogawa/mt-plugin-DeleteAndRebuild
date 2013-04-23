# DeleteAndRebuildプラグイン

Movable Typeのエントリーを削除した際に、削除したエントリーに関連する他のアーカイブを自動的に再構築してくれるプラグイン。MT 3.3以降で動作します。

## 更新履歴

 * 0.01 (2007-02-05 14:47:38 +0900):
   * 公開。

## 概要

Movable Typeは基本的にエントリーを削除した際にアーカイブの再構築を行いません。このため、アーカイブの一貫性を保つためには(言い替えると、DBに格納されている情報とアーカイブファイルの状態とが矛盾しないようにするためには)、全アーカイブを再構築するしか方法がありません。

DeleteAndRebuildプラグインは、この問題を解決するためにエントリーが削除された時点で、そのエントリーを参照していると思われるアーカイブを自動的に再構築し直します。このため、改めて全アーカイブを再構築する必要がなくなります。

## 使い方

プラグインをインストールするには、パッケージに含まれるDeleteAndRebuild.plをMovable Typeのプラグインディレクトリ内にアップロードもしくはコピーしてください。正しくインストールできていれば、Movable Typeのメインメニューにプラグインが新規にリストアップされます。

## See Also

## License

This code is released under the Artistic License. The terms of the Artistic License are described at [http://www.perl.com/language/misc/Artistic.html](http://www.perl.com/language/misc/Artistic.html).

## Author & Copyright

Copyright 2007, Hirotaka Ogawa (hirotaka.ogawa at gmail.com)
