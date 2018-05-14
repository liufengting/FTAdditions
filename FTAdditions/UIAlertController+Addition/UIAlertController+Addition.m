//
//  UIAlertController+Addition.m
//  FTAdditionsDemo
//
//  Created by liufengting on 2018/5/14.
//  Copyright © 2018年 liufengting. All rights reserved.
//

#import "UIAlertController+Addition.h"

@implementation UIAlertController (Addition)

+ (UIAlertController *)alertWithTitle:(NSString *)title message:(NSString *)message buttonArray:(NSArray<NSString *> *)buttonArray completion:(void(^)(NSInteger selectedIndex))completion
{
    return [self alertControllerWithTitle:title
                                  message:message
                                    style:UIAlertControllerStyleAlert
                               showCancel:NO
                              buttonArray:buttonArray
                                   cancel:NULL
                               completion:completion];
}
+ (UIAlertController *)alertWithTitle:(NSString *)title message:(NSString *)message buttonArray:(NSArray<NSString *> *)buttonArray cancel:(void(^)(void))cancel completion:(void(^)(NSInteger selectedIndex))completion
{
    return [self alertControllerWithTitle:title
                                  message:message
                                    style:UIAlertControllerStyleAlert
                               showCancel:YES
                              buttonArray:buttonArray
                                   cancel:cancel
                               completion:completion];
}


+ (UIAlertController *)actionSheetWithTitle:(NSString *)title message:(NSString *)message buttonArray:(NSArray<NSString *> *)buttonArray completion:(void(^)(NSInteger selectedIndex))completion
{
    return [self alertControllerWithTitle:title
                                  message:message
                                    style:UIAlertControllerStyleActionSheet
                               showCancel:NO
                              buttonArray:buttonArray
                                   cancel:NULL
                               completion:completion];
}

+ (UIAlertController *)actionSheetWithTitle:(NSString *)title message:(NSString *)message buttonArray:(NSArray<NSString *> *)buttonArray cancel:(void(^)(void))cancel completion:(void(^)(NSInteger selectedIndex))completion
{
    return [self alertControllerWithTitle:title
                                  message:message
                                    style:UIAlertControllerStyleActionSheet
                               showCancel:YES
                              buttonArray:buttonArray
                                   cancel:cancel
                               completion:completion];
}

+ (UIAlertController *)alertControllerWithTitle:(NSString *)title message:(NSString *)message style:(UIAlertControllerStyle)style showCancel:(BOOL)showCancel buttonArray:(NSArray<NSString *> *)buttonArray cancel:(void(^)(void))cancel completion:(void(^)(NSInteger selectedIndex))completion
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title
                                                                             message:message
                                                                      preferredStyle:style];
    for (NSInteger i = 0; i < buttonArray.count; i++) {
        UIAlertAction * action = [UIAlertAction actionWithTitle:buttonArray[i]
                                                          style:UIAlertActionStyleDefault
                                                        handler:^(UIAlertAction * _Nonnull action) {
                                                            if (completion) {
                                                                completion([buttonArray indexOfObject:action.title]);
                                                            }
                                                        }];
        [alertController addAction:action];
    }
    if (showCancel) {
        UIAlertAction * cancelAction = [UIAlertAction actionWithTitle:@"取消"
                                                                style:UIAlertActionStyleCancel
                                                              handler:^(UIAlertAction * _Nonnull action) {
                                                                  if (cancel) {
                                                                      cancel();
                                                                  }
                                                              }];
        [alertController addAction:cancelAction];
    }
    return alertController;
}

@end

@implementation UIViewController (AlertBlocks)

- (void )alertWithTitle:(NSString *)title message:(NSString *)message buttonArray:(NSArray<NSString *> *)buttonArray completion:(void(^)(NSInteger selectedIndex))completion
{
    [self alertControllerWithTitle:title
                           message:message
                             style:UIAlertControllerStyleAlert
                        showCancel:NO
                       buttonArray:buttonArray
                            cancel:NULL
                        completion:completion];
}
- (void )alertWithTitle:(NSString *)title message:(NSString *)message buttonArray:(NSArray<NSString *> *)buttonArray cancel:(void(^)(void))cancel completion:(void(^)(NSInteger selectedIndex))completion
{
    return [self alertControllerWithTitle:title
                                  message:message
                                    style:UIAlertControllerStyleAlert
                               showCancel:YES
                              buttonArray:buttonArray
                                   cancel:cancel
                               completion:completion];
}

- (void )actionSheetWithTitle:(NSString *)title message:(NSString *)message buttonArray:(NSArray<NSString *> *)buttonArray completion:(void(^)(NSInteger selectedIndex))completion
{
    return [self alertControllerWithTitle:title
                                  message:message
                                    style:UIAlertControllerStyleActionSheet
                               showCancel:NO
                              buttonArray:buttonArray
                                   cancel:NULL
                               completion:completion];
}

- (void )actionSheetWithTitle:(NSString *)title message:(NSString *)message buttonArray:(NSArray<NSString *> *)buttonArray cancel:(void(^)(void))cancel completion:(void(^)(NSInteger selectedIndex))completion
{
    return [self alertControllerWithTitle:title
                                  message:message
                                    style:UIAlertControllerStyleActionSheet
                               showCancel:YES
                              buttonArray:buttonArray
                                   cancel:cancel
                               completion:completion];
}

- (void )alertControllerWithTitle:(NSString *)title message:(NSString *)message style:(UIAlertControllerStyle)style showCancel:(BOOL)showCancel buttonArray:(NSArray<NSString *> *)buttonArray cancel:(void(^)(void))cancel completion:(void(^)(NSInteger selectedIndex))completion
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title
                                                                             message:message
                                                                               style:style
                                                                          showCancel:showCancel
                                                                         buttonArray:buttonArray
                                                                              cancel:cancel
                                                                          completion:completion];
    [self presentViewController:alertController animated:YES completion:NULL];
}

@end
