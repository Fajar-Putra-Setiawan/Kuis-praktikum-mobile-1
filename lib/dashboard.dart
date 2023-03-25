import 'package:flutter/material.dart';
import 'package:kuis_tpm1/disease_data.dart';
import 'package:kuis_tpm1/detail.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plant Diseases"),
        centerTitle: true,
      ),
      
      body: GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        
        itemCount: listDisease.length,
        itemBuilder: (BuildContext context, int index) {
          final Diseases place = listDisease[index];
          return InkWell(
            
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return HalamanDetail(place:place);
              }));
            },

            child: Card(
              elevation: 10, 
              child: Container(
                height: MediaQuery.of(context).size.height / 4,
                width: 30,
                padding: const EdgeInsets.all(12),

                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                          width: 400,
                          height: 150,
                          child: Image.network(place.imgUrls)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    //biar bertingkat diberi column
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          place.name,
                          style: TextStyle(
                            fontSize: 24, fontStyle: FontStyle.italic),
                            maxLines: 1,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}