import 'package:flutter/material.dart';
import 'package:flutterenvpratice200417/env/env_helper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String apiUrl;
  String appName;

  @override
  void initState() {
    apiUrl = EnvHelper.apiUrl ?? '';
    appName = EnvHelper.appName ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          _contentBlocWidget,
        ],
      ),
    );
  }

  Widget get _contentBlocWidget => Expanded(
        child: CustomScrollView(
          slivers: <Widget>[
            _buildConfigDisplayArea(),
            _buildUpdateFormWidget(),
          ],
        ),
      );

  Widget _buildConfigDisplayArea() {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('API Url: $apiUrl'),
          Text('APP Name: $appName'),
        ],
      ),
    );
  }

  Widget _buildUpdateFormWidget() {
    return SliverToBoxAdapter(
      child: RaisedButton(
          onPressed: _updateAppNameNReload,
          child: Text('Update App Name to "Updated Ha Ha"')),
    );
  }

  void _updateAppNameNReload() {
    EnvHelper.updateAppName('Updated Ha Ha');
    setState(() {
      appName = EnvHelper.appName;
    });
  }
}
