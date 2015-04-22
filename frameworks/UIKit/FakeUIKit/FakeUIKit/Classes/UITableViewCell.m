
#import "UITableViewCell.h"

@implementation UITableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    return [super init];
}

- (void)prepareForReuse
{
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
    
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
    
}

- (void)willTransitionToState:(UITableViewCellStateMask)state
{
    
}

- (void)didTransitionToState:(UITableViewCellStateMask)state
{
    
}

@end

@implementation UITableViewCell (UIDeprecated)

- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier
{
    return 0;
}

@end
