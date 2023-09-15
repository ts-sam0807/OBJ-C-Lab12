//
//  main.m
//  OBJ-C-LAB12
//
//  Created by Ts SaM on 15/9/2023.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int randomAmount = arc4random_uniform(901) + 100;
        
        printf("Thank you for shopping at Acme.com. Your total today is $%d. Please select your payment method:\n", randomAmount);
        printf("1: Paypal, 2: Stripe, 3: Amazon\n");
        
        int userInput;
        scanf("%d", &userInput);
        
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
        id<PaymentDelegate> selectedPaymentService;

        switch (userInput) {
            case 1:
                selectedPaymentService = [[PaypalPaymentService alloc] init];
                break;
            case 2:
                selectedPaymentService = [[StripePaymentService alloc] init];
                break;
            case 3:
                selectedPaymentService = [[AmazonPaymentService alloc] init];
                break;
            case 4:
                selectedPaymentService = [[ApplePaymentService alloc] init];
                break;
            default:
                NSLog(@"Invalid payment method selected.");
                return 1;
        }

        paymentGateway.paymentDelegate = selectedPaymentService;
        [paymentGateway processPaymentAmount:randomAmount];
        
    }
    return 0;
}
