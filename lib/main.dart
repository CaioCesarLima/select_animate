import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Select some tags to edit',
          style: TextStyle(color: Colors.black38),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black38,
        ),
      ),
      body: _body(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _floatActionButton(),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _boxSearch(),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Text('minimum 3 tag to continue', style: TextStyle(color: Colors.grey[500]),),
          )
        ],
      ),
    );
  }

  Widget _floatActionButton() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: AnimatedContainer(
        height: 60,
        duration: Duration(milliseconds: 200),
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            'Save',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  Widget _boxSearch() {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 15, right: 15),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 15),
              child: Container(
                padding: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(color: Colors.grey[500], width: 2)),
                ),
                child: Icon(
                  Icons.search,
                  size: 35,
                  color: Colors.grey[500],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: TextField(
                  style: TextStyle(
                      color: Colors.grey[600],
                      decoration: TextDecoration.none,
                      fontSize: 20),
                  decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                      hintStyle:
                          TextStyle(color: Colors.grey[500], fontSize: 20)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
