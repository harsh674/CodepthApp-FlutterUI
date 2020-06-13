
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
 static var _formKey = GlobalKey<FormState>();
  List<Widget> containers = [
      Container(
        child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 10,

        
        itemBuilder: (BuildContext context, int index) {
        GestureDetector(
          onTap:(){
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Stack(
                      overflow: Overflow.visible,
                      children: <Widget>[
                        Positioned(
                          right: -40.0,
                          top: -40.0,
                          child: InkResponse(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: CircleAvatar(
                              child: Icon(Icons.close),
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ),
                        Form(
                          key: _formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextFormField(),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextFormField(),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RaisedButton(
                                  child: Text("Submitß"),
                                  onPressed: () {
                                    if (_formKey.currentState.validate()) {
                                      _formKey.currentState.save();
                                    }
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                });
          },
          
        );
          return makeCard;
        },
      ),
      ),

    Container(child:Stack(
      children: <Widget>[
        ClipPath(
          child: Container(color: Colors.white),
         
        ),
        Positioned(
            width: 350.0,
            
            child: Column(
              children: <Widget>[
                Container(width:100.0,
                height: 100.0),
                Container(
                  margin: EdgeInsets.only(left: 80),
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://scontent.fbho4-1.fna.fbcdn.net/v/t1.0-9/fr/cp0/e15/q65/91717627_1387675891417042_5881608238973059072_o.jpg?_nc_cat=111&_nc_sid=85a577&efg=eyJpIjoiYiJ9&_nc_ohc=KgBXKSWJDgUAX9ej0d5&_nc_ht=scontent.fbho4-1.fna&_nc_tp=14&oh=912bee5308084e90d190e4abd5736902&oe=5F09A1DB'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(75.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 7.0, color: Colors.black)
                        ])),
                Container(
                  margin:EdgeInsets.only(left:80.0,top:80.0),
                  child:Text(
                  'Harsh Patel',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Alesandra'),
                ),),
                Container(
                   margin:EdgeInsets.only(left:80.0,top:100.0),
                  child:
                
                Text(
                  ' 4 Products Bought Till Now',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      ),
                ),),
                SizedBox(height: 25.0),
                 Container(
                  margin: EdgeInsets.only(left:80.0),
                    height: 30.0,
                    width: 95.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.greenAccent,
                      color: Colors.green,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'Edit Name',
                            style: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    )),
                    SizedBox(height: 25.0),
                Container(
                  margin: EdgeInsets.only(left:80.0),
                    height: 30.0,
                    width: 95.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.redAccent,
                      color: Colors.red,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'Log out',
                            style: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    ))
              ],
            ))
      ],
    )
    ),
   Container(
     child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return makeCard;
        }
    ),
   )
    
  ];
  @override
  Widget build(BuildContext context) {
     
   return DefaultTabController(
     length: 3,
     child:
     Scaffold(
       
      appBar: AppBar(title: Text('Codepth'),
      backgroundColor: Colors.red,
      leading: GestureDetector(
      onTap: () { /* Write listener code here */ },
      child: Icon(
        Icons.menu,  // add custom icons also
      ),
  ),
  actions: <Widget>[
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
          Icons.search,
          size: 26.0,
        ),
      )
    ),
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
            Icons.more_vert
        ),
        )
        ),
  ],
      
      
      bottom:TabBar(tabs: <Widget>[
          Tab(
            text: 'Products'
          ),
          Tab(
            text:'Profile'
          ),
          Tab(
            text:'Wishlist',
          )
      ]
      )
    ),
    body:TabBarView(children: containers),
         
      
    ),
  );
  }
}
  
    final makeCard = Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: makeListTile,
      ),
    );
    final makeListTile =
    
     ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: EdgeInsets.only(right: 12.0),
          decoration: new BoxDecoration(
              border: new Border(
                  right: new BorderSide(width: 1.0, color: Colors.white24))),
          child: Icon(Icons.games, color: Colors.white),
           
        ),
        title: Text(
          "Play Station 4",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

        subtitle: Row(
          children: <Widget>[
            Icon(Icons.attach_money, color: Colors.greenAccent),
            Text(" Price :- 19999", style: TextStyle(color: Colors.white))
          ],
        ),
        trailing:
            Icon(Icons.add, color: Colors.blueAccent, size: 30.0));
