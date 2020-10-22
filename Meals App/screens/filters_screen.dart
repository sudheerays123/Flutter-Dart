import 'package:MealsAPP/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  Widget _buildSwitchTile(
    String title,
    String description,
    bool boolean,
    Function updateValue,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      value: boolean,
      onChanged: updateValue,
      subtitle: Text(description),
    );
  }

  bool _gluteenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your Meals here',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchTile(
                  'Gluteen Free ',
                  'Only Include Gluteen Free meals',
                  _gluteenFree,
                  (newValue) {
                    setState(() {
                      _gluteenFree = newValue;
                    });
                  },
                ),
                _buildSwitchTile(
                  'Lactose Free',
                  'Only Include Lactose Free meals',
                  _lactoseFree,
                  (newValue) {
                    setState(() {
                      _lactoseFree = newValue;
                    });
                  },
                ),
                _buildSwitchTile(
                  'Vegetarian',
                  'Only Include Vegetarain meals',
                  _vegetarian,
                  (newValue) {
                    setState(() {
                      _vegetarian = newValue;
                    });
                  },
                ),
                _buildSwitchTile(
                  'Vegan',
                  'Only Include Vegan meals',
                  _vegan,
                  (newValue) {
                    setState(() {
                      _vegan = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
