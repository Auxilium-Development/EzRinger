#import "ezringer.h"
#import <objc/runtime.h>

@interface SBMediaController : NSObject
- (void)setRingerMuted:(BOOL)arg1;
- (BOOL)RingerMuted;
@end

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation EzRinger
- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
	return [UIColor redColor];
}
- (BOOL)isSelected {
    [SBMediaController setRingerMuted:true];
    return self.ezringer;
}
- (void)setSelected:(BOOL)selected {
    self.ezringer = selected;
    [SBMediaController setRingerMuted:false];
    [super refreshState];

    }
    
@end
