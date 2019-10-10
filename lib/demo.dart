import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// 第一行
    Widget headerSection = new Container(
      child: new Image.network(
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564118078664&di=6f4c753d10e07014178287abeacc2319&imgtype=0&src=http%3A%2F%2Fzkres1.myzaker.com%2F201812%2F5c06b7c977ac643bd64b2ef5_raw.gif'),
    );

    /// 第二行
    @override
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Hello',
                    style: new TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ),
                new Text('World',
                    style: new TextStyle(
                      fontSize: 30,
                      color: Colors.purple,
                    )),
              ],
            ),
          ),
          new Icon(Icons.star, color: Colors.red),
          new Text('17')
        ],
      ),
    );

    /// 第三行
    Widget tipSection = new Container(
      child: new Container(
        padding: const EdgeInsets.all(15),
        child: new Text(
          'Container： Container 可让您创建矩形视觉元素。container 可以装饰为一个BoxDecoration, 如 background、一个边框、或者一个阴影。 Container 也可以具有边距（margins）、填充(padding)和应用于其大小的约束(constraints)。另外， Container可以使用矩阵在三维空间中对其进行变换。',
          style: new TextStyle(
            fontSize: 17,
            color: Colors.blue,
          ),
        ),
      ),
    );

    /// 整体布局
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Demo Page'),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            headerSection,
            titleSection,
            tipSection,
          ],
        ),
      ),
    );
  }
}
