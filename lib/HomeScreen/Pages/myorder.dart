import 'package:flutter/material.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        myOrder("Hott milk", "Rs. 110"),
        myOrder("Capachino milk", "Rs. 120"),
        myOrder("Normal", "Rs. 90"),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.brown[200]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Your total oreder is : ",
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Rs.320",
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.brown[200]
                ),
                child: TextButton(
                  child: Text("Confirm order",
                    style: TextStyle(fontSize: 18,color: Colors.brown[900]),
                  ),
                  onPressed: (){},
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget myOrder(String title, String rupay) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0), color: Colors.brown[200]),
        child: Column(
          children: [
            Expanded(
              child: ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
                trailing: Text(
                  rupay,
                  style: const TextStyle(fontSize: 16),
                ),
                title: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
