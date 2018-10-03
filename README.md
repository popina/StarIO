************************************************************
      StarIO for iOS SDK Ver 3.17.3
         Readme_En.txt             Star Micronics Co., Ltd. 
************************************************************


 1. Overview
 2. Ver 3.17.3 Changes
 3. Contents
 4. Scope
 5. Remarks
 6. Copyright
 7. Release History


=============
 1. Overview
=============

   This package contains StarIO and its SDK.
   StarIO is a library for supporting to develop application for Star printers.

      StarIO.framework version:  2.3.3
      Supported OS:  iOS 7.0 - 11.2.5

   Please refer to document including this package for details.


=======================
 2. Ver 3.17.3 Changes
=======================
                  
  [StarIO]
   - Changed to be able to get the firmware version of TSP100IIILAN and TSP100IIIW
     with the getFirmwareInformation method.
   - Fixed a bug that when TSP100IIIU and TSP100IIIBI are connected to iOS device
     at the same time, printing may be performed from TSP100IIIU despite printing to
     TSP100IIIBI.


=============
 3. Contents
=============

  StarIO_iOS_SDK_V3_17_3_20180206
  |
  | Readme_En.txt                       // Release Note (English)
  | Readme_Jp.txt                       // Release Note (Japanese)
  | SoftwareLicenseAgreement.pdf        // Software License Agreement (English)
  | SoftwareLicenseAgreement_jp.pdf     // Software License Agreement (Japanese)
  |
  +- Documents
  |  +- StarIO_ESCPOS_PortablePrinter_iOS_SDK.pdf     // Master help file (English:  Portable Printer [ESC/POS Mode])
  |     StarIO_ESCPOS_PortablePrinter_iOS_SDK_Jp.pdf  // Master help file (Japanese: Portable Printer [ESC/POS Mode])
  |     StarIO_POSPrinter_iOS_SDK.pdf                 // Master help file (English:  Desktop Printer)
  |     StarIO_POSPrinter_iOS_SDK_Jp.pdf              // Master help file (Japanese: Desktop Printer)
  |     StarIO_StarPRNT_iOS_SDK.pdf                   // Master help file (English:  Portable Printer [StarPRNT Mode])
  |     StarIO_StarPRNT_iOS_SDK_Jp.pdf                // Master help file (Japanese: Portable Printer [StarPRNT Mode])
  |     StarIO_DK-AirCash_iOS_SDK.pdf                 // Master help file (English:  DK-AirCash)
  |     StarIO_DK-AirCash_iOS_SDK_Jp.pdf              // Master help file (Japanese: DK-AirCash)
  |     StarIO_ProxiPRNT_iOS_SDK.pdf                  // Master help file (English:  ProxiPRNT)
  |     ProxiPRNT_UsersGuide_en.pdf                   // Users Guide for ProxiPRNT (English:  ProxiPRNT)
  |     StarMicronics_POSPrinters_Mac_Ethernet.pdf    // Master help file (English:  Desktop Printer)
  |
  +- Software
　   +- Distributables
     |  +- StarIO.framework                 // StarIO.framework (Ver 2.3.3)
     |     StarIO_Extension.framework       // StarIO_Extension.framework (Ver 1.8.0)
     |     SMCloudServices.framework        // SMCloudServices.framework (Ver 1.4.4)
     |
     +- Samples
        +- IOS_SDK                          // sample program
           IOS_SDK.xcodeproj                // project file for sample program (Ver 3.17.3)
           StarIO.framework                 // StarIO.framework (Ver 2.3.3)
           StarIO_Extension.framework       // StarIO_Extension.framework (Ver 1.8.0)
           SMCloudServices.framework        // SMCloudServices.framework (Ver 1.4.4)


=================
 4. Scope
