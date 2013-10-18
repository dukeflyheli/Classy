//
//  UIView+CASAdditions.m
//  Classy
//
//  Created by Jonas Budelmann on 30/09/13.
//  Copyright (c) 2013 cloudling. All rights reserved.
//

#import "UIView+CASAdditions.h"
#import <objc/runtime.h>
#import <QuartzCore/QuartzCore.h>

@implementation UIView (CASAdditions)

#pragma mark - associated properties

- (NSString *)cas_styleClass {
    return objc_getAssociatedObject(self, @selector(cas_styleClass));
}

- (void)setCas_styleClass:(NSString *)styleClass {
    objc_setAssociatedObject(self, @selector(cas_styleClass),styleClass, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - border properties

- (void)setCas_borderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}

- (UIColor *)cas_borderColor {
    if (!self.layer.borderColor) return nil;
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setCas_borderWidth:(CGFloat)borderWidth {
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cas_borderWidth {
    return self.layer.borderWidth;
}

- (void)setCas_cornerRadius:(CGFloat)cornerRadius {
    self.layer.cornerRadius = cornerRadius;
}

- (CGFloat)cas_cornerRadius {
    return self.layer.cornerRadius;
}

#pragma mark - shadow properties

- (void)setCas_shadowColor:(UIColor *)shadowColor {
    self.layer.shadowColor = shadowColor.CGColor;
}

- (UIColor *)cas_shadowColor {
    if (!self.layer.shadowColor) return nil;
    return [UIColor colorWithCGColor:self.layer.shadowColor];
}

- (void)setCas_shadowOffset:(CGSize)shadowOffset {
    self.layer.shadowOffset = shadowOffset;
}

- (CGSize)cas_shadowOffset {
    return self.layer.shadowOffset;
}

- (void)setCas_shadowOpacity:(CGFloat)shadowOpacity {
    self.layer.shadowOpacity = shadowOpacity;
}

- (CGFloat)cas_shadowOpacity {
    return self.layer.shadowOpacity;
}

- (void)setCas_shadowRadius:(CGFloat)shadowRadius {
    self.layer.shadowRadius = shadowRadius;
}

- (CGFloat)cas_shadowRadius {
    return self.layer.shadowRadius;
}

@end