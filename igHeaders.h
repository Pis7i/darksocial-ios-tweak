@interface IGMainAppHeaderView : UIView
{
	UIColor *_backgroundColor;
	UIView *_contentContainerView;
	UIColor *_tintColor;
}

@property (nonatomic, copy, readwrite) UIColor *backgroundColor;
@property (nonatomic, copy, readwrite) UIColor *tintColor;
@property (nonatomic, copy, readwrite) UIColor *_currentImageColor;

@end

@interface IGFeedItemHeader
{
}

- (void)setTextColor:(id)arg1;

@end