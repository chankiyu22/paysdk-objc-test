#import "ViewController.h"
#import <AP_PaySDK/AP_PaySDK.h>
#import <AP_PaySDK/AP_PaySDK-Swift.h>
@import AP_PaySDK;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  PaySDK *paySDK = [PaySDK shared];
  // Do any additional setup after loading the view.
  paySDK.paymentDetails = [[PayData alloc] initWithChannelType: PayChannelWEBVIEW
                                                       envType: EnvTypeSANDBOX
                                                        amount: @"10"
                                                        payGate: PayGatePAYDOLLAR
                                                        currCode: CurrencyCodeHKD
                                                        payType: payTypeNORMAL_PAYMENT
                                                        orderRef: @"abcde12345"
                                                        payMethod: @"CC"
                                                        lang: LanguageENGLISH
                                                        merchantId: @"1"
                                                        remark: @""
                                                        payRef: @""
                                                        resultpage: @"F"
                                                        showCloseButton: true
                                                        showToolbar: true
                                                        webViewClosePrompt: @"Do you really want to close this page?"
                                                        extraData: nil];
}


@end
