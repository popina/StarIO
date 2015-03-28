StarIOPrintSDK
==============

Star Micronics iOS Print SDK

************************************************************
      StarIO for iOS Ver.3.13.1
         Readme_En.txt             Star Micronics Co., Ltd. 
************************************************************


 1. Overview
 2. Ver 3.13.1 Changes
 3. Contents
 4. Scope
 5. Remarks
 6. Copyright
 7. Release History


=============
 1. Overview
=============

   This package contains StarIO and its SDK.
   StarIO is a library for supporting to develope application for Star printers.

      StarIO.framework version:  1.19.2
      Supported OS:  iOS 5.1.1 - 8.2

   Please refer to document including this package for details.

=======================
 2. Ver 3.13.1 Changes
=======================

  [StarIO]
   - Fixed memory leak bug

   - Fixed Bluetooth searchPrinter API bug.
     Application may crash if bluetooth printer is turned off
     during the searchPrinter API is executing.

  [SDK]
   - Fixed issue of leaving blank space in the lower part of image
     printing using StarBitmap class with mobile printer.
   - Deleted 32bit build from target.
     (32 and 64 bit are suppored by one build.)

=============
 3. Contents
=============

  StarIO_iOS_SDK_V3_13_1_20150316
  |
  | Readme_En.txt                       // Release Note(English)
  | Readme_Jp.txt                       // Release Note(Japanese)
  | SoftwareLicenseAgreement.pdf        // Software License Agreement(English)
  | SoftwareLicenseAgreement_jp.pdf     // Software License Agreement(Japanese)
  |
  +- Documents
  |  +- README_StarIO_PortablePrinter_iOS_SDK.pdf     // Master help file (English:  Portable Printer)
  |     README_StarIO_PortablePrinter_iOS_SDK_Jp.pdf  // Master help file (Japanese: Portable Printer)
  |     README_StarIO_POSPrinter_iOS_SDK.pdf          // Master help file (English:  Desktop Printer)
  |     README_StarIO_POSPrinter_iOS_SDK_Jp.pdf       // Master help file (Japanese: Desktop Printer)
  |     README_StarIO_DK-AirCash_iOS_SDK.pdf          // Master help file (English:  DK-AirCash)
  |     README_StarIO_DK-AirCash_iOS_SDK_Jp.pdf       // Master help file (Japanese: DK-AirCash)
  |     StarMicronics_POSPrinters_Mac_Ethernet.pdf    // Master help file (English:  Desktop Printer)
  |
  +- Distributables
  |  +- StarIO.framework                // framework (v1.19.2)
  |
  +- Samples
    +- IOS_SDK.xcodeproj                // project file for sample program (v3.13.1)
       StarIO.framework                 // framework (v1.19.2)
       IOS_SDK                          // sample program


=================
 4. Scope
=================
  [OS]
    iOS 5.1.1 - 8.2

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
    SAC10               (LAN         : Ver2.0 or later)
                        (Bluetooth   : Ver1.0 or later)
                        (Wireless LAN: Ver3.0 or later)

  [Interface]
    LAN:       IFBD-HE07/HE08/BE07 (Ver2.0.0 or later)
    Bluetooth: IFBD-HB03/HB04      (Ver1.0.0 or later)

  [Emulation]
    - Star Line Mode
    - Raster Graphics Mode
    - ESC/POS Mode

    * In case print data is all graphics, recommend to use 
      "Raster Graphics Mode".
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

         Refer to the Star Line Mode Command Specifications manual for details 
         of what commands are supported.
         This manual is freely available on the Star Micronics website.

      SP700

         Refer to the Star Command Specifications manual for details
         of what commands are supported.
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
         Star Portable Printer Command Specifications manual. 
         This manual is freely available on the Star Micronics website.


 =============
  5. Remarks
 =============

  1. Limitation of SAC10 F/W Ver.1.0

     The usage with following conditions on the SAC10 will require F/W 2.0 or later.
     Please confirm the F/W version of the SAC10 before using StarIO.
       - Use LAN interface
       - Use getDipSwitchInformation method

     You can confirm the F/W version by “Star Setting Utility”.
     Star Setting Utility is available on the App Store.

     When Star Setting Utility is executed, it will automatically detect 
     SAC10 online and list them up.
     Tapping SAC10 on the list, SAC10 configuration window will activated in 
     Web browser. Tapping [Display Status] - [Firmware Info.] on the window, 
     “Main F/W” box will show the F/W version. 

     If you use Telnet for this procedure, please refer to the 
     “Product Specifications Manual SAC10 Series".


  2. Limitation of getting MAC Address for Bluetooth printers with iOS 7

     Under the iOS 7, you cannot use Bluetooth MAC Address to specify a 
     printer among multiple paired printers.

     Consequently you will be lost among multiple printers paired to iOS, 
     unable to identify the printer receiving the print data.

       [How to specify a printer among mulitple printers]

         (In usage between TSP654II-Bluetooth and SAC10)
          "Star Setting Utility" is capable of naming each printer's iOS 
          port. Use this function to identify printers.
          You can download "Star Setting Utility" from App Store.

         (Portable printers)
          1. Those customers who are already using multiple printers with 
             one iOS6 terminal;
             please refrain from updating the OS to iOS7.

          2. Those customers who are going to use our SDK under iOS7;
             please do not use multiple printers with one iOS7 terminal. 
             Keep one-to-one comibination.

       No countermeasure is found at this moment for the usage out of these 
       conditions.