=================
  [OS]
    iOS 7.0 - 11.2.5

  [Printer Model]
    SM-S210I            (Ver 1.0 or later)
    SM-S220I            (Ver 2.0 or later)
    SM-S230I            (Ver 1.0 or later)
    SM-T300             (Ver 1.1 or later)
    SM-T300I            (Ver 2.4 or later)
    SM-T400I            (Ver 2.4 or later)
    SM-L200             (Ver 1.0 or later)
    SM-L300             (Ver 1.0 or later)
    TSP100U *           (Ver 1.3 or later)
    TSP100GT *          (Ver 1.0 or later)
    TSP100ECO *         (Ver 1.0 or later)
    TSP100LAN           (Ver 2.0 or later)
    TSP100IIIBI         (Ver 1.0 or later)
    TSP100IIIW          (Ver 1.0 or later)
    TSP100IIILAN        (Ver 1.0 or later)
    TSP100IIIU          (Ver 1.0 or later)
    FVP10               (Ver 1.2 or later)
    TSP650              (Ver 3.0 or later)
    TSP650II            (Ver 1.0 or later)
    TSP700II            (Ver 3.0 or later)
    TSP800II            (Ver 1.2 or later)
    POP10(mPOP)         (Ver 1.0 or later)

    * Requires Apple Airport Express

  [DK-AirCash]
    SAC10               (LAN         : Ver 2.0 or later)
                        (Bluetooth   : Ver 1.0 or later)
                        (Wireless LAN: Ver 3.0 or later)

  [Interface]
    LAN:       IFBD-HE07/HE08/BE07 (Ver 2.0.0 or later)
    Bluetooth: IFBD-HB03/HB04      (Ver 1.0.0 or later)

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

      SM-S210i (F/W 3.0 or later)
      SM-S220i (F/W 3.0 or later)
      SM-S230i
      SM-T300i (F/W 3.0 or later)
      SM-T400i (F/W 3.0 or later)
      SM-L200
      SM-L300
      POP10(mPOP)

         Refer to the StarPRNT Command Specifications manual for details
         of what commands are supported.
         This manual is freely available on the Star Micronics website.

    Raster Graphics Mode:
      TSP100LAN
      TSP100IIIBI
      TSP100IIIW
      TSP100IIILAN
      TSP100IIIU
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

      SM-S210i (F/W 3.0 or later)
      SM-S220i (F/W 3.0 or later)
      SM-S230i
      SM-T300i (F/W 3.0 or later)
      SM-T400i (F/W 3.0 or later)
      SM-L200
      SM-L300

         Refer to section 2.3.8 "Bit Image Graphics" in the
         StarPRNT Command Specifications manual. 
         This manual is freely available on the Star Micronics website.

    ESC/POS Mode (Portable Printer):
      SM-T300
      SM-S210i      
      SM-S220i
      SM-S230i
      SM-T300i
      SM-T400i

         Refer to section 1 "Printer Control Function" in the
         Star Portable Printer Command Specifications manual. 
         This manual is freely available on the Star Micronics website.

    [Cash Drawer]
     - SAC10/SAC10 Wireless LAN

      Refer to the Specification manuals for details of what
      commands are supported.
      This manual is available on the Star Micronics website.


 =============
  5. Remarks
 =============

  1. Limitation of SAC10 F/W Ver 1.0

     The usage with following conditions on the SAC10 will require F/W 2.0 or later.
     Please confirm the F/W version of the SAC10 before using StarIO.
       - Use LAN interface
       - Use getDipSwitchInformation method

     You can confirm the F/W version by "Star Setting Utility".
     Star Setting Utility is available on the App Store.

     When Star Setting Utility is executed, it will automatically detect 
     SAC10 online and list them up.
     Tapping SAC10 on the list, SAC10 configuration window will activated in 
     Web browser. Tapping [Display Status] - [Firmware Info.] on the window, 
     "Main F/W" box will show the F/W version. 

     If you use Telnet for this procedure, please refer to the 
     "Product Specifications Manual SAC10 Series".

  2. Notification in case of SM-L Series

     It could take some time when an iOS device tries to connect to a printer via "Bluetooth Low Energy".
     Refer to the "getPort API" section on the PDF manual for details.

  3. When using printer with Bluetooth Interface, please do not change the memory switch setting of "ASB Status" 
     from default value(invalid). (Bank 7/Bit C)

  4. In iOS 10.0 - 10.2.1 and 11.0 - 11.2.2, when using a Bluetooth printer, in rare cases, an error occurs
     when getPort, begin / endCheckedBlock is called, and thereafter the printer can not be discovered by
     the searchPrinter API. At this time, "Connected" is displayed in "Settings" - "Bluetooth", but the
     printer will not be displayed in "General" - "Information".

         [Restoration Method]

         Power off the printer once, or disconnect and reconnect Bluetooth from "Setting" app.

  5. It has been reported that the following models go out of service after getting unable to be 
     recognized by applications when "releasePort" is executed before all of a large volume data using 
     "writePort" is completely sent to the printer:

     - SM-S210i (Firmware 3.1 or higher)
     - SM-S230i (Firmware 1.3)
     - SM-T300i (Firmware 3.1 or higher)
     - SM-T400i (Firmware 3.1 or higher)

     The following product also may lose Bluetooth connection in the same condition.

     - mPOP

     (the issue is already reported to Apple)

     Star IO SDK loops writePort until the data is completely sent in sendCommands method included in 
     the PrinteFunctions class and MiniPrinterFunctions class but it is designed to make releasePort 
     in case that it fails to send all the data within the designated time (*1) and in the result the 
     above issue can happen.

     In order to eliminate the issue, please designate a proper length of time enough to complete the 
     print data sending, if you prefer your application to make the above procedure.

     (*1) This is defined by "endTime.tv_sec" in the "sendCommand" method of the sample source code.

     For your information, if the printer goes out of service, you can shut down the connection on 
     the "Bluetooth" window of the setting screen and connect again, then the printer will come back. 

     Even if Bluetooth loses connection, with the Auto Connection function enabled, the connection 
     will be recovered automatically. Otherwise you will have to re-connect manually on the iOS "setting" window.

  6. In iOS 11, set sleep to avoid a problem which sometimes cannot communicate with Bluetooth.
     Under our test environment, 0.2 sec sleep time is enough to avoid this problem.
     The appropriate sleep time is different depending on the environment.
     Please check under your own environment and set appropriate time for each environment.

  7. The libraries in this package are built in Xcode 9.2.
     If your application or library is built in other version of Xcode, and the version of Bitcode
     is different from ours, a problem may occur in application Archive.

     In this case, check Xcode version number, and use same version of Xcode as ours, or invalid Bitcode.
     You can change Bitcode settings from project setting,
     “Build Settings” - “Build Options” - “Enable Bitcode” setting.
     Change it to “No”.


