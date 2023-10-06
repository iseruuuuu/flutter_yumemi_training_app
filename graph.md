Analyzing /Users/ryutaroiseki/work/yumemi_training_app ...
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
