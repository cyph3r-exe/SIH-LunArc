import 'package:flutter/material.dart';

class StartContactCard extends StatelessWidget {
  const StartContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ContactMeCard(),
    );
  }
}

class ContactMeCard extends StatefulWidget {
  const ContactMeCard({Key? key}) : super(key: key);

  @override
  _ContactMeCardState createState() => _ContactMeCardState();
}

class _ContactMeCardState extends State<ContactMeCard> {
  bool _isEmailExpanded = false;
  bool _isPhoneExpanded = false;
  bool _isAddressExpanded = false;

  void _toggleEmailExpansion() {
    setState(() {
      _isEmailExpanded = !_isEmailExpanded;
    });
  }

  void _togglePhoneExpansion() {
    setState(() {
      _isPhoneExpanded = !_isPhoneExpanded;
    });
  }

  void _toggleAddressExpansion() {
    setState(() {
      _isAddressExpanded = !_isAddressExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Contact Me',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16.0),
          ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              if (index == 0) {
                _toggleEmailExpansion();
              } else if (index == 1) {
                _togglePhoneExpansion();
              } else {
                _toggleAddressExpansion();
              }
            },
            children: [
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text(
                      'Email',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      isExpanded ? Icons.expand_less : Icons.expand_more,
                      color: Colors.white,
                    ),
                  );
                },
                body: ListTile(
                  title: Text(
                    'your_email@example.com',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                isExpanded: _isEmailExpanded,
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text(
                      'Phone',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      isExpanded ? Icons.expand_less : Icons.expand_more,
                      color: Colors.white,
                    ),
                  );
                },
                body: ListTile(
                  title: Text(
                    '+1234567890',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                isExpanded: _isPhoneExpanded,
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text(
                      'Address',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      isExpanded ? Icons.expand_less : Icons.expand_more,
                      color: Colors.white,
                    ),
                  );
                },
                body: ListTile(
                  title: Text(
                    'Your Address',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                isExpanded: _isAddressExpanded,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
