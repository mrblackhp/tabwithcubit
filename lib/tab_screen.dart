import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  // This widget is the root of your application.
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('History'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue[300], Colors.blue],
            ),           
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                   print('Change Screen');
                },
                child: Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )),
        ],
      ),
      extendBodyBehindAppBar: false,
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
            tabs: [Tab(text: 'Get'), Tab(text: 'Take')],
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
          ),
          body: TabBarView(children: [
            Container(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  HistoryTransferItem(),
                  HistoryTransferItem(),
                  HistoryTransferItem(),
                  HistoryTransferItem(),
                  HistoryTransferItem(),
                  HistoryTransferItem(),
                  HistoryTransferItem(),
                ],
              ),
            ),
            Container(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  HistoryReceiveItem(),
                  HistoryReceiveItem(),
                  HistoryReceiveItem(),
                  HistoryReceiveItem(),
                  HistoryReceiveItem(),
                  HistoryReceiveItem(),
                  HistoryReceiveItem(),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class HistoryTransferItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8, left: 15, right: 15),
      child: GestureDetector(
        onTap: () {
          print('Change Screen');
        },
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: Colors.white,
          child: Container(
            height: 120,
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('ID'),
                      Text('Yensonfb'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Data'),
                      Text('20/06/2020'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Status'),
                      Text(
                        'Active',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HistoryReceiveItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8, left: 15, right: 15),
      child: GestureDetector(
        onTap: () {
         print('Change Screen');
        },
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: Colors.white,
          child: Container(
            height: 120,
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('ID'),
                      Text('Yensonfb'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Date'),
                      Text('20/06/2020'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Status'),
                      Text(
                        'Active',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
