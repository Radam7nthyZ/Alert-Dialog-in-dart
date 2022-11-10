import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Alterted Dialog!!!!!"),
          backgroundColor: Color.fromARGB(255, 63, 206, 82),
          content: Text("Este es un anuncio de alerta!!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Aceptar"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Ayudar"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                // LO SALES HASTA LA PANTALLA PRINCIPAL EL NAVIGATION CUANDO SE USA DOBLE
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
            ),
          ],
        );
      },
    );
  }

  // ---------2--------------------------
  showMyAlert2(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext) {
          return AlertDialog(
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://mexico.unir.net/wp-content/uploads/sites/6/2022/05/grafico-diagramas.jpg"),
                ),
                Title(
                  color: Colors.black,
                  child: Text("Blog post published"),
                ),
                Text("tihs blog post has been published . Team members"
                    "will be able to edit this post and republish changes"),
              ],
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Confirm"),
                  ),
                ],
              )
            ],
          );
        });
  }

  // ------------------3-------------------
  showMyAlert3(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  "https://img.freepik.com/fotos-premium/mujer-atenta-viendo-medios-comunicacion-computadora-portatil_109710-3268.jpg?w=2000"),
              Text("you're video has finished uploading end is live"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Ingrese un link"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Card(
                      child: Row(
                        children: [
                          Icon(Icons.share),
                          Text(
                            "Copy Link",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 18, 18, 19)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                  ),
                  Card(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Next ",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    color: Color.fromARGB(255, 177, 39, 119),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        backgroundColor: Color.fromARGB(255, 187, 34, 128),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert(context);
              },
              child: Text("Alert 1"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert2(context);
              },
              child: Text("Alert 2"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert3(context);
              },
              child: Text("Alert 3"),
            ),
          ],
        ),
      ),
    );
  }
}
