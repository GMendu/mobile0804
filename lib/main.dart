import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Montserrat',
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontSize: 97, fontWeight: FontWeight.w300, letterSpacing: -1.5),
            headline2: TextStyle(
                fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
            headline3: TextStyle(fontSize: 48, fontWeight: FontWeight.w400),
            headline4: TextStyle(
                fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
            headline5: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            headline6: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
            subtitle1: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
            subtitle2: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
            bodyText1: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
            bodyText2: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
            button: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
            caption: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
            overline: TextStyle(
                fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
          )),
      home: const SafeArea(
        child: MyHomePage(title: 'Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    /*if (index == 0) {
      Navigator.pop(context);
    } else */
    if (index == 2) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const SafeArea(child: Pagina1(title: "Página 1"))));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                text: 'G',
                style: Theme.of(context).textTheme.headline4,
                children: const <TextSpan>[
                  TextSpan(
                      text: 'bonitão',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'Mendu'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.deselect),
            label: 'desativado',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'NADA',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigate_next_outlined),
            label: 'Próximo',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Pagina1 extends StatefulWidget {
  const Pagina1({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Pagina1> createState() => _Pagina1State();
}

class _Pagina1State extends State<Pagina1> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.pop(context);
    } else if (index == 2) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const SafeArea(child: Pagina2(title: "Página 2"))));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        toolbarHeight: 86,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/billie.jpg'), fit: BoxFit.fill),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Billie eilish",
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              "ótima cantora",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt orci id metus tincidunt lacinia. Quisque quis elementum sapien. Proin non posuere felis. Praesent sed condimentum lorem. Proin malesuada dignissim neque, quis porttitor sapien dictum quis. Donec sed tortor vitae augue molestie iaculis vel eu est. In mi eros, porta quis magna sit amet, ultrices vestibulum dolor. Aenean pretium dui ipsum, a vestibulum enim egestas ac. Sed eu urna ex. Aenean sed dignissim lectus. Integer sed elementum augue. Mauris sit amet consequat risus, id imperdiet purus. Ut dui sem, eleifend vel massa eu, auctor volutpat ipsum. Donec posuere, nibh eu venenatis elementum, ligula odio rutrum tellus, a porta elit mi a urna. Curabitur id elementum nisl. Integer sed ex magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam ultrices elit et lectus imperdiet, nec efficitur massa iaculis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam risus turpis, ultricies eu velit in, feugiat consectetur urna. Cras malesuada accumsan ligula, vel tempor turpis dignissim in. Duis eu ligula id enim bibendum pharetra. Aenean eros nunc, cursus id quam et, faucibus tincidunt dui. Maecenas malesuada ante erat, sed auctor nisl lobortis id. Duis orci elit, feugiat et magna sit amet, tempor congue mauris. Duis interdum rhoncus aliquam. Suspendisse finibus in elit ac tincidunt. Nunc enim tortor, auctor sit amet commodo lobortis, vestibulum a lectus. Nam in condimentum odio. In eu risus venenatis, tempus quam at, tincidunt ante. Cras fermentum augue quis tortor egestas efficitur. Nulla imperdiet ipsum dictum nisl volutpat tincidunt at a augue. Nam ut convallis orci, vel fermentum metus. Ut tincidunt laoreet tortor, eget maximus tellus maximus in. Suspendisse sem tellus, suscipit eget sollicitudin ac, dapibus in nisl. In vitae scelerisque neque. Praesent iaculis mauris sit amet venenatis dapibus. Donec id nibh diam. Aliquam lobortis volutpat nulla, vel imperdiet nunc finibus id. Integer gravida ornare dictum. In efficitur, libero ut fringilla auctor, felis tellus bibendum elit, quis pellentesque augue orci vel urna. Donec vulputate est est. Nam molestie id turpis nec suscipit. Mauris ullamcorper nunc sit amet commodo aliquam. Aliquam hendrerit consectetur libero, et scelerisque augue fringilla ac. In mattis mi at malesuada ullamcorper. Cras ac lectus id massa mattis tincidunt ac commodo lacus. Praesent in venenatis tortor. Proin eu turpis sit amet sapien laoreet porta. Sed vel turpis sollicitudin tortor porta laoreet in ut justo. Sed ullamcorper suscipit augue vel pharetra. Nulla posuere ullamcorper sapien, eu posuere lorem. Proin elit justo, lacinia tincidunt magna in, rhoncus ornare nibh. Donec aliquam erat sit amet leo hendrerit, malesuada hendrerit lorem eleifend. Curabitur vestibulum lacinia varius. Donec gravida ante ac purus lacinia, rutrum convallis erat eleifend. Praesent porta vehicula ipsum at lacinia. Ut eleifend elementum augue nec lobortis.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.navigate_before_outlined),
            label: 'Voltar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'NADA',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigate_next_outlined),
            label: 'Próximo',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Pagina2 extends StatefulWidget {
  const Pagina2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Pagina2> createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.pop(context);
    } else if (index == 2) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const SafeArea(child: Pagina3(title: "Página 3"))));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        toolbarHeight: 86,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/trem.jpg'), fit: BoxFit.fill),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Trem bonito",
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              "Bem tranquilo",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt orci id metus tincidunt lacinia. Quisque quis elementum sapien. Proin non posuere felis. Praesent sed condimentum lorem. Proin malesuada dignissim neque, quis porttitor sapien dictum quis. Donec sed tortor vitae augue molestie iaculis vel eu est. In mi eros, porta quis magna sit amet, ultrices vestibulum dolor. Aenean pretium dui ipsum, a vestibulum enim egestas ac. Sed eu urna ex. Aenean sed dignissim lectus. Integer sed elementum augue. Mauris sit amet consequat risus, id imperdiet purus. Ut dui sem, eleifend vel massa eu, auctor volutpat ipsum. Donec posuere, nibh eu venenatis elementum, ligula odio rutrum tellus, a porta elit mi a urna. Curabitur id elementum nisl. Integer sed ex magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam ultrices elit et lectus imperdiet, nec efficitur massa iaculis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam risus turpis, ultricies eu velit in, feugiat consectetur urna. Cras malesuada accumsan ligula, vel tempor turpis dignissim in. Duis eu ligula id enim bibendum pharetra. Aenean eros nunc, cursus id quam et, faucibus tincidunt dui. Maecenas malesuada ante erat, sed auctor nisl lobortis id. Duis orci elit, feugiat et magna sit amet, tempor congue mauris. Duis interdum rhoncus aliquam. Suspendisse finibus in elit ac tincidunt. Nunc enim tortor, auctor sit amet commodo lobortis, vestibulum a lectus. Nam in condimentum odio. In eu risus venenatis, tempus quam at, tincidunt ante. Cras fermentum augue quis tortor egestas efficitur. Nulla imperdiet ipsum dictum nisl volutpat tincidunt at a augue. Nam ut convallis orci, vel fermentum metus. Ut tincidunt laoreet tortor, eget maximus tellus maximus in. Suspendisse sem tellus, suscipit eget sollicitudin ac, dapibus in nisl. In vitae scelerisque neque. Praesent iaculis mauris sit amet venenatis dapibus. Donec id nibh diam. Aliquam lobortis volutpat nulla, vel imperdiet nunc finibus id. Integer gravida ornare dictum. In efficitur, libero ut fringilla auctor, felis tellus bibendum elit, quis pellentesque augue orci vel urna. Donec vulputate est est. Nam molestie id turpis nec suscipit. Mauris ullamcorper nunc sit amet commodo aliquam. Aliquam hendrerit consectetur libero, et scelerisque augue fringilla ac. In mattis mi at malesuada ullamcorper. Cras ac lectus id massa mattis tincidunt ac commodo lacus. Praesent in venenatis tortor. Proin eu turpis sit amet sapien laoreet porta. Sed vel turpis sollicitudin tortor porta laoreet in ut justo. Sed ullamcorper suscipit augue vel pharetra. Nulla posuere ullamcorper sapien, eu posuere lorem. Proin elit justo, lacinia tincidunt magna in, rhoncus ornare nibh. Donec aliquam erat sit amet leo hendrerit, malesuada hendrerit lorem eleifend. Curabitur vestibulum lacinia varius. Donec gravida ante ac purus lacinia, rutrum convallis erat eleifend. Praesent porta vehicula ipsum at lacinia. Ut eleifend elementum augue nec lobortis.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.navigate_before_outlined),
            label: 'Voltar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'NADA',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigate_next_outlined),
            label: 'Próximo',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Pagina3 extends StatefulWidget {
  const Pagina3({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Pagina3> createState() => _Pagina3State();
}

class _Pagina3State extends State<Pagina3> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.pop(context);
    } else if (index == 2) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const SafeArea(child: Pagina4(title: "Página 4"))));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        toolbarHeight: 86,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/corvette.jpg'), fit: BoxFit.fill),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Corvette",
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              "carro rapidão",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt orci id metus tincidunt lacinia. Quisque quis elementum sapien. Proin non posuere felis. Praesent sed condimentum lorem. Proin malesuada dignissim neque, quis porttitor sapien dictum quis. Donec sed tortor vitae augue molestie iaculis vel eu est. In mi eros, porta quis magna sit amet, ultrices vestibulum dolor. Aenean pretium dui ipsum, a vestibulum enim egestas ac. Sed eu urna ex. Aenean sed dignissim lectus. Integer sed elementum augue. Mauris sit amet consequat risus, id imperdiet purus. Ut dui sem, eleifend vel massa eu, auctor volutpat ipsum. Donec posuere, nibh eu venenatis elementum, ligula odio rutrum tellus, a porta elit mi a urna. Curabitur id elementum nisl. Integer sed ex magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam ultrices elit et lectus imperdiet, nec efficitur massa iaculis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam risus turpis, ultricies eu velit in, feugiat consectetur urna. Cras malesuada accumsan ligula, vel tempor turpis dignissim in. Duis eu ligula id enim bibendum pharetra. Aenean eros nunc, cursus id quam et, faucibus tincidunt dui. Maecenas malesuada ante erat, sed auctor nisl lobortis id. Duis orci elit, feugiat et magna sit amet, tempor congue mauris. Duis interdum rhoncus aliquam. Suspendisse finibus in elit ac tincidunt. Nunc enim tortor, auctor sit amet commodo lobortis, vestibulum a lectus. Nam in condimentum odio. In eu risus venenatis, tempus quam at, tincidunt ante. Cras fermentum augue quis tortor egestas efficitur. Nulla imperdiet ipsum dictum nisl volutpat tincidunt at a augue. Nam ut convallis orci, vel fermentum metus. Ut tincidunt laoreet tortor, eget maximus tellus maximus in. Suspendisse sem tellus, suscipit eget sollicitudin ac, dapibus in nisl. In vitae scelerisque neque. Praesent iaculis mauris sit amet venenatis dapibus. Donec id nibh diam. Aliquam lobortis volutpat nulla, vel imperdiet nunc finibus id. Integer gravida ornare dictum. In efficitur, libero ut fringilla auctor, felis tellus bibendum elit, quis pellentesque augue orci vel urna. Donec vulputate est est. Nam molestie id turpis nec suscipit. Mauris ullamcorper nunc sit amet commodo aliquam. Aliquam hendrerit consectetur libero, et scelerisque augue fringilla ac. In mattis mi at malesuada ullamcorper. Cras ac lectus id massa mattis tincidunt ac commodo lacus. Praesent in venenatis tortor. Proin eu turpis sit amet sapien laoreet porta. Sed vel turpis sollicitudin tortor porta laoreet in ut justo. Sed ullamcorper suscipit augue vel pharetra. Nulla posuere ullamcorper sapien, eu posuere lorem. Proin elit justo, lacinia tincidunt magna in, rhoncus ornare nibh. Donec aliquam erat sit amet leo hendrerit, malesuada hendrerit lorem eleifend. Curabitur vestibulum lacinia varius. Donec gravida ante ac purus lacinia, rutrum convallis erat eleifend. Praesent porta vehicula ipsum at lacinia. Ut eleifend elementum augue nec lobortis.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.navigate_before_outlined),
            label: 'Voltar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'NADA',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigate_next_outlined),
            label: 'Próximo',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Pagina4 extends StatefulWidget {
  const Pagina4({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Pagina4> createState() => _Pagina4State();
}

class _Pagina4State extends State<Pagina4> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.pop(context);
    } else if (index == 2) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const SafeArea(child: Pagina5(title: "Página 5"))));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        toolbarHeight: 86,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/oriental.jpg'), fit: BoxFit.fill),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "japinha",
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              "todo zen",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt orci id metus tincidunt lacinia. Quisque quis elementum sapien. Proin non posuere felis. Praesent sed condimentum lorem. Proin malesuada dignissim neque, quis porttitor sapien dictum quis. Donec sed tortor vitae augue molestie iaculis vel eu est. In mi eros, porta quis magna sit amet, ultrices vestibulum dolor. Aenean pretium dui ipsum, a vestibulum enim egestas ac. Sed eu urna ex. Aenean sed dignissim lectus. Integer sed elementum augue. Mauris sit amet consequat risus, id imperdiet purus. Ut dui sem, eleifend vel massa eu, auctor volutpat ipsum. Donec posuere, nibh eu venenatis elementum, ligula odio rutrum tellus, a porta elit mi a urna. Curabitur id elementum nisl. Integer sed ex magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam ultrices elit et lectus imperdiet, nec efficitur massa iaculis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam risus turpis, ultricies eu velit in, feugiat consectetur urna. Cras malesuada accumsan ligula, vel tempor turpis dignissim in. Duis eu ligula id enim bibendum pharetra. Aenean eros nunc, cursus id quam et, faucibus tincidunt dui. Maecenas malesuada ante erat, sed auctor nisl lobortis id. Duis orci elit, feugiat et magna sit amet, tempor congue mauris. Duis interdum rhoncus aliquam. Suspendisse finibus in elit ac tincidunt. Nunc enim tortor, auctor sit amet commodo lobortis, vestibulum a lectus. Nam in condimentum odio. In eu risus venenatis, tempus quam at, tincidunt ante. Cras fermentum augue quis tortor egestas efficitur. Nulla imperdiet ipsum dictum nisl volutpat tincidunt at a augue. Nam ut convallis orci, vel fermentum metus. Ut tincidunt laoreet tortor, eget maximus tellus maximus in. Suspendisse sem tellus, suscipit eget sollicitudin ac, dapibus in nisl. In vitae scelerisque neque. Praesent iaculis mauris sit amet venenatis dapibus. Donec id nibh diam. Aliquam lobortis volutpat nulla, vel imperdiet nunc finibus id. Integer gravida ornare dictum. In efficitur, libero ut fringilla auctor, felis tellus bibendum elit, quis pellentesque augue orci vel urna. Donec vulputate est est. Nam molestie id turpis nec suscipit. Mauris ullamcorper nunc sit amet commodo aliquam. Aliquam hendrerit consectetur libero, et scelerisque augue fringilla ac. In mattis mi at malesuada ullamcorper. Cras ac lectus id massa mattis tincidunt ac commodo lacus. Praesent in venenatis tortor. Proin eu turpis sit amet sapien laoreet porta. Sed vel turpis sollicitudin tortor porta laoreet in ut justo. Sed ullamcorper suscipit augue vel pharetra. Nulla posuere ullamcorper sapien, eu posuere lorem. Proin elit justo, lacinia tincidunt magna in, rhoncus ornare nibh. Donec aliquam erat sit amet leo hendrerit, malesuada hendrerit lorem eleifend. Curabitur vestibulum lacinia varius. Donec gravida ante ac purus lacinia, rutrum convallis erat eleifend. Praesent porta vehicula ipsum at lacinia. Ut eleifend elementum augue nec lobortis.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.navigate_before_outlined),
            label: 'Voltar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'NADA',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigate_next_outlined),
            label: 'Próximo',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Pagina5 extends StatefulWidget {
  const Pagina5({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Pagina5> createState() => _Pagina5State();
}

class _Pagina5State extends State<Pagina5> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.pop(context);
    }
    /* else if (index == 2) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const Pagina2(title: "Página 2")));
    }  */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        toolbarHeight: 86,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/kurzgesagt.jpg'), fit: BoxFit.fill),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Canal Kurzgesagt",
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              "conheça-os no youtube",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt orci id metus tincidunt lacinia. Quisque quis elementum sapien. Proin non posuere felis. Praesent sed condimentum lorem. Proin malesuada dignissim neque, quis porttitor sapien dictum quis. Donec sed tortor vitae augue molestie iaculis vel eu est. In mi eros, porta quis magna sit amet, ultrices vestibulum dolor. Aenean pretium dui ipsum, a vestibulum enim egestas ac. Sed eu urna ex. Aenean sed dignissim lectus. Integer sed elementum augue. Mauris sit amet consequat risus, id imperdiet purus. Ut dui sem, eleifend vel massa eu, auctor volutpat ipsum. Donec posuere, nibh eu venenatis elementum, ligula odio rutrum tellus, a porta elit mi a urna. Curabitur id elementum nisl. Integer sed ex magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam ultrices elit et lectus imperdiet, nec efficitur massa iaculis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam risus turpis, ultricies eu velit in, feugiat consectetur urna. Cras malesuada accumsan ligula, vel tempor turpis dignissim in. Duis eu ligula id enim bibendum pharetra. Aenean eros nunc, cursus id quam et, faucibus tincidunt dui. Maecenas malesuada ante erat, sed auctor nisl lobortis id. Duis orci elit, feugiat et magna sit amet, tempor congue mauris. Duis interdum rhoncus aliquam. Suspendisse finibus in elit ac tincidunt. Nunc enim tortor, auctor sit amet commodo lobortis, vestibulum a lectus. Nam in condimentum odio. In eu risus venenatis, tempus quam at, tincidunt ante. Cras fermentum augue quis tortor egestas efficitur. Nulla imperdiet ipsum dictum nisl volutpat tincidunt at a augue. Nam ut convallis orci, vel fermentum metus. Ut tincidunt laoreet tortor, eget maximus tellus maximus in. Suspendisse sem tellus, suscipit eget sollicitudin ac, dapibus in nisl. In vitae scelerisque neque. Praesent iaculis mauris sit amet venenatis dapibus. Donec id nibh diam. Aliquam lobortis volutpat nulla, vel imperdiet nunc finibus id. Integer gravida ornare dictum. In efficitur, libero ut fringilla auctor, felis tellus bibendum elit, quis pellentesque augue orci vel urna. Donec vulputate est est. Nam molestie id turpis nec suscipit. Mauris ullamcorper nunc sit amet commodo aliquam. Aliquam hendrerit consectetur libero, et scelerisque augue fringilla ac. In mattis mi at malesuada ullamcorper. Cras ac lectus id massa mattis tincidunt ac commodo lacus. Praesent in venenatis tortor. Proin eu turpis sit amet sapien laoreet porta. Sed vel turpis sollicitudin tortor porta laoreet in ut justo. Sed ullamcorper suscipit augue vel pharetra. Nulla posuere ullamcorper sapien, eu posuere lorem. Proin elit justo, lacinia tincidunt magna in, rhoncus ornare nibh. Donec aliquam erat sit amet leo hendrerit, malesuada hendrerit lorem eleifend. Curabitur vestibulum lacinia varius. Donec gravida ante ac purus lacinia, rutrum convallis erat eleifend. Praesent porta vehicula ipsum at lacinia. Ut eleifend elementum augue nec lobortis.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.navigate_before_outlined),
            label: 'Voltar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'NADA',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.deselect,
              ),
              label: 'desativado'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
