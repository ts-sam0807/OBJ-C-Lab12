//
//  ApplePaymentService.m
//  OBJ-C-LAB12
//
//  Created by Ts SaM on 15/9/2023.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (void)processPaymentAmount:(NSInteger)amount {
    NSLog(@"Processing payment of $%ld via Apple Payment.", (long)amount);
}

- (BOOL)canProcessPayment {
//    return arc4random_uniform(2) == 1;
    return YES;
}

@end
