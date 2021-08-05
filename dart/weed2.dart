void main() {

    // print (callGen(1991));
    // var x = callColor("white");
    // print(x);
    // เรียกใช้ Funtion callWed
    callWeb("Google", protocal : "https" , port :443);
}
    // การเขียนเงื่อนไขแบบ shot - hand
    // การ Return ภายในบรรทัดเดียวกัน
    //String callGen(int year) =>  (year >= 1996) ?   "Gen Z" : "Gen Y";

    //การเขียน For In และ Return ข้อมูลใน List
    /* int callColor([String newColor = "pink"]) {
    //             index      0     1
    List<dynamic> color = ["red","blue","green"];
   
   
    color.add("newColor");
    for (var item in color ){
        print(item);
    }
    return color.length;
}*/

    //การเขียนการเชื่อมต่อเว็บและ Port แบบการใช้  Arrow Function
    void callWeb(String web  ,{int port = 80, String protocal = "https"}) =>
    print("$protocal $web : $port");
