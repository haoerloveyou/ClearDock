#import <UIKit/UIKit.h>

@interface SBWallpaperEffectView : UIView
@end

%hook SBDockView

-(void)layoutSubviews
{
	%orig;
	SBWallpaperEffectView *backgroundView = MSHookIvar<SBWallpaperEffectView *>(self, "_backgroundView");
	backgroundView.hidden = YES;
}
%end