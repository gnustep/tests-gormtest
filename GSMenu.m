#include "GSMenu.h"

@implementation GSMenu
- (id) initWithCoder: (NSCoder *)coder
{
  NSLog(@"Decoding custom class %@",NSStringFromClass([self class]));
  self = [super initWithCoder: coder];
  [self setTitle: @"Gorm Menu Test"];
  return self;
}
@end
