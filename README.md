starIOPrintSDK
==============

Star Micronics iOS Print SDK

************************************************************
      StarIO for iOS
         Readme_En.txt             Star Micronics Co., Ltd. 
************************************************************

 1. Overview
 2. Contents
 3. Scope
 4. Notification (For customers who are already using our SDK older than Ver.3.7.2)
 5. Copyright
 6. Release History

=============
 1. Overview
=============

  This software is StarIO for iOS.
  StarIO is a high level programming tool that simplifies the development
  and creation of software for Star printers. 
  This SDK support iOS from 4.3 to 7.0.
  Please refer to document in zip file.


=============
 2. Contents
=============

  StarIO_iOS_V380
  |
  | Readme_En.txt                       // Release Note(English)
  | Readme_Jp.txt                       // Release Note(Japanese)
  | SoftwareLicenseAgreement.pdf        // Software License Agreement(English)
  | SoftwareLicenseAgreement_jp.pdf     // Software License Agreement(Japanese)
  |
  +- Documents
  |  +- README_StarIO_PortablePrinter_iOS_SDK.pdf     // Master help file (English:  Mobile Printer)
  |     README_StarIO_PortablePrinter_iOS_SDK_Jp.pdf  // Master help file (Japanese: Mobile Printer)
  |     README_StarIO_POSPrinter_iOS_SDK.pdf          // Master help file (English:  Desktop Printer)
  |     README_StarIO_POSPrinter_iOS_SDK_Jp.pdf       // Master help file (Japanese: Desktop Printer)
  |     StarMicronics_POSPrinters_Mac_Ethernet.pdf    // Master help file (English:  Desktop Printer)
  |     ESCPOSDocuments.pdf                           // Appendix (English:  Desktop Printer)
  |
  +- Distributables
  |  +- StarIO.framework                // framework
  |
  +- Samples
    +- IOS_SDK.xcodeproj                // project file for sample program
       StarIO.framework                 // framework
       IOS_SDK                          // sample program


=================
 3. Scope
=================
  [OS]
    iOS 4.3 - 7 (*1)

     *1 Limitation for iOS 7

         Under the iOS 7, you cannot use Bluetooth MAC Address to specify a printer among 
         multiple paired printers.

         In case of using one printer with one iOS terminal, this limitation does not happen.

     Countermeasures

         Under the iOS 7, you can not get printer's Bluetooth MAC Address, so cannot identify
         the printer.

         Consequently you will be lost among multiple printers paired to iOS, unable to identify 
	 the printer receiving the print data.

          [How to specify a printer among mulitple printers]

           (In usage between TSP654II-Bluetooth and SAC10)
            "Star Setting Utility" is capable of naming each printer's iOS port. Use this function 
            to identify printers.
            You can download "Star Setting Utility" from App Store.

           (Portable printers)
	    1. Those customers who are already using multiple printers with one iOS6 terminal;
	       please refrain from updating the OS to iOS7.

  	    2. Those customers who are going to use our SDK under iOS7;
	       please do not use multiple printers with one iOS7 terminal. Keep one-to-one comibination.

	    No countermeasure is found at this moment for the usage out of these conditions.


	  Note: We plan to update portable printer specifications to solve these problems.
		We will notify those updates in our WEB site. (www.star-m.jp)


  [Printer Model]
    SM-S210I            (Ver1.0 or later)
    SM-S220I            (Ver2.0 or later)
    SM-T300             (Ver1.1 or later)
    SM-T300I            (Ver2.4 or later)
    SM-T400I            (Ver2.4 or later)
    TSP100U *           (Ver1.3 or later)
    TSP100GT *          (Ver1.0 or later)
    TSP100ECO *         (Ver1.0 or later)
    TSP100LAN           (Ver2.0 or later)
    FVP10               (Ver1.2 or later)
    TSP650              (Ver3.0 or later)
    TSP650II            (Ver1.0 or later)
    TSP700II            (Ver3.0 or later)
    TSP800II            (Ver1.2 or later)

    * Requires Apple Airport Express

  [DK-AirCash]
    SAC10               (Ver1.0 or later)

  [Interface]
    LAN:       IFBD-HE07/HE08/BE07 (Ver2.0.0 or later)
    Bluetooth: IFBD-HB03/HB04      (Ver1.0.0 or later)

  [Emulation]
    - Star Line Mode
    - Raster Graphics Mode
    - ESC/POS Mode

    * In case print data is all graphics, recommend to use "Raster Graphics Mode".
      When the print data includes device font, use "Star Line Mode".
      Depending on model, support emulation is different. 
      Please refer to model list below.

    Star Line Mode:
      FVP10
      TSP650
      TSP650II
      TSP700II
      TSP800II
      SAC10

      Refer to the Star Line Mode Command Specifications manual for details of what
      commands are supported.
      This manual is freely available on the Star Micronics website.


    Raster Graphics Mode:
      TSP100LAN
      FVP10
      TSP650
      TSP650II
      TSP700II
      TSP800II
      TSP100U *
      TSP100GT *
      TSP100ECO *

      * Apple AirPort Express is required.

      Refer to section 3.4 "Raster Graphics Command Details" in the
      Star Line Mode Command Specifications manual. 
      This manual is freely available on the Star Micronics website.


    ESC/POS Mode (Portable Printer):
      SM-T300
      SM-S210I
      SM-S220I
      SM-T300I
      SM-T400I

      Refer to section 1 "Printer Control Function" in the
      Star Mobile Printer Command Specifications manual. 
      This manual is freely available on the Star Micronics website.


=====================================================================================
 4. Notification (For customers who are already using our SDK older than Ver.3.7.2)
