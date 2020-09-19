import 'package:flutter/material.dart';
import 'package:luchapedia/all_fighters.dart';

class BioFighter extends StatelessWidget {
  
String urlKemonito="https://imagenes.milenio.com/bphSgOtpXqNAf5Zn_9i1QK3v2fs=/958x596/smart/https://www.milenio.com/uploads/media/2020/03/24/kemonito-santiago-chaparro_0_9_958_596.jpeg";
String bioK='KeMonito nacio el 3 de julio de 1967, es un icono de la lucha libre profesional mexicano, como actualmente trabaja para la empresa Consejo Mundial de Lucha Libre (CMLL). ';
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if (constraints.maxWidth < 811){
          Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.directions_walk, size: 50),
            title: Text('Luchapedia',
            style: TextStyle(
                fontSize: 40, color: Colors.black
            ),
            ),
            backgroundColor: Colors.redAccent[400],
          ),

          body: Stack(
            children:[
              Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment(0.0, 0.0),
              end: Alignment(0.6, 0.99),
              colors:[
               const Color(0xFFEF5350), 
               const Color(0xFFD50000),
              //const Color(0xFFFFFFEE), 
              //const Color(0xFFD50000),
              ]
              ),

            ),
            ),
              Column(
                
                children:[
                  Expanded(child: Container()), //nos ayuda a repartir los widgets en el espacio de la pantalla
                  luchadorBio(),
                  Expanded(child: Container()),
                  Text('Mas Luchadores',
                  style: TextStyle(
                    fontSize: 29,
                    color: Color.fromRGBO(220, 229, 227, 0.9) //rojo, verde, azul y su opacidad 1 opacidad y 0 si es trasnparente
                  ),
                  ), 
                  Expanded(child: Container()),
                  listaLuchadores(context),
                  Expanded(child: Container()),
                ],

              )
            ]
          ),

    );
    //

        }else{
          return Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.directions_walk, size: 50),
            title: Text('Luchapedia Web',
            style: TextStyle(
                fontSize: 40, color: Colors.black
            ),
            ),
            backgroundColor: Colors.redAccent[400],
          ),

          body: Stack(
            children:[
              Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment(0.0, 0.0),
              end: Alignment(0.6, 0.99),
              colors:[
               const Color(0xFFEF5350), 
               const Color(0xFFD50000),
              //const Color(0xFFFFFFEE), 
              //const Color(0xFFD50000),
              ]
              ),

            ),
            ),
              Column(
                
                children:[
                  Expanded(child: Container()), //nos ayuda a repartir los widgets en el espacio de la pantalla
                  luchadorBio(),
                  /*Expanded(child: Container()),
                  Text('Mas Luchadores',
                  style: TextStyle(
                    fontSize: 29,
                    color: Color.fromRGBO(220, 229, 227, 0.9) //rojo, verde, azul y su opacidad 1 opacidad y 0 si es trasnparente
                  ),
                  ), */
                  Expanded(child: Container()),
                  //listaLuchadores(context),
                  //Expanded(child: Container()),
                ],

              )
            ]
          ),

    );
    //
        }

      }
      
    );
  }//build

  Widget luchadorBio(){
    return Center(
      child: Container(
        height: 385,
        width: 350,
       /* decoration: BoxDecoration(
          color: Colors.pinkAccent[100],
          borderRadius: BorderRadius.circular(40)
        ),*/
        child: Stack(
          children: [
            Positioned(
              top: 5,
              child: ClipRRect(
                borderRadius:  BorderRadius.circular(20.0),
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/Gifs/loading.gif',
                   image: urlKemonito,
                   width: 350,
                   ),
              ),
            ),
            /*Image(
              width: 350,
              image:NetworkImage(urlKemonito),
              ),*/
            Positioned(
              top: 155,
              left: 10,
                      child: Container(
                  width: 330,
                  height: 210,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent[700],
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: 
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start , //posicion horizontal
                    mainAxisAlignment: MainAxisAlignment.spaceAround,//el como estaran lo elementos dentro de la columna, con espacio entre ellos
                    children:
                    [
                      Text ('Kemonito:', style: TextStyle(
                        fontSize: 28, color: Colors.indigo[200]
                      ),),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(bioK,
                         style: 
                        TextStyle(
                          fontSize: 16, color: Colors.indigo[50]
                        ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,//centra los botones
                        children: [
                          FlatButton(
                          color: Colors.teal[400],  
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                          ),
                          onPressed: (){},
                          child: Text('Ver mas', style: TextStyle(fontSize: 18),),
                          
                          ),

                          SizedBox(width:30), //Espaciado entre botones se usa en buenas practicas
                          FlatButton(
                            color: Colors.pink[400],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                            ),
                            onPressed: (){},
                            child: Row(
                                children: [
                                  Text('Me gusta'),
                                  Icon(Icons.favorite_border)

                                ]
                            ),
                            
                            )
                
                        ],
                      )
                    ],
                  ),
                ),
            ),

          ],
        ),
      ),
    );
  }//LuchadorBio

  Widget listaLuchadores(BuildContext context){
    return  Center(
      child: Container(
        height:120,
        width: 380,
       // decoration: BoxDecoration(
       // color: Colors.purple,
       // borderRadius: BorderRadius.circular(10)
        //),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [

            Container(
              margin: EdgeInsets.all(5), //de marge completo 
              width: 100,
              decoration:BoxDecoration(
                //color: Colors.purple,
                image: DecorationImage(
                image:AssetImage('assets/Luchadores/elSanto.jpg'),
                fit: BoxFit.cover //hace que ocupe todo el temaño disponible, aunque se desborde la imagen  
            ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                margin: EdgeInsets.only(top:85, left: 2 ),
                child: Text(
                  'El santo',
                   style:TextStyle(
                     fontSize: 18,
                   color: Colors.white,
                   fontWeight: FontWeight.bold
                   ),
                ),
              ),
            ),
    //container Santo

            Container(
              margin: EdgeInsets.all(5), //de marge completo 
              width: 100,
              decoration:BoxDecoration(
                //color: Colors.purple,
                image: DecorationImage(
                image:AssetImage('assets/Luchadores/Angelica.png'),
                fit: BoxFit.cover //hace que ocupe todo el temaño disponible, aunque se desborde la imagen  
            ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                margin: EdgeInsets.only(top:85, left: 2 ),
                child: Text(
                  'Angelica',
                   style:TextStyle(
                     fontSize: 18,
                   color: Colors.green[50],
                   fontWeight: FontWeight.bold
                   ),
                ),
              ),
            ),
    //container Algelica


            Container(
              margin: EdgeInsets.all(5), //de marge completo 
              width: 100,
              decoration:BoxDecoration(
                //color: Colors.purple,
                image: DecorationImage(
                image:AssetImage('assets/Luchadores/blueDemon.jpg'),
                fit: BoxFit.cover //hace que ocupe todo el temaño disponible, aunque se desborde la imagen  
            ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                margin: EdgeInsets.only(top:85, left: 2 ),
                child: Text(
                  'BlueDemon',
                   style:TextStyle(
                     fontSize: 18,
                   color: Colors.green[50],
                   fontWeight: FontWeight.bold
                   ),
                ),
              ),
            ),
            //container BlueDemon

            Container(
              margin: EdgeInsets.all(5), //de marge completo 
              width: 100,
              decoration:BoxDecoration(
                //color: Colors.purple,
                image: DecorationImage(
                image:AssetImage('assets/Luchadores/ladyShani.png'),
                fit: BoxFit.cover //hace que ocupe todo el temaño disponible, aunque se desborde la imagen  
            ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                margin: EdgeInsets.only(top:85, left: 2 ),
                child: Text(
                  'LadyShani',
                   style:TextStyle(
                     fontSize: 18,
                   color: Colors.white,
                   fontWeight: FontWeight.bold
                   ),
                ),
              ),
            ),
            //container ladyShani
          
            Container(
              margin: EdgeInsets.all(5), //de marge completo 
              width: 100,
              decoration:BoxDecoration(
                //color: Colors.purple,
                image: DecorationImage(
                image:AssetImage('assets/Luchadores/historico.jpg'),
                fit: BoxFit.cover //hace que ocupe todo el temaño disponible, aunque se desborde la imagen  
            ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                margin: EdgeInsets.only(top:85, left: 2 ),
                child: Text(
                  'Historico',
                   style:TextStyle(
                     fontSize: 18,
                   color: Colors.white,
                   fontWeight: FontWeight.bold
                   ),
                ),
              ),
            ),
            //container historico
          
            Container(
              margin: EdgeInsets.all(5), //de marge completo 
              width: 100,
              decoration:BoxDecoration(
                //color: Colors.purple,
                image: DecorationImage(
                image:AssetImage('assets/Luchadores/diosaQuetzal.png'),
                fit: BoxFit.cover //hace que ocupe todo el temaño disponible, aunque se desborde la imagen  
            ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                margin: EdgeInsets.only(top:65, left: 2 ),
                child: Text(
                  'Diosa Quetzal',
                   style:TextStyle(
                     fontSize: 18,
                   color: Colors.white,
                   fontWeight: FontWeight.bold
                   ),
                ),
              ),
            ),
            //container diosaQuetzal

            Container(
              margin: EdgeInsets.all(5), //de marge completo 
              width: 100,
              decoration:BoxDecoration(
                //color: Colors.purple,
                image: DecorationImage(
                image:AssetImage('assets/Luchadores/frijolito.jpg'),
                fit: BoxFit.cover //hace que ocupe todo el temaño disponible, aunque se desborde la imagen  
            ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                margin: EdgeInsets.only(top:85, left: 2 ),
                child: Text(
                  'Frijolito',
                   style:TextStyle(
                     fontSize: 18,
                   color: Colors.white,
                   fontWeight: FontWeight.bold
                   ),
                ),
              ),
            ),
            //container Frijolito


            Container(
              margin: EdgeInsets.all(5), //de marge completo 
              width: 100,
              decoration:BoxDecoration(
                //color: Colors.purple,
                image: DecorationImage(
                image:AssetImage('assets/Luchadores/masLuchadores.png'),
                fit: BoxFit.cover //hace que ocupe todo el temaño disponible, aunque se desborde la imagen  
            ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                
                child: IconButton(
                  icon: Icon(Icons.add_circle_outline,
                 color: Colors.lightBlueAccent[400],
                 size: 80, 
                 ),
                 onPressed: (){
                   print('Mas Luchadores');
                   Navigator.push(
                     context, 
                     MaterialPageRoute(
                       builder: (BuildContext context) => AllFighters(),
                     ),
                   );
                 },
                 )

              ),
            ),
            //container Mas Luchadores


        /*    Container(
              margin: EdgeInsets.all(5), //de marge completo 
              width: 100,
              decoration:BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.circular(10)
              ),
            )*/
          ],
        ),
      ),
    );
  }
}