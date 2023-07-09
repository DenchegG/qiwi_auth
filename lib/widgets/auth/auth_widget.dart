// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Вход',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.close_sharp,
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 75),
            _FormWidget(),
            SizedBox(height: 50),
            _ButtonsWidget(),
          ],
        ),
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({super.key});

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(
            prefixIcon: Align(
              alignment: Alignment.bottomLeft,
              child: Icon(Icons.flag),
            ),
          ),
        ),
        SizedBox(height: 50),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Пароль',
          ),
        ),
      ],
    );
  }
}

class _ButtonsWidget extends StatefulWidget {
  const _ButtonsWidget({super.key});

  @override
  State<_ButtonsWidget> createState() => __ButtonsWidgetState();
}

class __ButtonsWidgetState extends State<_ButtonsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TODO(Denis): Размеры чего-либо лучше не задавать на жесткую
        //* Если нужен отступ от краев, то его через паддинг можно задать
        Container(
          width: 312,
          child: OutlinedButton(
            onPressed: () {},
            // TODO(Denis): стили и цвета надо выносить в отдельный класс
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  // TODO(Denis): цвета лучше писать в hex формате
                  //* И их тоже выносить в отлельный класс с темой
                  const Color.fromRGBO(255, 140, 0, 1),
                ),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                side: MaterialStateProperty.all(
                  const BorderSide(
                    color: Color.fromRGBO(255, 140, 0, 1),
                  ),
                )),
            child: const Text(
              'Войти',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: 312,
          child: OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.black),
              side: MaterialStateProperty.all(
                const BorderSide(color: Colors.grey),
              ),
            ),
            child: const Text(
              'Создать кошелек',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const SizedBox(height: 90),
        const Text(
          'Вход через соцсеть',
          // TODO(Denis): стили текста тоже надо выносить, потом их проще переиспользовать
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO(Denis): повторяющиеся виджеты нужно выносить в отдельный и переиспользовать
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(12.0)),
                shape: MaterialStateProperty.all(
                  const CircleBorder(),
                ),
              ),
              child: const Icon(
                Icons.facebook,
                color: Colors.grey,
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(12.0)),
                shape: MaterialStateProperty.all(
                  const CircleBorder(),
                ),
              ),
              child: const Icon(
                Icons.mail,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
