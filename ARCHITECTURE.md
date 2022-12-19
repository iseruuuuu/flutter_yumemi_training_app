# Architecture

2022/12/19（11時16分）
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
  weatherScreenNotifierProvider -.-> WeatherScreen;
  weatherForecastPanelProvider[[weatherForecastPanelProvider]];
  weatherRepositoryNotifierProvider[[weatherRepositoryNotifierProvider]];
  weatherRequestProvider ==> weatherRepositoryNotifierProvider;
  weatherRequestProvider[[weatherRequestProvider]];
  weatherScreenNotifierProvider[[weatherScreenNotifierProvider]];
  weatherRepositoryNotifierProvider ==> weatherScreenNotifierProvider;
  weatherRepositoryUiStateProvider ==> weatherScreenNotifierProvider;
  weatherRepositoryUiStateProvider[[weatherRepositoryUiStateProvider]];
  weatherScreenUiStateProvider[[weatherScreenUiStateProvider]];

```

2022/12/19（11時2分）
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
  weatherScreenNotifierProvider -.-> WeatherScreen;
  weatherForecastPanelProvider[[weatherForecastPanelProvider]];
  weatherRepositoryNotifierProvider[[weatherRepositoryNotifierProvider]];
  weatherRequestProvider ==> weatherRepositoryNotifierProvider;
  weatherRepositoryUiStateProvider ==> weatherRepositoryNotifierProvider;
  weatherRequestProvider[[weatherRequestProvider]];
  weatherRepositoryUiStateProvider[[weatherRepositoryUiStateProvider]];
  weatherScreenNotifierProvider[[weatherScreenNotifierProvider]];
  weatherRepositoryNotifierProvider ==> weatherScreenNotifierProvider;
  weatherScreenUiStateProvider[[weatherScreenUiStateProvider]];

```


2022/12/19（10時43分）

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
  weatherScreenNotifierProvider -.-> WeatherScreen;
  weatherForecastPanelProvider[[weatherForecastPanelProvider]];
  weatherRepositoryNotifierProvider[[weatherRepositoryNotifierProvider]];
  weatherRequestProvider ==> weatherRepositoryNotifierProvider;
  weatherRequestProvider[[weatherRequestProvider]];
  weatherScreenNotifierProvider[[weatherScreenNotifierProvider]];
  weatherRepositoryNotifierProvider ==> weatherScreenNotifierProvider;
  weatherScreenUiStateProvider[[weatherScreenUiStateProvider]];


```


2022/12/19（10時40分）

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
  weatherScreenUiStateProvider ==> WeatherForecastPanel;
  WeatherScreen((WeatherScreen));
  weatherScreenUiStateProvider ==> WeatherScreen;
  weatherScreenNotifierProvider -.-> WeatherScreen;
  weatherScreenUiStateProvider[[weatherScreenUiStateProvider]];
  weatherRepositoryNotifierProvider[[weatherRepositoryNotifierProvider]];
  weatherRequestProvider ==> weatherRepositoryNotifierProvider;
  weatherRequestProvider[[weatherRequestProvider]];
  weatherScreenNotifierProvider[[weatherScreenNotifierProvider]];
  weatherRepositoryNotifierProvider ==> weatherScreenNotifierProvider;


```


2022/12/19（10時）
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
  weatherScreenNotifierProvider ==> WeatherScreen;
  weatherScreenNotifierProvider -.-> WeatherScreen;
  weatherForecastPanelProvider[[weatherForecastPanelProvider]];
  weatherRepositoryNotifierProvider[[weatherRepositoryNotifierProvider]];
  weatherRequestProvider ==> weatherRepositoryNotifierProvider;
  weatherRequestProvider[[weatherRequestProvider]];
  weatherScreenNotifierProvider[[weatherScreenNotifierProvider]];
  weatherRepositoryNotifierProvider ==> weatherScreenNotifierProvider;
  weatherScreenUiStateProvider ==> weatherScreenNotifierProvider;
  weatherScreenUiStateProvider[[weatherScreenUiStateProvider]];
```


2022/12/19（9時半）
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
  weatherScreenProvider ==> WeatherForecastPanel;
  WeatherScreen((WeatherScreen));
  weatherScreenProvider ==> WeatherScreen;
  weatherScreenProvider -.-> WeatherScreen;
  weatherScreenProvider[[weatherScreenProvider]];
  weatherRepositoryNotifierProvider[[weatherRepositoryNotifierProvider]];
  weatherRequestProvider ==> weatherRepositoryNotifierProvider;
  weatherRequestProvider[[weatherRequestProvider]];

```


８個目
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
  weatherScreenNotifierProvider ==> WeatherScreen;
  weatherScreenNotifierProvider -.-> WeatherScreen;
  weatherForecastPanelProvider[[weatherForecastPanelProvider]];
  weatherScreenNotifierProvider[[weatherScreenNotifierProvider]];
```


7個目
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
  weatherScreenNotifierProvider -.-> WeatherScreen;
  weatherForecastPanelProvider[[weatherForecastPanelProvider]];
  weatherScreenNotifierProvider[[weatherScreenNotifierProvider]];
  weatherScreenUiStateProvider[[weatherScreenUiStateProvider]];

```




6個目

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
  weatherScreenUiStateProvider ==> WeatherScreen;
  weatherScreenUiStateProvider -.-> WeatherScreen;
  weatherScreenUiStateProvider[[weatherScreenUiStateProvider]];
```


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