=====================================================================================

    We have found phenomenon that port open failure occures in Bluetooth printers 
    in the following two cases:

      1. Download StarIO SDK older than Ver.3.7.2 from App Store and run under iOS7

      or

      2. Use SDK older than Ver.3.7.2 which was built with Xcode4 under iOS7

 
    The StarIO SDK Ver.3.8.0 has already fixed this issue and no problem happenes 
    even if built with Xcode4.
 
    When making application to refer SDK older than Ver.3.7.2 and experiencing 
    the above phenomenon, 
    please refer to following countermeasures:

    [Countermeasure]
    You can fix this phenomenon by applying one of the following countermeasures:
    
    - Build project with Xcode5

    - Change the application reference target as below: 
      Set text in UITextField quoting not from Designer but from code (such as viewDidLoad).

          (ex: IOS_SDKViewControllerLineMode.m   at line 101-118)

            - (void)viewDidLoad
            {
                [super viewDidLoad];

                (ellipsis)
    
                uitextfield_portname.text = @"BT:Star Micronics"; // add
            }


    Background of the phenomenon:

    When all the three conditions as below are met, we have confirmed the phenomenon that 
    the text in UITextField can not be  correctly obtained.
 
    (1) Arrange UITextField with Designer and put there some text with space(s) using 
        the Designer.
    (2) Build project with Xcode 4
    (3) Execute appliation under iOS7
    When all the above conditions are met, UITextField text property which are obtained 
    from the code will have space(s) turned into garbled or incorrect character(s).

    FYI, StarIO SDK older than Ver.3.7.2 contains spaces in the text because it has 
    mentioning like "BT:Star Micronics" or "BT:PRN Star" in itself.
    Consequently, in case that you execute SDK Ver.3.7.2 under iOS7, SDK main program 
    will fail to open the printer's port as the result of calling getPort::: API without 
    obtaining correct Port Name.


==============
 5. Copyright
==============

  Copyright 2013 Star Micronics Co., Ltd. All rights reserved.


====================
 6. Release History
====================
 Ver 3.8.0
  2013/09/20 :   - Added iOS 7 Support.
                 - Bug Fix:
                       When the power off POS printer (Bluetooth and LAN interface)
                       while printing, sometimes application may hang up.
                 - UI and other bugs fixed.

 Ver 3.7.2
  2013/08/13 :   - Added DK-AirCash(MFi) Support.
                 - [Bluetooth Portable Printer] Stability improvement of endCheckedBlock.

 Ver 3.7.1
  2013/07/04 :   - Added DK-AirCash Support.
                 - Added "disconnect" method and sample code.
                 - Modified to specify Bluetooth MAC Address to portName.
                 - Bug Fix:
                      (Bluetooth Portable Printer)
                      * endCheckedBlock and getParsed status sometimes does not work correctly.
                 [SDK]
                   - Added DK-AirCash Sample.
                   - Added sample code of bluetooth connection and disconnection.
                   - Bug Fix:
                       When tapped a button in alert continuously, the application does not work correctly.
                 [Manual]
                   - Added manual for DK-AirCash.
                   - Added description of "StarPrinterStatus" member.
                   - Added description of new API.(disconnect)
                   - Error correction
                 
 Ver 3.6.0
  2013/05/16 :   - TSP1000: End of support.
                 - Fixed warning.
                 - Fixed memory leak.
                 [SDK] 
                   - Added begin and endCheckedBlock to all printing process in SDK.
                   - Modified to show drawer status in "Check Status" button.
                   - Added "Drawer Open Status" function.
                 [Manual] 
                   - Correction of errors.

 Ver 3.4.0
  2013/02/12 : - Added iOS6.1 Support.
               - Added generateBitImageCommand: method to StarIO.framework.
               - Added SM-T300i and SM-T400i Support.
               - Added a switch to change the page mode setting.(Portable Printer)
               - Added the sample program to reduce the amount of transmitted data.
                 (POS Printer)

 Ver 3.3.0
  2013/01/18 : - Added SM-S210I(Bluetooth) and TSP650II(LAN/Bluetooth) support.
               - Added iPad support.
               - Added begin/endCheckedBlock method.(All printer)
               - Bug Fix (beginCheckedBlock and endCheckedBlock method)

 Ver 3.2.0
  2012/11/07 : - Added SM-S220I(Bluetooth) support.
               - Printable receipt of width 2 inches.
               - Added begin/endCheckedBlock method and sample code.(SM-S220I only)
               - Added connected property and sample code.(SM-S220I only)
               - [Bug Fix] Removed warnings from sample program.
                  (Change to UTF-8 character encoding for all files)

 Ver 3.1.0
  2012/10/02 : iPhone5 and iOS6 official support.
               - StarIO.framework: Built for armv7 and armv7s.
               - Sample Program: Required Xcode 4.5.
 Ver 3.0.1
  2012/10/02 : Added description of the system requirements.
               (Device, Xcode ver, iOS ver)

 Ver 3.0.0
  2012/08/31 : [Bug Fix] During data transmission, data lost occurs.(TCP/IP)
               Added AirPort Express support.(USB)
               Added discovery API "searchPrinter".
               Changed SDK UI to tree structure.
               Added sample receipt printing function to SDK.
 Ver 2.3.0
  2012/05/30 : [Bug Fix]
               When Sleep Mode is enabled, the SDK application crashes upon 
               sending commands to the printer.

 Ver 2.2.0
  2012/04/27 : Change default class name of StarIO from "Port" to "SMPort".
               Support Retina display with sample program.
               Add ARC supported sample program.

 Ver 2.1.0
  2012/01/12 : Added a new subject (Japanese Kanji) to functionality
               Added Japanese document

 Ver 2.0.0
  2011/12/09 : Supported Xcode 4
               Added English document

 Ver 1.2.1.1
  2011/06/03 : First release
