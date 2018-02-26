@interface IGMainAppHeaderView : UIView {
	UIColor *_backgroundColor;
	UIView *_contentContainerView;
}

- (void)setBackgroundColor:(id)arg1;
- (void)_setBackgroundColor:(id)arg1;
- (id)delegate;
- (void)logoButtonTapped;

@end

@interface IGColors

+ (id)navigationBarBackgroundColor;

@end

@interface IGDirectInboxCellButtonConfig : NSObject
{
    NSString *_primaryText;
    UIColor *_primaryTextColor;
    UIColor *_primaryBackgroundColor;
    NSString *_destructiveText;
    UIColor *_destructiveTextColor;
    UIColor *_destructiveBackgroundColor;
}

@property(readonly, nonatomic) UIColor *destructiveBackgroundColor; // @synthesize destructiveBackgroundColor=_destructiveBackgroundColor;
@property(readonly, nonatomic) NSString *destructiveText; // @synthesize destructiveText=_destructiveText;
@property(readonly, nonatomic) UIColor *destructiveTextColor; // @synthesize destructiveTextColor=_destructiveTextColor;
- (id)initWithPrimaryText:(id)arg1 destructiveText:(id)arg2;
- (id)initWithPrimaryText:(id)arg1 primaryTextColor:(id)arg2 primaryBackgroundColor:(id)arg3 destructiveText:(id)arg4 destructiveTextColor:(id)arg5 destructiveBackgroundColor:(id)arg6;
@property(readonly, nonatomic) UIColor *primaryBackgroundColor; // @synthesize primaryBackgroundColor=_primaryBackgroundColor;
@property(readonly, nonatomic) NSString *primaryText; // @synthesize primaryText=_primaryText;
@property(readonly, nonatomic) UIColor *primaryTextColor; // @synthesize primaryTextColor=_primaryTextColor;

@end

