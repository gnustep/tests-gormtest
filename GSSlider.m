#include "GSSlider.h"

@implementation GSSlider
- (id) initWithCoder: (NSCoder *)coder
{
  self = [super initWithCoder: coder];
  NSLog(@"Created custom class %@",NSStringFromClass([self class]));
  return self;
} 
@end
