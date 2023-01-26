import 'package:flutter/material.dart';

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppBarExample(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coulnser outreach'),
        actions: <Widget>[
          
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Our story',
            
          
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                   
                      title: const Text('Our story'),
                    ),
                    body: const Center(
                      child: Text(
                        ' I was inspired to make this platform during a pretty hard time in my life. Me and my wife were\n'
                        'trying to get pregant with our first child. After 6 months of unprotected sex and no luck we decied\n'
                        'it was time to get checked out. So we went to a obgyn to get my wife checked out. The obgyn did not \n'
                        'see anything out of the ordinary. He ask if she had regualer periods she then let him know that it was\n'
                        'regualer. He gave her meds that made her have regualer cycle, I thought we were in the allclear. We then\n '
                        'had unprotected for a other six months. No luck we went back to the obgyn. He then had my wife do a\n '
                        'ultrasound evrything looked good. He then said what I was dreading it was time to test me. I was fine when\n'
                        'The problem was here because I could control how I reacted but could not control how she reacted if it was\n'
                        'my issue.\n '
                        ' I did a sperm test and my counts was low. It was a crushing blow and I just had a fear of my wife leaving me.\n'
                        'My wife told me that we would make it through it and we were a team. These kind words helped my fear go down but\n'
                        'in the back of my mind I was still afaird of her leaving me. By this point my wife was trying to be strong but there\n'
                        'were nights she was so depressed, even to the point of crying. In my mind I would tell myself that every tear she shead\n'
                        'was my fault that I was hurting my wife.\n'
                        ' I then went into a dark place. I started to become really withdrawn from my wife. I did not want her to know how much\n'
                        'I was struggling, I thought I needed to be strong for her. After a couple months I started to have a thought if I died\n'
                        'she could marry someone who could give her children. That thought then turned into I wish I would die so she could marry\n'
                        'someone else. At this point I woke up every morning I woke up racked with guilt she was married to me. The thought of ended\n'
                        'my life did cross my mind. I was to scared to but was hopping I would go to sleep and not wake up. My wife notice the change\n'
                        'in me and conforted me. She demanded I told her what the heck was going on. I broke and told her everything. I then saw a\n'
                        'look on her face that periced me straight to the core, pure fear.  Since then I have got the support I needed from family\n'
                        'to help me get out of that deep depression. This made me want every body to get the mental health that they need regradless\n'
                        'if they do not have the money to pay for mental health services.',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'This is the home page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}


