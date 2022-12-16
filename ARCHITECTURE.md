# Architecture
５個目
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
  weatherForecastPanelProvider ==> WeatherForecastPanel;
  WeatherScreen((WeatherScreen));
  weatherScreenUiStateProvider ==> WeatherScreen;
  weatherProvider -.-> WeatherScreen;
  weatherForecastPanelProvider[[weatherForecastPanelProvider]];
  weatherProvider[[weatherProvider]];
  weatherScreenUiStateProvider[[weatherScreenUiStateProvider]];


```

4こめ
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
  weatherProvider ==> WeatherForecastPanel;
  WeatherScreen((WeatherScreen));
  weatherScreenUiStateProvider ==> WeatherScreen;
  weatherProvider -.-> WeatherScreen;
  weatherProvider[[weatherProvider]];
  weatherScreenUiStateProvider[[weatherScreenUiStateProvider]];


```



3個目  

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
  weatherProvider ==> WeatherForecastPanel;
  weatherForecastPanelProvider ==> WeatherForecastPanel;
  WeatherScreen((WeatherScreen));
  weatherScreenUiStateProvider ==> WeatherScreen;
  weatherProvider -.-> WeatherScreen;
  weatherProvider[[weatherProvider]];
  weatherForecastPanelProvider[[weatherForecastPanelProvider]];
  weatherScreenUiStateProvider[[weatherScreenUiStateProvider]];
```


２個目

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
  weatherProvider ==> WeatherScreen;
  weatherProvider -.-> WeatherScreen;
  weatherForecastPanelStateProvider[[weatherForecastPanelStateProvider]];
  weatherProvider[[weatherProvider]];


```

１個目

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
  weatherProvider ==> WeatherForecastPanel;
  WeatherScreen((WeatherScreen));
  weatherProvider ==> WeatherScreen;
  weatherProvider -.-> WeatherScreen;
  weatherProvider[[weatherProvider]];
```



# View

### WeatherScreen 
・最低気温・最高気温の表示  　
・YumemiWeatherを呼ぶためのボタンの設置  　   　　
・画面遷移を戻るためのボタンの設置  　　

### WeatherForecastPanel
・天気の画像の表示  


# Notifier

### WeatherScreenNotifier
・WeatherRepositoryNotifierから取得した天気のデータを読み取り、Screenに表示させる  
・エラーの時のダイアログを出す。  
・画面を戻る処理を記載している  

### WeatherRepositoryNotifier
・YumemiWeatherAPIからデータを取得する。

# State

### WeatherScreenUiState
・天気の画像  
・最低気温  
・最高気温  