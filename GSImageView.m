#include "GSImageView.h"

@implementation GSImageView
- (id) initWithCoder: (NSCoder *)coder
{
  self = [super initWithCoder: coder];
  if(self != nil)
    {
      NSLog(@"Created custom class %@",NSStringFromClass([self class]));
    }
  return self;
} 
@end
