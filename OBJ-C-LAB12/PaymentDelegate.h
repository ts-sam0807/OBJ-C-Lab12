//
//  PaymentDelegate.h
//  OBJ-C-LAB12
//
//  Created by Ts SaM on 15/9/2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate <NSObject>

- (void)processPaymentAmount:(NSInteger)amount;
- (BOOL)canProcessPayment;

@end

NS_ASSUME_NONNULL_END
