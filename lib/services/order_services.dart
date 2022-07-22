import 'package:http/http.dart' as http;
import 'package:list_view/models/order_model.dart';
class BaseUrl{
  var url = 'ec2-3-110-181-63.ap-south-1.compute.amazonaws.com:3001';
}
class OrderServices{
  var client = http.Client();
  final queryParams = {
    'emp_name': 'Kishan Shaw',
    'tillDate': '2022-07-20',
    'fromDate': '2022-07-01'
  };
  Future<List<Order>?>getAllOrders() async{
    var uri = Uri.http(BaseUrl().url, '/ordersearch',queryParams);

    var response = await client.get(uri);

    if(response.statusCode == 200){
      var json = response.body;
      return orderFromJson(json);
    }
    else{
      return null;
    }
  }
}