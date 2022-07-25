#import "ViewController.h"
#import <AP_PaySDK/AP_PaySDK.h>
#import <AP_PaySDK/AP_PaySDK-Swift.h>
@import AP_PaySDK;

@interface ViewController () <PaySDKDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  PaySDK *paySDK = [PaySDK shared];
  // Do any additional setup after loading the view.
  paySDK.paymentDetails = [[PayData alloc] initWithChannelType: PayChannelDIRECT
                                                       envType: EnvTypeSANDBOX
                                                        amount: @"10"
                                                        payGate: PayGatePAYDOLLAR
                                                        currCode: CurrencyCodeHKD
                                                        payType: payTypeNORMAL_PAYMENT
                                                        orderRef: @"4b54d09b67e14c5ca7a9b576b2ff4644"
                                                        payMethod: @"ALIPAYHKAPP"
                                                        lang: LanguageENGLISH
                                                        merchantId: @"88146131"
                                                        remark: @""
                                                        payRef: @""
                                                        resultpage: @"F"
                                                        showCloseButton: true
                                                        showToolbar: true
                                                        webViewClosePrompt: @"Do you really want to close this page?"
                                                        extraData: nil];
  paySDK.delegate = self;
  [paySDK process];
}

- (void)paymentResultWithResult:(PayResult * _Nonnull)result {
  NSLog(@"RCTAsiaPayModule#paymentResultWithResult");
}

- (void)payMethodOptionsWithMethod:(PaymentOptionsDetail * _Nonnull)method {
  NSLog(@"RCTAsiaPayModule#payMethodOptionsWithMethod");
}

- (void)transQueryResultsWithResult:(TransQueryResults * _Nonnull)result {
  NSLog(@"RCTAsiaPayModule#transQueryResultsWithResult");
}

- (void)showProgress {
  NSLog(@"RCTAsiaPayModule#showProgress");
}

- (void)hideProgress {
  NSLog(@"RCTAsiaPayModule#hideProgress");
}
@end
