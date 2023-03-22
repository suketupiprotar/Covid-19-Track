import 'package:covid19tracker/view/world_states.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  String image;
  String name;
  int totalCases, totalDeaths, totalRecovered, active, critical, test;
  // DetailScreen({Key? key,required this.name}) : super(key: key);
  DetailScreen({
    required this.image,
    required this.name,
    required this.totalCases,
    required this.totalDeaths,
    required this.totalRecovered,
    required this.active,
    required this.critical,
    required this.test,
  });
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.067),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
                      ReusableRow(
                        title: 'Total Cases',
                        value: widget.totalCases.toString(),
                      ),
                      ReusableRow(
                        title: 'Total Deaths',
                        value: widget.totalDeaths.toString(),
                      ),
                      ReusableRow(
                        title: 'Total Recovered Cases',
                        value: widget.totalRecovered.toString(),
                      ),
                      ReusableRow(
                        title: 'Active Cases',
                        value: widget.active.toString(),
                      ),
                      ReusableRow(
                        title: 'Critical Cases',
                        value: widget.critical.toString(),
                      ),
                      ReusableRow(
                        title: 'Test Cases',
                        value: widget.test.toString(),
                      ),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              )
            ],
          )
        ],
      ),
    );
  }
}
