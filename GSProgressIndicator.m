#include "GSProgressIndicator.h"

@implementation GSProgressIndicator
- (id) initWithCoder: (NSCoder *)coder
{
  NSLog(@"Decoding custom class %@",NSStringFromClass([self class]));
  return [super initWithCoder: coder];
}
@end
