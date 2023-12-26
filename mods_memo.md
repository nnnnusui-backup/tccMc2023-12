# もどメモ

## warn
- [Createのdeployerでmobをkillするとクラッシュする](https://github.com/Fabricators-of-Create/Create/issues/1096#issuecomment-1864507425)ので、鯖側に下記の変更を加えている。  
  - `Porting-Lib/entity`をfixされたものに置換する。  
    1. 上記URLで配布されている`create-fabric-0.5.1-d-build.1161+mc1.20.1-patched2.jar`をDL。
    1. 7-zipで開き、`./META-INF/jars/entity-2.1.1127+1.20.jar`を取り出す。
    1. `create-sodium-fix-0.5.1-d-build.5+mc1.20.1.jar`内のものを上記で置き換える。
  - `Create Deco`の依存関係を満たすために、バージョン情報を偽装する。  
    1. `create-sodium-fix-0.5.1-d-build.5+mc1.20.1.jar`から`fabric.mod.json`を取り出す。
    1. json内の項目`version`を`0.5.1-d-build.5+mc1.20.1`から書き替える。  
      -> `0.5.1-d-build.1161+mc1.20.1` 
    1. `.jar`内の元のファイルを置き換える。
- Server Side にも必要なはずの`recipe-book-delight-0.3.0-1.20.jar`は、クラッシュするのでサーバーには導入されていない。  
  https://github.com/melontini/recipe-book-delight/issues/4

## Disabled & Removed

- Panda's Extra Details  
  リログの度に扉の描画が消える  
  次バージョンにはSodiumの更新が必要
- Enhanced Block Entities  
  block entity の表示が2重になっていた  
  Indium必須
- Tale of Kingdoms: A new Conquest  
  未導入 サーバー非対応
- Snow! Real Magic!  
  描画が上手く行えずブロックが透過していた  
  削除は破壊的変更 雪が積もっていたブロックは消える
