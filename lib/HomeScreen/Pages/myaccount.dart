import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Expanded(
            child: Container(
              height: 210.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.brown[00],
                border: Border.all(color: Colors.white)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              child: Container(
                                height: 120.0,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    color: Colors.white,
                                    image:const DecorationImage(
                                        image: AssetImage("assets/user.webp")
                                    )
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                       Column(
                         children:const [
                           Text("3.7K",style: TextStyle(
                               fontSize: 20.0,
                               fontWeight: FontWeight.w500
                           ),
                           ),
                           SizedBox(height: 10),
                           Text("Follow",style: TextStyle(
                               fontSize: 16.0,
                               fontWeight: FontWeight.w500
                           ),
                           ),
                         ],
                       ),
                       const SizedBox(width: 20),
                       Column(
                         children:const [
                           Text(
                             "1.3M",style: TextStyle(
                               fontSize: 20.0,
                               fontWeight: FontWeight.w500
                           ),
                           ),
                           SizedBox(height: 10),
                           Text("Followers",style: TextStyle(
                               fontSize: 16.0,
                               fontWeight: FontWeight.w500
                           ),
                           ),
                         ],
                       ),
                      const SizedBox(width: 20),
                      Column(
                        children:const [
                           Text("7.1M",style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500
                          ),),
                           SizedBox(height: 10),
                           Text("Likes",style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500
                          ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children:const [
                           Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child:  Text(
                              "Namita Singh",
                              style: TextStyle(
                                  fontSize: 20,color: Colors.black,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                           Padding(
                            padding: EdgeInsets.only(left: 12.0,top: 0.0),
                            child:  Text(
                              "Social influencer",
                              style: TextStyle(fontSize: 16,
                                  color: Colors.black,fontWeight: FontWeight.normal
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 25),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: Container(
                          height: 60.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.blue[50]
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: (){},
                                  icon:const Icon(Icons.favorite,color: Colors.red,)
                              ),
                              const Text("|",style: TextStyle(fontSize: 28),
                              ),
                              const SizedBox(width: 20),
                              TextButton(
                                  onPressed: (){},
                                  child: Text(
                                    "Edit Profile",
                                    style: TextStyle(color: Colors.brown[900],fontSize: 16
                                    ),
                                  ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        accountSettings("Profile settings", Icons.person),
        accountSettings("Acccount settings", Icons.manage_accounts),
        accountSettings("About Us", Icons.description_outlined),
        accountSettings("Language settings", Icons.language_outlined),
        accountSettings("Log Out", Icons.logout),
      ],
    );
  }
  Widget accountSettings(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.brown[300]
          ),
          child: ListTile(
            onTap: (){},
            autofocus: true,
            title: Text(title,style:const TextStyle(color: Colors.white),),
            leading: Icon(icon),
          ),
        ),
      ),
    );
  }
}


