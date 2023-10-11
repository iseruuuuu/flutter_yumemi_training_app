# ARCHITECTURE.md

# 全体図

```mermaid
flowchart TB
Riverpod

View(View)
ViewModel(ViewModel)
Repository(Repository)
DataSource(DataSource)
View --> ViewModel
ViewModel --> View
Repository --> ViewModel
ViewModel --> Repository
Repository --> DataSource
DataSource --> Repository
```

# アーキテクチャ

### View

#### WeatherScreen
- 天気状態、最低・最高気温を管理している`weatherScreenViewModelProvider`をwatchして状態を更新するようにする。

#### _WeatherBody
- `weatherScreenViewModelProvider`をreadして、`reloadWeather`を呼ぶ。
  - 成功した(success)場合は、天気の情報を更新する。
  - 失敗した(failure)場合は、エラーのダイアログを表示する
### ViewModel

- Repositoryからデータを取得
- 取得したデータの内容によって各種Providerを更新
- Viewの表示に関わるStateの管理
- Viewから受け取った操作（ボタンのタップ）Repositoryに対して天気のデータを取得or更新を伝える

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