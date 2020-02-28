# weekly_timetable

Customizable Weekly TimeTable widget for flutter. Compatible with Android & iOS.

<img src="https://user-images.githubusercontent.com/1451365/70038838-47470500-15fc-11ea-8f9e-c7c7a222a24b.png" width="300px">
<img src="https://user-images.githubusercontent.com/1451365/70038836-47470500-15fc-11ea-86d9-2ad17b54589f.png" width="300px">
<img src="https://user-images.githubusercontent.com/1451365/70038833-47470500-15fc-11ea-91c6-fce5cc800045.png" width="300px">

## Getting Started

Add dependency to pubspec.yaml

```yaml
weekly_timetable:
```


## Usage

```dart
import 'package:flutter/material.dart';
import 'package:weekly_timetable/weekly_timetable.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter TimeTable Plugin Example'),
      debugShowCheckedModeBanner: false
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<int, List<int>> initialSchedule = {
    0: [],
    1: [],
    2: [],
    3: [],
    4: [],
    5: [],
    6: [],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: WeeklyTimeTable(initialSchedule),
    );
  }
}
```


Please see refer [example](./example).


## Options

WeeklyTimeTable has some options for Cell colors and initial schedule

| Type                | Name              | Description                                          |
|---------------------|-------------------|------------------------------------------------------|
| Color               | cellColor         | cell color when not selected (default: Colors.white) |
| Color               | cellSelectedColor | set color when cell selected (default: Colors.black) |
| Color               | borderColor       | grid line color (default: Colors.grey)               |
| ValueChanged<Map<int, List<int>>>        | onValueChanged    | trigger onValueChanged every user click.             |
  | String            | locale            | optional. `en` by default, `ko`, `de`, `ja`          |
| bool                | draggable         | TBD                                                  |
| Map<int, List<int>> | initialSchedule   | TBD                                                  |


## TBD

- [ ] Horizontal Drag for select
- [ ] Vertical Drag for select
- [ ] Support Time Cell disable
- [ ] Support Day disable

## Contributors

- [ChangJoo Park](https://github.com/changjoo-park)
