@interface IGMainAppHeaderView : UIView {
	UIColor *_backgroundColor;
	UIView *_contentContainerView;
}

- (void)layoutSubviews;

@end

@interface IGNavigationBar : UINavigationBar {
	@property(retain, nonatomic) UIColor *overlayColor;
}

@end