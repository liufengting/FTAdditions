//
//  UIAlertController+Addition.h
//  FTAdditionsDemo
//
//  Created by liufengting on 2018/5/14.
//  Copyright © 2018年 liufengting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (Addition)

+ (UIAlertController *)alertWithTitle:(NSString *)title
                              message:(NSString *)message
                          buttonArray:(NSArray<NSString *> *)buttonArray
                           completion:(void(^)(NSInteger selectedIndex))completion;

+ (UIAlertController *)alertWithTitle:(NSString *)title
                              message:(NSString *)message
                          buttonArray:(NSArray<NSString *> *)buttonArray
                               cancel:(void(^)(void))cancel
                           completion:(void(^)(NSInteger selectedIndex))completion;

+ (UIAlertController *)actionSheetWithTitle:(NSString *)title
                                    message:(NSString *)message
                                buttonArray:(NSArray<NSString *> *)buttonArray
                                 completion:(void(^)(NSInteger selectedIndex))completion;

+ (UIAlertController *)actionSheetWithTitle:(NSString *)title
                                    message:(NSString *)message
                                buttonArray:(NSArray<NSString *> *)buttonArray
                                     cancel:(void(^)(void))cancel
                                 completion:(void(^)(NSInteger selectedIndex))completion;

+ (UIAlertController *)alertControllerWithTitle:(NSString *)title
                                        message:(NSString *)message
                                          style:(UIAlertControllerStyle)style
                                     showCancel:(BOOL)showCancel
                                    buttonArray:(NSArray<NSString *> *)buttonArray
                                         cancel:(void(^)(void))cancel
                                     completion:(void(^)(NSInteger selectedIndex))completion;

@end

@interface UIViewController (AlertBlocks)

- (void )alertWithTitle:(NSString *)title
                message:(NSString *)message
            buttonArray:(NSArray<NSString *> *)buttonArray
             completion:(void(^)(NSInteger selectedIndex))completion;

- (void )alertWithTitle:(NSString *)title
                message:(NSString *)message
            buttonArray:(NSArray<NSString *> *)buttonArray
                 cancel:(void(^)(void))cancel
             completion:(void(^)(NSInteger selectedIndex))completion;

- (void )actionSheetWithTitle:(NSString *)title
                      message:(NSString *)message
                  buttonArray:(NSArray<NSString *> *)buttonArray
                   completion:(void(^)(NSInteger selectedIndex))completion;

- (void )actionSheetWithTitle:(NSString *)title
                      message:(NSString *)message
                  buttonArray:(NSArray<NSString *> *)buttonArray
                       cancel:(void(^)(void))cancel
                   completion:(void(^)(NSInteger selectedIndex))completion;

- (void )alertControllerWithTitle:(NSString *)title
                          message:(NSString *)message
                            style:(UIAlertControllerStyle)style
                       showCancel:(BOOL)showCancel
                      buttonArray:(NSArray<NSString *> *)buttonArray
                           cancel:(void(^)(void))cancel
                       completion:(void(^)(NSInteger selectedIndex))completion;

@end
