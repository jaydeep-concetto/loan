import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:loan/data_manager_inherited_widget.dart';
import 'package:path_provider/path_provider.dart';
class APIRepos {

//  Future<LoginResponse> login(
//      BuildContext context, String userName, String password) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .postAPI(
//            context: context,
//            isProgressBar: true,
//            requestData: LoginRequest(userName, password).toJson(),
//            urlPath: 'login');
//    return (response != null) ? LoginResponse.fromJson(json.decode(response.body)) : null;
//  }
//  Future<GetPumpListResponse> pumpList(
//      BuildContext context) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .postAPI(
//        context: context,
//        isProgressBar: false,
//        requestData: Map(),
//        urlPath: 'pump-list',isBackground: true);
//      return (response != null) ? GetPumpListResponse.fromJson(json.decode(response.body)) : null;
//  }
//  downloadFile(String url,String folderName, String filename) async {
//    http.Client client = new http.Client();
//    var req = await client.get(Uri.parse(url));
//    var bytes = req.bodyBytes;
//    String dir = (await getApplicationDocumentsDirectory()).path;
//    filename = filename.replaceAll(' ', '_');
//    await Directory(dir+folderName).create(recursive: true)
//        .then((Directory directory) {
//      File file = new File('$dir$folderName/$filename');
//      file.writeAsBytes(bytes);
//
//    });
//
//  }
//
//  Future<GetCompanyListResponse> companyList(
//      BuildContext context) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .getAPI(
//        context: context,
//        isProgressBar: false,
//        urlPath: 'company-list',isBackground: true);
//    return (response != null) ? GetCompanyListResponse.fromJson(json.decode(response.body)) : null;
//  }
//
//  Future<GetOemResponse> oemList(
//      BuildContext context, int pumpId) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .postAPI(
//        context: context,
//        isProgressBar: false,
//        requestData: GetOemRequest(pumpId).toJson(),
//        urlPath: 'oem-list',isBackground: true);
//    return (response != null) ? GetOemResponse.fromJson(json.decode(response.body)) : null;
//  }
//
//  Future<GetPartListResponse> partList(
//      BuildContext context, int pumpId) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .postAPI(
//        context: context,
//        isProgressBar: false,
//        requestData: GetOemRequest(pumpId).toJson(),
//        urlPath: 'part-list',isBackground: true);
//    return (response != null) ? GetPartListResponse.fromJson(json.decode(response.body)) : null;
//  }
//  Future<CreateJobBB5Response> createJobBB5(
//  {BuildContext context, String customer_name,String job_number,String pump_serial,String po_number,String job_date,String pump_model,String unit,String location,String customer_tag,String ht_job,String quote,String quote_price,String release_price,String salesman,String team,String repair_description,String as_found_date,String as_build_date,String pump_purpose,int pump_id,int oem_id,int status_id,int company_id}) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .postAPI(
//        context: context,
//        isProgressBar: true,
//        requestData: CreateJobRequest(po_number, pump_id,team,salesman,quote,unit,location,as_build_date,as_found_date,company_id,customer_name,customer_tag,ht_job,job_date,job_number,
//            oem_id,pump_model,pump_purpose,pump_serial,quote_price,release_price,repair_description,status_id).toJson(),
//        urlPath: 'create-job');
//    return (response != null) ? CreateJobBB5Response.fromJson(json.decode(response.body)) : null;
//  }
//  Future<GetJobListResponse> jobList(
//      {BuildContext context, int pump_id,int status_id}) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .postAPI(
//        context: context,
//        isProgressBar: true,
//        requestData: GetJobListRequest(pump_id,status_id).toJson(),
//        urlPath: 'get-job-list');
//    return (response != null) ? GetJobListResponse.fromJson(json.decode(response.body)) : null;
//  }
//
//  Future<ForgotPasswordResponse> forgotPassword(
//      BuildContext context, String email) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .postAPI(
//            context: context,
//            isProgressBar: true,
//            requestData: ForgotPasswordRequest(email).toJson(),
//            urlPath: 'forgot-password');
//
//    return ForgotPasswordResponse.fromJson(json.decode(response.body));
//  }
//
//  Future<LoginResponse> createPassword(
//      BuildContext context, String email, String password) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .postAPI(
//            context: context,
//            isProgressBar: true,
//            requestData: CreatePasswordRequest(email, password).toJson(),
//            urlPath: 'change-password');
//
//    return LoginResponse.fromJson(json.decode(response.body));
//  }
//
//  //-----------------------------------VerifyLink----------------------------------------------------
//  Future<SignupResponse> verifyLink(BuildContext context, String url) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .getAPI(
//            context: context, isProgressBar: true, urlPath: 'verify-link?$url');
//    return SignupResponse.fromJson(json.decode(response.body));
//  }
//
//  //--------------------------------Get Industry List--------------------------------------------------
//
//  Future<IndustryResponse> getIndustryListForCreateList(
//      BuildContext context) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .getAPI(
//            context: context, isProgressBar: true, urlPath: 'get_industy_list');
//    return IndustryResponse.fromJson(json.decode(response.body));
//  }
//
//  //--------------------------------Get Trade List--------------------------------------------------
//  Future<SearchTradeResponse> getIndustryList(
//      BuildContext context, TradePersonListRequest request) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .postAPI(
//            context: context,
//            isProgressBar: true,
//            urlPath: 'search_trade_details',
//            requestData: request.toJson());
//    return SearchTradeResponse.fromJson(json.decode(response.body));
//  }
//
//  Future<TradePersonListDetailResponse> getTradeListDetailWithOutAuthorization(
//      BuildContext context, int id) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .getAPI(
//            context: context,
//            isProgressBar: true,
//            urlPath: 'tradeDetails/${id}');
//    return TradePersonListDetailResponse.fromJson(json.decode(response.body));
//  }
//
//  Future<LocationDashboardResponse> getCurrentLocationCityID(
//      BuildContext context, GetCityIdFromCurrentLocationRequest request) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .postAPI(
//            context: context,
//            isProgressBar: true,
//            requestData: request.toJson(),
//            urlPath: 'get_location_detail');
//    return LocationDashboardResponse.fromJson(json.decode(response.body));
//  }
//
//  Future<TradePersonListDetailResponse> getTradeListDetail(
//      BuildContext context, TradePersonListDetailRequest request) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .postAPI(
//            context: context,
//            isProgressBar: true,
//            requestData: request.toJson(),
//            urlPath: 'get_tradedetail_show');
//    return TradePersonListDetailResponse.fromJson(json.decode(response.body));
//  }
//
//  Future<TradePersonListResponse> getTradeList(
//      BuildContext context, TradePersonListRequest request) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .postAPI(
//            context: context,
//            isProgressBar: true,
//            requestData: request.toJson(),
//            urlPath: 'search_trade_details');
//    return TradePersonListResponse.fromJson(json.decode(response.body));
//  }
//
//  Future<SearchAutoFillResponse> getSearchAutoFillList(
//      BuildContext context, SearchAutoFillRequest request) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .postAPI(
//            context: context,
//            isProgressBar: false,
//            urlPath: 'search_autofilled',
//            requestData: request.toJson());
//    return SearchAutoFillResponse.fromJson(json.decode(response.body));
//  }
//
//  Future<CountryStateCityResponse> getCountryStateCityList(
//      BuildContext context, CountryStateCityRequest request) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .postAPI(
//            context: context,
//            isProgressBar: true,
//            urlPath: 'get_country_state_data',
//            requestData: request.toJson());
//    return CountryStateCityResponse.fromJson(json.decode(response.body));
//  }
//  Future<TradeSeekerReviewListResponse> getTradeSeekerReviewList(
//      BuildContext context, TradeSeekerReviewListRequest request) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .postAPI(
//            context: context,
//            isProgressBar: true,
//            urlPath: 'trade_seeker_review_list',
//            requestData: request.toJson());
//    return TradeSeekerReviewListResponse.fromJson(json.decode(response.body));
//  }
//
//  Future<GetNearByCitiesResponse> getNearByCities(
//      BuildContext context,GetNearByCities request) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .postAPI(
//            context: context,
//            isProgressBar: true,
//            urlPath: 'get_near_cities',
//            requestData: request.toJson());
//    return GetNearByCitiesResponse.fromJson(json.decode(response.body));
//  }
//
//  Future<WriteReviewResponse> submitTradeSeekerReview(
//      BuildContext context,WriteReviewDialogRequest request) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .postAPI(
//            context: context,
//            isProgressBar: true,
//            urlPath: 'trade_seeker_review',
//            requestData: request.toJson());
//    return WriteReviewResponse.fromJson(json.decode(response.body));
//  }
//  Future<ReplyReviewResponse> replyReview(
//      BuildContext context,ReplyReviewRequest request) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .postAPI(
//            context: context,
//            isProgressBar: true,
//            urlPath: 'trade_detail_reply_review',
//            requestData: request.toJson());
//    return ReplyReviewResponse.fromJson(json.decode(response.body));
//  }
//  Future<ReportReviewResponse> reportReview(
//      BuildContext context,ReportReviewRequest request) async {
//    http.Response response = await DataManagerInheritedWidget.of(context)
//        .apiClient
//        .postAPI(
//            context: context,
//            isProgressBar: true,
//            urlPath: 'add_report',
//            requestData: request.toJson());
//    return ReportReviewResponse.fromJson(json.decode(response.body));
//  }
}


