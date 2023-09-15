//
//  PaymentGateway.m
//  OBJ-C-LAB12
//
//  Created by Ts SaM on 15/9/2023.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void)processPaymentAmount:(NSInteger)amount {
    if ([self.paymentDelegate canProcessPayment]) {
        [self.paymentDelegate processPaymentAmount:amount];
    } else {
        NSLog(@"Sorry, your payment cannot be processed at this time.");
    }
}

@end
