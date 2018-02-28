@interface IGMainAppHeaderView : UIView {
	UIColor *_backgroundColor;
	UIView *_contentContainerView;
}

- (void)layoutSubviews;

@end

@interface IGStoryTrayCollectionViewCell : UICollectionViewCell {
    UICollectionViewCell *_collectionView;
}

- (void)layoutSubviews;

@end

@interface IGStoryTrayCell : UICollectionViewCell
{
    UILabel *titleLabel;
}

- (void)layoutSubviews;

@end

@interface IGFeedItemHeader

- (id)contentBackgroundColor;
- (void)layoutSubviews;

@end

@interface IGFeedItemUFICell {
	UIView *contentView;
}

- (void)layoutSubviews;

@end