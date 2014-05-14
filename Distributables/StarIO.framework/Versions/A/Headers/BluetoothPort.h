//
//  BluetoothPort.h
//  StarIOPort
//
//  Created by u3237 on 12/11/27.
//
//

#import <Foundation/Foundation.h>
#import <ExternalAccessory/ExternalAccessory.h>

#ifdef TARGET_OS_IPHONE
#ifdef BUILDING_STARIO
#include <starmicronics/StarIOPort.h>
#else
#include <StarIO/starmicronics/StarIOPort.h>

#endif
#else
#include <starmicronics/StarIOPort.h>
#endif

enum Emulation {
    StarLineMode,
    ESCPOSMode
};

@interface BluetoothPort : NSObject<NSStreamDelegate> {
    NSString *portName_;
    NSString *portSettings_;
    u_int32_t timeout_;
    
    EAAccessory* _selectedAccessory;
    EASession* _session;
    
    NSMutableData *_writeData;
    NSMutableData *_readData;
    
    enum Emulation emulation;
}
@property(readonly, getter = isConnected) BOOL connected;
@property(readwrite) u_int32_t endCheckedBlockTimeoutMillis;

@property(retain, readonly) NSString* firmwareInformation;

- (id)initWithPortName:(NSString *)portName portSettings:(NSString *)portSettings timeout:(u_int32_t)timeout;
- (void)dealloc;
- (BOOL)open;
- (int)write:(NSData *)data;
- (int)writeWithRetry:(NSData *)data;
- (NSData *)read:(NSUInteger)bytesToRead;
- (BOOL)getParsedStatus:(StarPrinterStatus_2 *)starPrinterStatus level:(u_int32_t)level;
- (BOOL)getOnlineStatus:(BOOL *)onlineStatus;

/*!
 *  デバイスのファームウェア情報を取得する。取得した情報は、firmwareInformationプロパティに保存される。
 *
 *  @note   オフライン状態では失敗する。
 *  @return 成功時はYES, 失敗時はNOを返す。
 */
- (BOOL)retrieveFirmwareInformation;

/*!
 *  SAC10 Button Securityのタイムアウト時間を取得する。タイムアウト時間が設定されていれば、それをendCheckedBlockTimeoutMillisプロパティにセットする。
 *  @return     正常終了した場合は新しいendCheckedBlockTimeoutMillis[ミリ秒], 無効の場合は0, エラー発生時は-1を返す。
 */
- (NSInteger)retrieveButtonSecurityTimeout;
- (BOOL)beginCheckedBlock:(StarPrinterStatus_2 *)starPrinterStatus level:(u_int32_t)level;
- (BOOL)endCheckedBlock:(StarPrinterStatus_2 *)starPrinterStatus level:(u_int32_t)level;
- (BOOL)isConnected;
- (void)close;
- (BOOL)disconnect;

/*!
 *  データキャンセル開始コマンドを送信する。
 *
 *  @return 成功時はYES, 失敗時はNOを返す。
 */
- (BOOL)startDataCancel;

@end
