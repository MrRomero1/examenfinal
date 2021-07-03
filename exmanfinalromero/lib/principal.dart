

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final t=MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Superior(),
                  Inicial(),
                  SizedBox(height: t.height*0.02,),
                  SubTitulo(),
                 
                ],
              ),
            ),
             CsP()
          ],
        ),
        
      ),
        bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.green,
          textTheme: Theme.of(context).textTheme.copyWith(
            caption: TextStyle(color: Colors.green)
          )
        ),
        child: BottomNavigationBar(
          items: [
            
               BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.film, color: Colors.indigoAccent[700],size:20 ), label: '', ),
                BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.compactDisc, color: Colors.black54,size:20 ), label: '', ),

               BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.search, color: Colors.black54,size:20 ), label: '', ),

               BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.stream, color: Colors.black54,size:20 ), label: '', ),

          
          ] ,
          ),
      )
       
      
    );
  }
}


class ContentAll extends StatelessWidget {
 
 ContentAll(
   this._nombre,
   this._image,
   this._snombre,
   this._time,
   this._s,
 );
final String _nombre;
final String  _image; 
final String  _snombre;
 final String  _time;
 final String _s;
  @override
  Widget build(BuildContext context) {
    final t=MediaQuery.of(context).size;
    return Container(
      height: t.height*0.13,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
  
               color: Colors.white
              ),
              child: Row(
                 children: [
                    Container(
                        margin: EdgeInsets.only(right: t.width*0.03),
                      width: t.width*0.2,
                      height: t.height*0.4,
                     decoration: BoxDecoration(
               
              
               image: DecorationImage(
                    image: AssetImage(
                      _image,
                    ),
                    fit: BoxFit.cover,
                  ),
              ),
              child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top:t.height*0.06),
                width: t.width*0.2 ,
               height: t.height*0.4,
               
               decoration: new BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent,Colors.black],
            stops: [0.1,0.6],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter
          )
        ),
              ),
              Container(
                margin: EdgeInsets.only(top:t.height*0.06, left: t.width*0.01),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  
                 children: [
                    Icon(Icons.star,size: t.height*0.03, color: Colors.yellow, ),
                    Text(_s, style: TextStyle(color: Colors.white, fontSize: t.height*0.02,fontWeight: FontWeight.bold),)
                 ],
                ),
              ),
               
              
            ],
          ),

                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(_nombre,style: TextStyle(fontSize:  t.height*0.025, fontWeight: FontWeight.bold)),
                        Text(_snombre,style: TextStyle(fontSize:  t.height*0.02, fontWeight: FontWeight.bold, color: Colors.grey[400])),
                          Text(_time,style: TextStyle(fontSize:  t.height*0.02, fontWeight: FontWeight.bold, color: Colors.grey[400])),
                      ],
                    )
                 ], 
              ),
     
    );
  }





}

class CsP extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
     final t=MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        color: Colors.grey[200],
      
          child: Expanded(
                    child: SingleChildScrollView(
              
              child: Column(
                
                children: [
                    SizedBox(height: t.height*0.01,),
                ContentAll('Abominable','images/heroes.jpg',"Tito Predovic • 2019","110 min","4.5"),
                SizedBox(height: t.height*0.01,),
                ContentAll('Fast and Furios','images/fast.jpg',"Tito Predovic • 2020","110 min","3.1"),
                  SizedBox(height: t.height*0.01,),
                ContentAll('SAW II','images/saw.jpg',"Tito Predovic • 2010","110 min","3.5"),
                  SizedBox(height: t.height*0.01,),
                ContentAll('Amercian Horror story','images/descarga.jfif',"Tito Predovic • 2010","110 min","5.5"),
                  SizedBox(height: t.height*0.01,),
                ContentAll('Vico C','images/vico.jfif',"Tito Predovic • 2010","110 min","2.5"),

              ],),
            ),
          )
        
      ),
    );
  }
}

class SubTitulo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final t=MediaQuery.of(context).size;
    return Container(
     child: Text("In this week", style: TextStyle(fontSize: t.height*0.03, fontWeight: FontWeight.bold, color: Colors.black54),),
    );
  }
}

class ContentF extends StatelessWidget {
ContentF(
this._i,
this._n,
this._a,
this._s
);
final String _i;
final String _n;
final String _a;
final String _s;
  @override
  Widget build(BuildContext context) {
    final t=MediaQuery.of(context).size;
    return Column(
      children: [
         Container(

        width: t.width*0.8 ,
      height: t.height*0.2,
     
      decoration: BoxDecoration(
               
               borderRadius: BorderRadius.circular(20),
              
               image: DecorationImage(
                    image: AssetImage(
                      _i,
                    ),
                    fit: BoxFit.cover,
                  ),
              ),
              
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top:t.height*0.15),
                width: t.width*0.8 ,
               height: t.height*0.05,
               
               decoration: new BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent,Colors.black],
            stops: [0.1,0.6],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter
          )
        ),
              ),
              Container(
                margin: EdgeInsets.only(top:t.height*0.15, left: t.width*0.01),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                    Icon(Icons.star,size: t.height*0.04, color: Colors.yellow, ),
                    Text(_s, style: TextStyle(color: Colors.white, fontSize: t.height*0.025,fontWeight: FontWeight.bold),)
                 ],
                ),
              ),
               
              
            ],
          ),

        ),
       Container(
          width: t.width*0.8 ,
      height: t.height*0.1,
      
      padding: EdgeInsets.only(top:t.height*0.02),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           
           children: [
             Text(_n, style: TextStyle(color: Colors.black54, fontSize: t.height*0.03,fontWeight: FontWeight.bold),),
             Text(_a, style: TextStyle(color: Colors.grey[400], fontSize: t.height*0.02,fontWeight: FontWeight.bold),)
           ],
         ),
        )

      ],
    );
  }
}


class Inicial extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    final t=MediaQuery.of(context).size;
    return Container(
        
          height: t.height*0.3,
          width: double.infinity,
          child:
          PageView(
           pageSnapping: false,
            controller: PageController(
              viewportFraction: 0.9
            ),
            children: [
             ContentF ( 'images/heroes.jpg','Big Hero 6', '2014','5.5'),
             ContentF ( 'images/frozen.jpg','Frozen 2', '2014','3.5'),
             
              

            ],
          )

    );
  }
}

class Superior extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final t=MediaQuery.of(context).size;
    return Container(
      child: Text("Premieres", style: TextStyle(fontSize: t.height*0.03, fontWeight: FontWeight.bold, color: Colors.black54),),
    );
  }
}
