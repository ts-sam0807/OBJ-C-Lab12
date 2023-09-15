//
//  PaymentGateway.h
//  OBJ-C-LAB12
//
//  Created by Ts SaM on 15/9/2023.
//

#import <Foundation/Foundation.h>
#import "PaymentDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface PaymentGateway : NSObject

@property (weak, nonatomic) id<PaymentDelegate> paymentDelegate;

- (void)processPaymentAmount:(NSInteger)amount;

@end

NS_ASSUME_NONNULL_END
