class Images {
  // static const String logo = 'assets/image/logo.png';
  static const String saudi = 'assets/image/arabic.png';
  static const String english = 'assets/image/english.png';

  //
  static const String logo = 'assets/image/logobuudineat.png';
  static const String avatar = 'assets/image/avatar.jpg';

  static const String onboardImage2 = 'assets/image/slide2.png';
  static const String onboardImage3 = 'assets/image/slide3.png';
  static const String onboardImage1 = 'assets/image/slide1.png';

  static const String onboardBackground1 = 'assets/image/image_background.png';
  static const String onboardBackground2 = 'assets/image/image_background.png';
  static const String onboardBackground3 = 'assets/image/image_background.png';
  static const String onboardBackground4 = 'assets/image/image_background.png';

    static const String orangelogo = 'assets/image/orangelogo2.png';
    static const String mtnlogo = 'assets/image/mtnlogo.png';
    static const String wavelogo = 'assets/image/wavelogo2.png';
    static const String moovlogo = 'assets/image/moovlogo.png';
    
    static const String emoney = 'assets/image/e_money_senegal.png';
    static const String freemoney = 'assets/image/free_money_senegal.png';
    static const String wizall = 'assets/image/wizall.png';
    static const String tmoney = 'assets/image/t_money.png';
    

    static const String ivoire = 'assets/image/ivoire.png';
    static const String mali = 'assets/image/mali.png';
    static const String benin = 'assets/image/benin.png';
    static const String togo = 'assets/image/togo.png';
    static const String bf = 'assets/image/bf.png';
    static const String senegal = 'assets/image/senegal.png';






  static const String mastercard = 'assets/image/mastercard.png';
  static const String homeIconBold = 'assets/image/home_bold.png';
  static const String homeIcon = 'assets/image/home.png';
  static const String clockIcon = 'assets/image/historical.png';
  static const String clockIconBold = 'assets/image/historical.png';
  static const String scannerIcon = 'assets/image/Scan.png';
  static const String notificationIcon = 'assets/image/credit-card.png';
  static const String notificationIconBold = 'assets/image/credit-card.png';
  static const String profileIcon = 'assets/image/Profile.png';
  static const String profileIconBold = 'assets/image/Profile_bold.png';
  static const String boldNotificationIcon ='assets/image/Notification_bold.png';
  static const String walletLogo = 'assets/image/wolet.png';
  static const String sendMoneyLogo = 'assets/image/send_money.png';
  static const String cashOutLogo = 'assets/image/cash_out.png';
  static const String receivedMoneyLogo = 'assets/image/received_money.png';
  static const String qrCode = 'assets/image/qr_code.png';
  static const String sendMoneyLogo3 = 'assets/image/sendMoney3.png';
  static const String cashOutLogo3 = 'assets/image/cashout3.png';
  static const String addMoneyLogo3 = 'assets/image/add_money.png';
  static const String requestMoneyLogo = 'assets/image/req_money.png';
  static const String pinChangeLogo = 'assets/image/pinChange.png';
  static const String privacy = 'assets/image/Privacy.png';
  static const String languageLogo = 'assets/image/Language.png';
  static const String questionLogo = 'assets/image/faq.png';
  static const String supportLogo = 'assets/image/Support.png';
  static const String aboutUs = 'assets/image/about_us.png';
  static const String terms = 'assets/image/terms.png';
  static const String failedLogo = 'assets/image/failed.png';
  static const String editProfile = 'assets/image/edit_profile.png';
  static const String requestListImage2 = 'assets/image/request_list_image2.png';
  static const String myRequestedListImage = 'assets/image/my_requested_list_image.png';
  static const String sendMoneyImage = 'assets/image/send_money.png';
  static const String logOut = 'assets/image/log_out.png';
  static const String changeTheme = 'assets/image/change_theme.png';
  static const String twoFactorAuthentication = 'assets/image/two_factor_authentication.png';
  static const String cameraIcon = 'assets/image/camera_icon.png';
  static const String eyeIcon = 'assets/image/eye_icon.gif';

  static const String failedIcon = 'assets/image/failed_icon.png';
  static const String successIcon = 'assets/image/success_icon.png';
  static const String supportImage = 'assets/image/support_image.png';

  static const String onSelect = 'assets/image/on_select.png';
  static const String slideRightIcon = 'assets/image/slide_right_icon.png';
  static const String withdraw = 'assets/image/withdraw.png';
  static const String payment = 'assets/image/payment.png';
  static const String transactionLimit = 'assets/image/transaction_limit.png';

  static String getTransactionImage(transactionType) => 'assets/image/${
      transactionType == 'cash_in' ? 'send_money' : transactionType
  }.png';

  //other info
  static const String male = 'assets/image/Male.png';
  static const String female = 'assets/image/Female.png';
  static const String other = 'assets/image/Other_gender.png';



  static const String editIcon = 'assets/image/Edit.png';
  static const String inputStackDesing = 'assets/image/design.png';
  static const String placeholder = 'assets/image/placeholder.jpg';
  static const String bannerPlaceHolder = 'assets/image/banner_place_holder.png';
  static const String webLinkPlaceHolder = 'assets/image/web_link_place_holder.png';
  static const String noData = 'assets/image/no_data.png';
  static const String fingerprint = 'assets/image/fingerprint.png';

  //animation
  static const String failedAnimation = 'assets/animationFile/failed_animation.json';
  static const String successAnimation = 'assets/animationFile/success_animation.json';
  static const String contactPermissionDeniAnimation = 'assets/animationFile/contact_denied_animation.json';
  static const String customerSupport = 'assets/animationFile/customer_support_animation.json';
  static const String qrScanAnimation = 'assets/image/qr_scan.gif';

  static String getPaymentImage(String name) => 'assets/payment/$name.png';

}
