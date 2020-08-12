import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import 'home_controller.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<HomeController>(HomeController());
  runApp(MyApp());
}

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
            child: Text(
              'minimum 3 tag to continue',
              style: TextStyle(color: Colors.grey[500]),
            ),
          ),
          _selectedsOptionsList(),
          _optionsList(),
        ],
      ),
    );
  }

  Widget _floatActionButton() {
    final controller = GetIt.I.get<HomeController>();
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Observer(builder: (_) {
        return AnimatedContainer(
          height: 60,
          duration: Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: controller.selectedOptions.length < 3 ? Colors.grey : Colors.orange,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
              child: Text(
            controller.selectedOptions.length < 3 ? '${controller.selectedOptions.length} Selected' : 'Save',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          )),
        );
      }),
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

  Widget _selectedsOptionsList() {
    final controller = GetIt.I.get<HomeController>();
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
      child: Observer(builder: (_) {
        return Wrap(
          spacing: 10,
          runSpacing: 10,
          children: <Widget>[
            ...controller.selectedOptions.map((option) {
              return GestureDetector(
                onTap: () {
                  option.selectOption();
                  print(option.selected);
                },
                child: AnimatedContainer(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: option.selected ? Colors.grey[500] : Colors.orange,
                      borderRadius: BorderRadius.circular(20)),
                  duration: Duration(milliseconds: 300),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          option.optionName,
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              );
            }).toList()
          ],
        );
      }),
    );
  }

  Widget _optionsList() {
    final controller = GetIt.I.get<HomeController>();
    return Observer(builder: (_) {
      return Container(
        color: Colors.grey[300],
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: <Widget>[
              ...controller.optionList.map((option) {
                return GestureDetector(
                  onTap: () {
                    option.selectOption();
                    print(option.selected);
                  },
                  child: AnimatedContainer(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: option.selected ? Colors.grey[500] : Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    duration: Duration(milliseconds: 300),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                option.optionName,
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList()
            ],
          ),
        ),
      );
    });
  }
}
