class StringHelper {
  static const app_name = 'Hydro';

  //login
  static const Welcome = 'Welcome,';
  static const Sign_in_to_continue = 'Sign in to continue';
  static const Sign_In = 'SIGN IN';
  static const Email = 'Email';
  static const Password = 'Password';

  //pump_type_selection
  static const Next = 'NEXT';
  static const Select_Pump_Type = 'Select Pump Type';
  static const OEM = 'OEM';

  //parts_selection
  static const Hydro_Inc = 'Hydro Inc.';
  static const Select_Parts = 'Select Parts';

  //Current_jobs
  static const Create_Jobs = 'Create Jobs';
  static const Current_Jobs = 'Current Jobs';
  static const As_Built_Report = 'AS BUILT REPORT';
  static const Add_as_Built = 'ADD AS BUILT';
  static const As_Found_Report = 'AS FOUND REPORT';

  //Completed_jobs
  static const Completed_jobs = 'Completed Jobs';
  //BB5
  static const Customer = 'Customer';
  static const Company = 'Company';
  static const P_O_Number = 'P.O. Number';
  static const Pump_Mfr = 'Pump Mfr.';
  static const Job_Number = 'Job Number';
  static const Model_No = 'Model. No.';
  static const Date = 'Date';
  static const Location = 'Location';
  static const Unit = 'Unit';
  static const Pump_Purpose = 'Pump Purpose';
  static const Pump_Serial = 'Pump Serial #';
  static const Cust_Tag = 'Cust. Tag #';
  static const HT_Job = 'HT Job #';
  static const Quote = 'Quote #';
  static const Quote_Price = 'Quote Price';
  static const Release_Price = 'Release Price';
  static const Salesman = 'Salesman';
  static const Team = 'Team';
  static const Repair_Desc = 'Repair Desc.';

  //bb5_case_dimensions_fits
  static const A = 'A';
  static const B = 'B';
  static const C = 'C';
  static const Cx = 'Cx';
  static const D = 'D';
  static const E = 'E';
  static const J = 'J';
  static const H = 'H';
  static const ID = 'ID';
  static const OD = 'OD';
  static const Depth = 'Depth';
  static const Dimension = 'Dimension';
  static const Notes = 'Notes :';

//PART
  static const CAMERA_BROWSE_PHOTO = 'CAMERA/BROWSE PHOTO';
  static const SAVE = 'SAVE';

  // static const  = '';
//  static const  = '';
//  static const  = '';
//  static const  = '';
//  static const  = '';
//  static const  = '';
//  static const  = '';

  //errorMessages
  static const String error_msg_no_internet_with_user =
      'No internet connection. You want to login with ';
  static const String error_msg_connection_internet =
      'Please connect to internet';
  static const error_msg_internal_server = 'Internal server error';
  static const error_msg_empty_pass = 'Please enter password';
  static const error_msg_min_length =
      'Password should be minimum of 6 characters';
  static const error_msg_empty_email = 'Please enter email address';
  static const error_msg_invalid_email = 'Please enter valid email address';
  static const error_msg_customer_name = 'Please enter customer name';
  static const error_msg_job_number = 'Please enter job number';

  static const error_msg_empty_mobile = 'Please enter mobile number';
  static const error_msg_invalid_mobile = 'Invalid mobile number';
  static const error_msg_invalid_mobile_10_digits =
      'Please enter valid 10 digit phone number';
  static const error_msg_empty_otp = 'Please enter OTP';
  static const error_msg_invalid_otp = 'Please enter vaild OTP';
  static const error_empty_value = 'Please fill field';
  static const error_firstname_empty_value = 'Please enter first name';
  static const error_lastname_empty_value = 'Please enter last name';
  static const error_msg_empty_confirm_pass = 'Please enter confirm password';
  static const error_msg_empty_address = 'Please enter address';
  static const error_msg_pass_match =
      'Password and confirm password do not match';
  static const error_agree_terms_and_conditions =
      'Please accept the Terms and Conditions and Privacy Policy to create an account';

//table
  static const tableName_pump_types = 'pump_types';
  static const tableField_pump_id = 'pump_id';
  static const tableField_pump_name = 'pump_name';

  static const tableName_oems = 'oems';
  static const tableField_oem_id = 'oem_id';
  static const tableField_oem_name = 'oem_name';

  static const tableName_companies = 'companies';
  static const tableField_Company_id = 'Company_id';
  static const tableField_Company_name = 'Company_name';

  static const tableName_part_types = 'part_types';
  static const tableField_part_id = 'part_id';
  static const tableField_part_name = 'part_name';
  static const tableField_table_name = 'table_name';
  static const tableField_part_image = 'part_image';
}
