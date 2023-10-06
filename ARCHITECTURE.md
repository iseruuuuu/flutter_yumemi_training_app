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
UseCase(UseCase)
Repository(Repository)
Api(Api)
Screen --> ViewModel
ViewModel --> Screen
UseCase --> ViewModel
ViewModel --> UseCase
Repository --> UseCase
UseCase --> Repository
Repository --> Api
Api --> Repository
```

# アーキテクチャ

### Screen
- 取得した天気情報の表示を行っている。
- エラーの際は、ダイアログを表示する。

### viewModel
- screenの表示に関わるStateの管理
- screenから受け取った操作（ボタンのタップ）Usecaseに対して天気のデータを取得or更新を伝える役割になっている。

### usecase
- 取得結果（成功か失敗か）をViewModelに伝える役割になっている。

### repository
- apiから取得したデータをアプリが使いやすい形に変換し、Usecaseに渡す役割になっている。

### api
- APIからデータを取得する
- fetchWeatherで取得したデータ（Weather）をUsecaseに渡してあげる。


##  Riverpod の Provider の依存関係図

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
  WeatherScreen((WeatherScreen));
  weatherScreenViewModelProvider ==> WeatherScreen;
  weatherScreenViewModelProvider[[weatherScreenViewModelProvider]];
  weatherRepositoryProvider[[weatherRepositoryProvider]];
  weatherApiProvider ==> weatherRepositoryProvider;
  weatherApiProvider[[weatherApiProvider]];
  weatherUsecaseProvider[[weatherUsecaseProvider]];
  weatherRepositoryProvider ==> weatherUsecaseProvider;
```

# ARCHITECTURE.md
