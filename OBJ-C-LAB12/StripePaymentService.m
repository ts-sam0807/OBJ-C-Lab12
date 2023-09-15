//
//  StripePaymentService.m
//  OBJ-C-LAB12
//
//  Created by Ts SaM on 15/9/2023.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void)processPaymentAmount:(NSInteger)amount {
    NSLog(@"Processing payment of $%ld via Stripe.", (long)amount);
}

- (BOOL)canProcessPayment {
//    return arc4random_uniform(2) == 1;
    return YES;
}

@end
