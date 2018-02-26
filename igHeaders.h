@interface IGMainAppHeaderView : UIView {
	UIColor *_backgroundColor;
	UIView *_contentContainerView;
}

- (void)setBackgroundColor:(id)arg1;
- (void)_setBackgroundColor:(id)arg1;
- (id)delegate;
- (void)logoButtonTapped;
- (void)layoutSubviews;

@end

@interface IGStoryTrayCollectionViewCell : UICollectionViewCell {
    UICollectionView *collectionView;
}

- (void)layoutSubviews;

@end