==============
 6. Copyright
==============

  Copyright 2018 Star Micronics Co., Ltd. All rights reserved.


====================
 7. Release History
====================

   Ver 3.17.3
   2018/02/06 : [StarIO]
                  - Changed to be able to get the firmware version of TSP100IIILAN and TSP100IIIW
                    with the getFirmwareInformation method.
                  - Fixed a bug that when TSP100IIIU and TSP100IIIBI are connected to iOS device
                    at the same time, printing may be performed from TSP100IIIU despite printing to
                    TSP100IIIBI.

   Ver 3.17.2
   2017/10/31 : [Support OS]
                  - Added iOS 11 Support.
                  
                [StarIO.framework]
                  - Improved reliability of BLE 's getPort method.
                  - [ESC/POS mode + LAN] Bug Fix: When a printer error occurs during printing, 
                    the endCheckedBlock API throws an exception.

                [StarIO_Extension.framework]
                  - iOS 11
                    - Bug Fix: Printer may not be recognized.

                [SMCloudServices.framework]
                  - iOS 11
                    - Bug Fix: The close button is displayed larger than the original size.

		[StarIO SDK]
                  - iOS 11
                    - Bug Fix: Printer may not be recognized.

   Ver 3.17.1
   2017/08/16 :  [StarIO]
                 - Improved communication reliability with SM-T300DW.

   Ver 3.17.0
   2017/03/31 :  [StarIO]
                 - Added support of TSP100IIIU and SM-L300.
                 - The performance when the getPort method failed on Ethernet was improved.

   Ver 3.16.3 
   2017/02/08 :  [StarIO]
                 Fixed bluetooth communication failure with portable printer when portable printer is 
                 ESC/POS and in Sniff Mode.
                 
   Ver 3.16.2
   2017/01/19 :  [StarIO]
                 Bug Fix:
                 - The apply method in SMBluetoothManager class is failed to perform 
                   for mobile printer and mPOP.
                 - Debug communication failure while Bluetooth printer in Sniff Mode. 
                 - iOS 9
                     - Debug failure in API which was generated after getPort.
                 - iOS 10
                     - Fixed problem in SM-S210i, SM-S220i, SM-T300i and SM-T400i, 
                       when Raster data is printed out printing succeeds at the first time, 
                       but failed from the second time.
                     - Fixed problem in SM-L200, when getPort I performe immediately after 
                       releasePort, it takes time to connect an it failes in the connection 
                       according to the value of time out.


   Ver 3.16.0
   2016/03/18 :  [SDK]
                 - Added AllReceipts sample code to Star Raster Mode view.

   Ver 3.15.2
   2016/01/18 :  - Fixed following issues.
                   - When the printer is turned off before calling beginCheckedBlock or releasePort, 
                     sometimes API does not return response for a while.
                   - When the printer is disconnected before calling beginCheckedBlock, the last beginCheckedBlock
                     sometimes fails.

   Ver 3.15.1
   2015/12/08 :  - Fixed bug
                     When printing approx. 300 lines of test data using SM-L200, application is crashed 
                     due to the increase of memory usage.

   Ver 3.15.0
   2015/09/30 :  - Support POP10(mPOP)
                 - Support ProxiPRNT (It requires the BLE device/BLED10-U(*1))
                 - Can use BLE MAC address as portName.
                 - Fixed bug, BLE printer could not work with iOS 6.
                 - Added bitcode support.
                 - Reduced file size of the StarIO.framework.

                 [SDK]
                 - Added POP10(mPOP)
                 - Added the ProxiPRNT button
                 - Added the ProxiPRNT API (StarProxiPRNTManager class)
                 - Fixed following problem with iOS 9
                   - "StarIO SDK" app crashes when specific fonts are selected in "Raster Graphics Text Printing" view.
                   - "StarIO SDK" app crashes when selected "Sample Receipt"(Japanese) in "Star Raster Mode" view.

                 [Manual]
                 - Added POP10(mPOP) description in StarIO_StarPRNT_Android_SDK.pdf
                 - Added SDK Manual for ProxiPRNT
                 - Changed the manual names(*2)
                    SDK Manual for Portable Printers(ESC/POS mode)
                    SDK Manual for Portable Printers(StarPRNT mode)/mPOP
                    SDK Manual for POS Printers
                    SDK Manual for DK-AirCash 

                 *1: BLED10-U is the BLE USB-dongle for ProxiPRNT.
                     Device Compatibility: Android Ver4.3 or later and BLE support
                 *2: See "Documents" in "3. Contents" for the detail.

  Ver 3.14.1
   2015/07/17:  [SDK]
                - Added Sample Receipts function for UTF-8.
                - Added TextFormatting function for UTF-8.
               (*) Please refer to manual for models and supported firmware information.

  Ver 3.14.0
   2015/04/30:  - Add SM-L200 & SM-S230i.
                - Support StarPRNT Mode (Star Line Mode/Star Raster Graphic Mode).
                - Support Bluetooth setting fuction for Portable printers.
                - Support OS: iOS 6.0 or later.

                [StarIO]
                - Add portSetting parameter format.

                [SDK]
                - Add French, Portuguese, Spanish & Russian sample receipt.
                - Optimization for iPhone 6/6 plus.

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
                   SM-T300WLAN  F/W 2.3 or older.
                 - Fixed the issue with the Ver 3.9.0 that USB printers via 
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
