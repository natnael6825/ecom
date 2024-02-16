import 'package:ecom/screen/confirmotp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtpSender extends StatefulWidget {
  const OtpSender({super.key});

  @override
  State<OtpSender> createState() => _OtpSenderState();
}

class _OtpSenderState extends State<OtpSender> {
  bool clrButton = false;

  TextEditingController emailinput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
          
            children: [
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter your email address to get the otp or verfit using your phone number",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: emailinput,
                onChanged: (val) {
                  if (val != "") {
                    setState(() {
                      clrButton = true;
                    });
                  }
                },
                decoration: InputDecoration(
                  labelText: "Phone",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                  suffix: InkWell(
                    onTap: () {
                      setState(() {
                        emailinput.clear();
                      });
                    },
                    child: Icon(CupertinoIcons.multiply,
                        color: Color.fromARGB(255, 121, 0, 169)),
                  ),
                ),
              ),

SizedBox(height: 30,),


 ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Otp()));
                        },
                        child: Text(
                          "Send Code",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(55),
                          backgroundColor: Color.fromARGB(255, 121, 0, 169),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        )),

                          SizedBox(
                height: 10,
              ),



            ],
          ),
        ),
      ),
    );
  }
}
