import 'package:flutter/material.dart';
import 'package:themoviedb/theme/app_button_style.dart';
import 'package:themoviedb/widgets/auth/auth_model.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login to your account'),
        ),
        body: ListView(
          children: [
            _HeaderWidget(),
          ],
        ));
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
      fontSize: 16,
      color: Colors.black,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25),
          _FormWidget(),
          SizedBox(height: 25),
          Text(
            'In order to use the editing and rating capabilities of TMDB, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple.',
            style: textStyle,
          ),
          TextButton(
            onPressed: () {},
            child: Text('Register'),
            style: AppButtonStyle.linkButton,
          ),
          SizedBox(height: 25),
          Text('If you signed up but didn`t get your verification email',
              style: textStyle),
          TextButton(
            onPressed: () {},
            child: Text('Verify mail'),
            style: AppButtonStyle.linkButton,
          ),
        ],
      ),
    );
  }
}

class _FormWidget extends StatelessWidget {
  const _FormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = AuthProvider.read(context)?.model;
    final textStyle = const TextStyle(
      fontSize: 16,
      color: Color(0xFF212529),
    );
    final color = const Color(0xFF01B4E4);
    final textFieldDecoration = const InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      isCollapsed: true,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF01B4E4)),
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _ErrorMessageWidget(),
        Text('Username', style: textStyle),
        SizedBox(height: 5),
        TextField(
          decoration: textFieldDecoration,
          controller: model?.loginTextController,
        ),
        SizedBox(height: 20),
        Text('Password', style: textStyle),
        SizedBox(height: 5),
        TextField(
          decoration: textFieldDecoration,
          controller: model?.passwordTextController,
          obscureText: true,
        ),
        SizedBox(height: 30),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Login'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(color),
                textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                ),
              ),
            ),
            SizedBox(width: 10),
            TextButton(
              onPressed: () {},
              child: Text('Reset password'),
              style: AppButtonStyle.linkButton,
            ),
          ],
        )
      ],
    );
  }
}

class _ErrorMessageWidget extends StatelessWidget {
  const _ErrorMessageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final errorMessage = AuthProvider.watch(context)?.model.errorMessage;
    if (errorMessage == null) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(
        errorMessage,
        style: TextStyle(
          color: Colors.red,
          fontSize: 16,
        ),
      ),
    );
  }
}
