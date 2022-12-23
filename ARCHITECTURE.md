# Architecture

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
  WeatherForecastPanel((WeatherForecastPanel));
  weatherForecastPanelStateProvider ==> WeatherForecastPanel;
  WeatherScreen((WeatherScreen));
  weatherScreenErrorStateProvider --> WeatherScreen;
  weatherScreenNotifierProvider -.-> WeatherScreen;
  weatherScreenNotifierProvider[[weatherScreenNotifierProvider]];
  weatherRequestStateProvider ==> weatherScreenNotifierProvider;
  weatherRequestStateProvider[[weatherRequestStateProvider]];
  weatherForecastPanelStateProvider[[weatherForecastPanelStateProvider]];
  weatherScreenErrorStateProvider[[weatherScreenErrorStateProvider]];
```

# View

### WeatherScreen
・YumemiWeatherを呼ぶためのボタンの設置       
・画面遷移を戻るためのボタンの設置  
・`WeatherForecastPanel`の設置  
・`WeatherScreenErrorState`をlistenしてエラー時にダイアログを出す。

### WeatherForecastPanel
・天気の画像の表示  
・最低気温・最高気温の表示

# Notifier

### WeatherScreenNotifierProvider
・天気の情報を取得する   
・YumemiWeatherAPIからデータを取得する。　　  
・取得できたデータを`WeatherForecastPanelStateProvider`に渡す。  
・エラーの場合は、`WeatherScreenErrorState`にエラーの内容を渡す。

# State

### WeatherForecastPanelStateProvider
・天気の画像(weatherCondition)  
・最高気温(maxTemperature)    
・最低気温(minTemperature)

### WeatherScreenErrorProvider
・エラー時のエラーメッセージ(errorMessage)

### WeatherRequestProvider
・エリア（area）  
・日時（date）  

