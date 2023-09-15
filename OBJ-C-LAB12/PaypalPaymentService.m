//
//  PaypalPaymentService.m
//  OBJ-C-LAB12
//
//  Created by Ts SaM on 15/9/2023.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentAmount:(NSInteger)amount {
    NSLog(@"Processing payment of $%ld via Paypal.", (long)amount);
    // Implement the actual payment processing logic for Paypal here
}

- (BOOL)canProcessPayment {
//    return arc4random_uniform(2) == 1;
    return YES;
}

@end
