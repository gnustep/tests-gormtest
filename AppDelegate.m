/*    
   This file is part of GNUstep.

   This program is free software; you can redistribute it and/or
   modify it under the terms of the GNU General Public
   License as published by the Free Software Foundation; either
   version 2 of the License, or (at your option) any later version.
   
   This library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Library General Public License for more details.

   You should have received a copy of the GNU Library General Public
   License along with this library; see the file COPYING.LIB.
   If not, write to the Free Software Foundation,
   59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

   You can reach me at:
   Gregory Casamento, 14218 Oxford Drive, Laurel, MD 20707, 
   USA
*/

#include "AppDelegate.h"

@implementation AppDelegate

-(void) applicationDidFinishLaunching: (NSNotification *)notif
{
  NSLog(@"============ Application started =============");
}

- (void) resizeWindow: (id)sender
{
  NSRect frame = [window frame];

  NSLog(@"Resizing");
  frame.size.width += 50;
  frame.size.height += 50;
  frame.origin.x -= 25;
  frame.origin.y -= 25;

  [window setFrame: frame display: YES];
}
@end





