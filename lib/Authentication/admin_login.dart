import 'package:flutter/material.dart';
import 'package:flutterappp/Home/admin_homescreen.dart';


class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  String _userId;
  String _password;
  bool _obscuredText = true;

  _toggle(){
    setState(() {
      _obscuredText = !_obscuredText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Swatchta',
            style: Theme.of(context).textTheme.title,
        ),
      )
      ),
      body: Stack(
        children: <Widget>[
          _showId(),
          _showPassword(),
          _showButton()
        ],
      ),
    );
  }

  _showId() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 0.0),
      child: TextFormField(
        decoration: InputDecoration(
          //hintText: 'Enter Id',
          labelText: 'User Id',
            labelStyle: Theme.of(context).textTheme.display1,
         contentPadding: EdgeInsets.all(10.0),
          prefixIcon: Icon(Icons.account_box,
            color: Theme.of(context).iconTheme.color,)
        ),
        validator: (val) => val.isEmpty ? 'Enter id' : null,
        onChanged: (val) {
          setState(() => _userId = val);
        },
      ),
    );
  }

  _showPassword() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 180.0, 20.0, 10.0),
      child: TextFormField(
          obscureText: _obscuredText,
        //autofocus: false,
        decoration: InputDecoration(
          //hintText: 'Enter Password',
          labelText: 'Password',
            labelStyle: Theme.of(context).textTheme.display1,
          contentPadding: EdgeInsets.all(10.0),
          prefixIcon: Icon(Icons.lock,
            color: Theme.of(context).iconTheme.color,),
            suffixIcon: FlatButton(onPressed: _toggle, child:_obscuredText ? Icon(Icons.visibility) : Icon(Icons.visibility_off)),
        ),
        validator: (val) => val.length < 6 ? 'Password too short.' : null,
        onChanged: (val) {
          setState(() => _password = val);
        },
      ),
    );
  }

  _showButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 290.0, 20.0, 0.0),
      child: SizedBox(
        height: 45,
        width: 390,
        child: RaisedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute (
              builder: (context) {
                return HomeAdmin();
              }
            ));
          },
          color: Theme.of(context).buttonColor,
          elevation: 5.0,
          child: Text(
            'Login',
                style: Theme.of(context).textTheme.headline,
          ),
        ),
      ),
    );
  }
}
