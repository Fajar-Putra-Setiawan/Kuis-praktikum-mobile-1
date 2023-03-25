import 'package:kuis_tpm1/disease_data.dart';
import 'package:flutter/material.dart';


class HalamanDetail extends StatefulWidget {
  final Diseases place;
  const HalamanDetail({ Key? key, required this.place}) : super(key: key);
  
  @override
  _HalamanDetailState createState() => _HalamanDetailState();
}


class _HalamanDetailState extends State<HalamanDetail> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("${widget.place.name}"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: (isFavorite)
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border),
          ),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                SizedBox(height: 16.0),
                Expanded(
                  child: Column(
                  
                  children: [
                    Image.network("${widget.place.imgUrls}", height: 150,),
                  ],
                  
                  ),
                ),
                Text(
                  "${widget.place.name}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  'Diseasse Name',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                SizedBox(height: 16.0),
                
                Text("${widget.place.name}"),
                SizedBox(height: 16.0),
                Text(
                  'Plant Name',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), 
                  ),

                Text("${widget.place.plantName}"),
                SizedBox(height: 16.0),
                Text(
                  'Ciri-ciri',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                Text("${widget.place.nutshell[0]}"),
                SizedBox(height: 16.0),
                Text('Disease id',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text("${widget.place.id}"),
                SizedBox(height: 16.0),
                Text('Sympton',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("${widget.place.symptom}"),
                SizedBox(height: 50.0),
              ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
              return Image.network("${widget.place.imgUrls}");
          }));
        },
        child: Icon(Icons.screen_search_desktop_outlined),
      ),
    );
  }

////////////////////////////////////////////////////////////
}