==============
 6. Copyright
==============

  Copyright 2015 Star Micronics Co., Ltd. All rights reserved.


====================
 7. Release History
====================

  Ver 3.13.1
   2015/03/09 : [StarIO]
                - Fixed memory leak bug
                - Fixed Bluetooth searchPrinter API bug.
                  Application may crash if bluetooth printer is turned off
                  during the searchPrinter API is executing.

                [SDK]
                 - Fixed issue of leaving blank space in the lower part of image
                   printing using StarBitmap class with mobile printer.

                 - Deleted 32bit build from target.
                   (32 and 64 bit are suppored by one build.)

  Ver 3.13.0
   2014/10/23 : Support SAC10 Wireless LAN model

                [StarIO]
                  Improve processing speed of beginCheckedBlock API for POS printers.

                [SDK]
                  Fix the bug which displays additional blanks on iOS8 with iPad.

                [Manual]
                  Add SAC10 Wireless LAN model description.

  Ver 3.12.0
   2014/09/10 : [StarIO]
                  - Added API to get DIP-SW setting configuration for SAC10.
                  - Added API to get StarIO version.
                  - Revised StarIO to minimize the time to start to print
                    with Bluetooth POS printers.

                [SDK]
                  - Added SP700.
                  - Added Sample receipt of Traditional Chinese and Simplified Chinese.
                    (* Portable Printers only add Sample receipt of Traditional Chinese.)
                  - Added Image File Printing sample code in Thermal Printer Raster Mode

                [Manual]
                 - Added descriptions of above additional functions.

  Ver 3.10.3
   2014/07/23  : [StarIO]
                  - Bug Fix:
                      [Bluetooth]
                        Fixed the issue that,
                        Calling repeatedly getPort before calling releasePort,
                        disrupts Bluetooth communication.

                  - Added function to set timeout value for Data cancel function by
                    timeout.  Default: 3 sec. (*1)

                    *1: Supported Printer model/ F/W version
                        - TSP650II F/W higher than 2.0
                        - TSP700II F/W higher than 5.0
                        - TSP800II F/W hither than 2.0

                  - Throw exception when detect Bluetooth communication disconnection by
                    beginCheckedBlock method.

                  - Set timeout value to 10 sec. even when set less than 10 sec. by getPort method.
 
                 [Manual]
                  - Added description about data timeout function.
  
  Ver 3.10.2
   2014/06/24  : [StarIO]
                  - Bug Fix:
                    [Desktop Printer + LAN] Sometimes beginCheckedBlock method 
                                            returns an incorrect status.
                    
                 [SDK]
                  - Fixed. The issue that Raster Printing takes long time 
                    with POS printers compared to SDK V3.9.0.

  Ver 3.10.1
   2014/04/28  : [StarIO]
                 - Added Bluetooth communication support on iOS7.1.
                 - Added model name / firmware get API.
                   (getFirmwareInformation method)
                 - Improved so that begin/endCheckedBlock is available for 
                   SM-T300WLAN  F/W2.3 or older.
                 - Fixed the issue with the Ver.3.9.0 that USB printers via 
                   AirPort can not print.
                 - Added button security function for SAC10.

                 [Manual]
                 - Added description of the above new features of the above.

 Ver 3.9.0
  2013/12/05 :   [StarIO]
                 - Added arm64 CPU(iPhone 5s, iPad Air, iPad mini Retina 
                   Display model) support.
                 - Changed support OS version. 
                   (iOS 4.3 or later -> iOS 5.1.1 or later)
                 - Added bluetooth setting API.(SMBluetoothManager class)
                 - Renamed generateBitImageCommand to compressRasterData.
                 - Improved the reliability of searchPrinter API.
                 - Added endCheckedBlockTimeoutMillis property.
                 - Bug Fix:
                   - [Portable printer] For the return value of getParsedStatus, 
                     headThermistorError and slipTOF becomes an undefined value.

                 [SDK]
                 - Added "Open Cash Drawer 2".

                 [Manual]
                 - Added a description of the additional features of the above.
                 - Error correction.

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
