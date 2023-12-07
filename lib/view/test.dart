
/*
class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return  Scaffold(
      body: GetBuilder <TestController> (builder: (controller) {
        if(controller.statusRequest ==StatusRequest.loading){
          return Center(child: Text('loading'),);
        }else if(controller.statusRequest == StatusRequest.offlinefailure){
          return Center(child: Text('offlinefailer'),);

        }else if(controller.statusRequest == StatusRequest.serverfailure){
          return Center(child: Text('serverfailure'),);

        }else{
          return ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: (context, index) {
              return Text('${controller.data}');
            },);
        }
      },),
    );
  }
}
*/
