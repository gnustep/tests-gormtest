#include "GSComboBox.h"

@implementation GSComboBox
- (id) initWithCoder: (NSCoder *)coder
{
  self = [super initWithCoder: coder];
  NSLog(@"Created custom class %@",NSStringFromClass([self class]));
  return self;
} 
@end
