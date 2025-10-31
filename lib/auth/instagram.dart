import "package:flutter/material.dart";

class Instgram extends StatefulWidget {
  const Instgram({super.key});

  @override
  State<Instgram> createState() => _InstagramState();
}

class _InstagramState extends State<Instgram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "lib/assets/instagram.png",
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                    ),

                    SizedBox(
                      width: MediaQuery.of(context).size.width * .9,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 0.8,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 0.8,
                            ),
                          ),
                          hint: Text("Username"),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 0.8,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 0.8,
                            ),
                          ),
                          hint: Text("Password"),
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        right: 15,
                        top: 20,
                        bottom: 40,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot password?",
                            style: TextStyle(fontSize: 15, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 50,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(5),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Login in",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook, color: Colors.blue, size: 25),
                          SizedBox(width: 5),
                          Text(
                            "Login in with Facebook",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(color: Colors.grey, endIndent: 25),
                          ),
                          Text(
                            "OR",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(
                            child: Divider(color: Colors.grey, indent: 25),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),

                          const SizedBox(width: 5),

                          Text(
                            "Sign up.",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
