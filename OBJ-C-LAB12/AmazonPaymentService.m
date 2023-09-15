//
//  AmazonPaymentService.m
//  OBJ-C-LAB12
//
//  Created by Ts SaM on 15/9/2023.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)processPaymentAmount:(NSInteger)amount {
    NSLog(@"Processing payment of $%ld via Amazon Payment.", (long)amount);
}

- (BOOL)canProcessPayment {
//    return arc4random_uniform(2) == 1;
    return YES;
}

@end
