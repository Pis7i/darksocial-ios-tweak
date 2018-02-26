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

@interface IGPlainTableViewCell : UITableViewCell
{
    _Bool _canSelect;
    UIColor *_defaultBackgroundColor;
    UIColor *_highlightedBackgroundColor;
}

@property(readonly, nonatomic) _Bool canSelect; // @synthesize canSelect=_canSelect;
@property(retain, nonatomic) UIColor *defaultBackgroundColor; // @synthesize defaultBackgroundColor=_defaultBackgroundColor;
@property(retain, nonatomic) UIColor *highlightedBackgroundColor; // @synthesize highlightedBackgroundColor=_highlightedBackgroundColor;
- (id)initWithStyle:(long long)arg1 reuseIdentifier:(id)arg2;
- (void)layoutSubviews;
- (void)setHighlighted:(_Bool)arg1 animated:(_Bool)arg2;
- (void)setSelected:(_Bool)arg1 animated:(_Bool)arg2;
- (void)setSelectionStyle:(long long)arg1;

@end