


import 'package:flutter/material.dart';

class AssetMaintenanceProvider extends ChangeNotifier {
  // List<AssetMaintenanceModel> assetMaintenanceList = [];
  // List<AssetMaintenanceModel> newAssetmaintenanceList = [];
  // List<AssetMaintenanceModel> assetmaintenanceById = [];
  // String keyword = '';
  // var fromDate = '';
  // var toDate = '';

  // RefreshfetchData({assetid}) async {
  //   newAssetmaintenanceList.clear();
  //   page = 1;
  //   print("${assetid}---====---===-====");
  //   fetchAssetMaintenanceDetails(assetId:assetid);
  // }

  // Future<void> deleteAssetMaintenanceHistory({context, sid,assetId,assetName}) async {
  //   final response = await http.delete(
  //     Uri.parse('${config.apiBaseURL}api/assetHistory/deleteAssetHistory/$sid'),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //       'Authorization': await AuthProvider.GetToken()
  //     },
  //   );
  //   print(response.statusCode);
  //   customShowDialouge(response,
  //       context: context,
  //       assetName:assetName,
  //       successTitle: 'assetHistory deleted successfully',
  //       successContent: 'assetHistory deleted successfully',
  //       ErrorTitle: 'Error in Deletion',
  //       assetId: assetId,
  //       errorContent: 'Error in Deletion');
  //   RefreshfetchData(assetid: assetId);
  // }

  // Future getAssetDetailsById({required String sid}) async {
  //   final response = await http.get(
  //       Uri.parse('${config.apiBaseURL}api/assetHistory/getAssetHistoryById?id=$sid&propertyID=${sharedp.getString('propertyID')!}'),
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //         'Authorization': await AuthProvider.GetToken()
  //       });

  //   final _bodyAsJson = json.decode(response.body) as List<dynamic>;
  //   // final _data = AssetMaintenanceModel.fromJson(_bodyAsJson);
  //   // assetmaintenanceById.add(_data); 
  //   notifyListeners();
  //   return _bodyAsJson;
  // }

//   int page = 1;
//   int limit = 15;
//   bool hasMore = true;
//   bool hasMoreData = true;

//   fetchAssetMaintenanceDetails({assetId}) async {
//     // _assetId = assetId;
//     var response = await http.get(
//         Uri.parse(
//             '${config.apiBaseURL}api/assetHistory/getAssetHistoryByAssetId?assetID=$assetId&propertyID=${sharedp.getString('propertyID')!}&pageNumber=$page'),
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//           'Authorization': await AuthProvider.GetToken()
//         });
//     page++;
//     var list = json.decode(response.body).cast<Map<String, dynamic>>();
//     assetMaintenanceList = await list
//         .map<AssetMaintenanceModel>(
//             (json) => AssetMaintenanceModel.fromJson(json))
//         .toList();
//     newAssetmaintenanceList.addAll(assetMaintenanceList);
//     if (assetMaintenanceList.length < 15) {
//       hasMore = false;
//     }
//     print("${response.body} ");

//     notifyListeners();
//     return assetMaintenanceList;
//   }

//   Future<void> addAssetMaintenance({
//     context,
//     servicedateController,
//     serviceTypeController,
//     InvoiceNoController,
//     amountPaidController,
//     updatedUserIDController,
//     updatedUserNameController,
//     remarksController,
//     assetId,
//     assetName,
//   }) async {
//     final response = await http.post(
//       Uri.parse('${config.apiBaseURL}api/assetHistory/saveAssetHistory'),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//         'Authorization': await AuthProvider.GetToken()
//       },
//       body: jsonEncode(<String, dynamic>{
//         "assetID": assetId,
//         "assetName": assetName,
//         "serviceHistory": [
//           {
//             "servicedate": servicedateController,
//             "serviceType": serviceTypeController,
//             "InvoiceNo": InvoiceNoController,
//             "amountPaid": int.parse(amountPaidController),
//             "updatedUserID": updatedUserIDController,
//             "updatedUserName": updatedUserNameController,
//             "remarks": remarksController,
//           }
//         ],
//         "propertyID": sharedp.getString('propertyID'),
//       }),
//     );
//     print(response.body);
//     print(response.statusCode);
//     customShowDialouge(response,
//         context: context,
//         flag: true,
//         assetName: assetName,
//         assetId: assetId,
//         successTitle: 'Asset Detailes added successfully',
//         successContent: 'Asset Detailes added successfully',
//         ErrorTitle: 'Error in Registration',
//         errorContent: 'Error in Registration',);
//   }

//   Future<void> updateAssetMaintenance(
//      {
//     context,
//     sid,
//     servicedateController,
//     serviceTypeController,
//     InvoiceNoController,
//     amountPaidController,
//     updatedUserIDController,
//     updatedUserNameController,
//     remarksController,
//     assetId,
//     assetName,
//   }) async {
//     final response = await http.put(
//       Uri.parse('${config.apiBaseURL}api/assetHistory/updateassetHistoryDetails?assetID=$assetId&id=$sid&propertyID=${sharedp.getString('propertyID')!}'),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//         'Authorization': await AuthProvider.GetToken()
//       },
//       body: jsonEncode(<String, dynamic>{
//         "_id":sid,
//         "assetID": assetId,
//         "assetName": assetName,
//         "serviceHistory": [
//           {
//             "servicedate": servicedateController,
//             "serviceType": serviceTypeController,
//             "InvoiceNo": InvoiceNoController,
//             "amountPaid": int.parse(amountPaidController),
//             "updatedUserID": updatedUserIDController,
//             "updatedUserName": updatedUserNameController,
//             "remarks": remarksController,
//           }
//         ],
//         "propertyID": sharedp.getString('propertyID'),
//       }),
//     );
//     print(response.body);
//     print(response.statusCode);
//     customShowDialouge(response,
//         context: context,
//         flag: true,
//         assetName: assetName,
//         assetId: assetId,
//         successTitle: 'Asset Detailes Updated successfully',
//         successContent: 'Asset Detailes Updated successfully',
//         ErrorTitle: 'Error in Registration',
//         errorContent: 'Error in Registration',);
//   }
}

// customShowDialouge(http.Response response,
//     {context,
//     bool flag = false,
//     String? successTitle,
//     String? successContent,
//     String? ErrorTitle,
//     String? errorContent,
//     required String assetName ,
//     required String assetId}) {
//   if (response.statusCode == 200 || response.statusCode == 201) {
//     showDialog<String>(
//       context: context,
//       builder: (BuildContext context) => AlertDialog(
//         title: Text("${successTitle}"),
//         content: Text("${successContent}"),
//         actions: <Widget>[
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//               if (flag == true) {
//                 Navigator.of(context).push(MaterialPageRoute(
//                   builder: (context) {
//                     return ScreenAssetMaintenanceManagement(assetId:assetId ,assetName: assetName,);
//                   },
//                 ));
//               }
//             },
//             child: const Text('OK'),
//           ),
//         ],
//       ),
//     );
//   } else {
//     showDialog<String>(
//       context: context,
//       builder: (BuildContext context) => AlertDialog(
//         title: Text("${ErrorTitle}"),
//         content: Text("${errorContent}"),
//         actions: <Widget>[
//           TextButton(
//             onPressed: () => Navigator.pop(context, 'Cancel'),
//             child: const Text('OK'),
//           ),
//         ],
//       ),
//     );
//   }
// }
