# ARCHITECTURE.md

# 全体図

```mermaid
flowchart TB
Riverpod

subgraph Screen
direction TB
WeatherScreen((WeatherScreen))

end

Screen(Screen)
ViewModel(ViewModel)
Repository(Repository)
DataSource(DataSource)
Screen --> ViewModel
ViewModel --> Screen
Repository --> ViewModel
ViewModel --> Repository
Repository --> DataSource
DataSource --> Repository
```

# アーキテクチャ

### Screen

- 取得した天気情報の表示を行っている。
- エラーの際は、ダイアログを表示する。

### ViewModel

- Repositoryからデータを取得
- 取得したデータの内容によって各種Providerを更新
- Screenの表示に関わるStateの管理
- Screenから受け取った操作（ボタンのタップ）Repositoryに対して天気のデータを取得or更新を伝える

### Repository

- DataSourceからデータを取得
- データをアプリで使いやすい形に変換
- エラーハンドリングを行う
- Result型に変換してViewModelに返す

### DataSource

- APIからデータを取得

## Riverpod の Provider の依存関係図

```mermaid
flowchart TB
  subgraph Arrows
    direction LR
    start1[ ] -..->|read| stop1[ ]
    style start1 height:0px;
    style stop1 height:0px;
    start2[ ] --->|listen| stop2[ ]
    style start2 height:0px;
    style stop2 height:0px;
    start3[ ] ===>|watch| stop3[ ]
    style start3 height:0px;
    style stop3 height:0px;
  end
  subgraph Type
    direction TB
    ConsumerWidget((widget));
    Provider[[provider]];
  end

  weatherRepositoryProvider[["weatherRepositoryProvider"]];
  weatherDataSourceProvider[["weatherDataSourceProvider"]];
  weatherScreenViewModelProvider[["weatherScreenViewModelProvider"]];
  WeatherScreen((WeatherScreen));
  _WeatherBody((_WeatherBody));

  weatherScreenViewModelProvider ==> WeatherScreen;
  weatherScreenViewModelProvider -.-> _WeatherBody;
  weatherDataSourceProvider ==> weatherRepositoryProvider;

```

# ARCHITECTURE.md