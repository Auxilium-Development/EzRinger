#import "ezringer.h"
#import <objc/runtime.h>

@interface SBMediaController : NSObject
+ (void)setRingerMuted:(BOOL) newValue;
+ (BOOL)RingerMuted;
@end

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation ezringer
- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
	return [UIColor redColor];
}
## turnoff
- (BOOL)isSelected {
    [SBMediaController setRingerMuted:true];
    return self.ezringer;
}
## turnon
- (void)setSelected:(BOOL)selected {
    self.ezringer = selected;
    [SBMediaController setRingerMuted:false];
    [super refreshState];

    }
    
@end
