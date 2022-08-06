import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: text(),
  ));
}
class text extends StatefulWidget {
  const text({Key? key}) : super(key: key);

  @override
  State<text> createState() => _textState();
}

class _textState extends State<text> {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  TextEditingController t3=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("form"),),
      body: Column(
        children: [
          TextField(controller: t1),
          TextField(controller: t2),
          TextField(controller: t3),
          ElevatedButton(onPressed: () {
            String a=t1.text;
            String b=t2.text;
            String c=t3.text;

            int n1=int.parse(a);
            int n2=int.parse(b);
            int n3=int.parse(c);

           int sum=n1+n2+n3;
            print("sum = $sum");

          }, child: Text("Sum")),
          ElevatedButton(onPressed: () {
            ElevatedButton(onPressed: () {

              String a=t1.text;
              String b=t2.text;
              String c=t3.text;

              int n1=int.parse(a);
              int n2=int.parse(b);
              int n3=int.parse(c);

              if(n1>n2 && n1>n3)
              {
                print("n1 is max");
              }
              else if(n2>n3)
              {
                print("n2 is max");
              }
              else
              {
                print("n3 is max");
              }
            }, child: Text("max"))

            String a=t1.text;
            String b=t2.text;
            String c=t3.text;

            int n1=int.parse(a);
            int n2=int.parse(b);
            int n3=int.parse(c);

            if(n1>n2 && n1>n3)
              {
                print("n1 is max");
              }
            else if(n2>n3)
                {
                  print("n2 is max");
                }
            else
              {
                print("n3 is max");
              }
            }, child: Text("min")),
          ElevatedButton(onPressed: () {

            String a=t1.text;
            String b=t2.text;
            String c=t3.text;

            int n1=int.parse(a);
            int n2=int.parse(b);
            int n3=int.parse(c);

            if(n1<n2 && n1<n3)
            {
              print("n1 is min");
            }
            else if(n2<n3)
            {
              print("n2 is min");
            }
            else
            {
              print("n3 is min");
            }
          }, child: Text("max"))

        ],
           ),
    );
  }
}
