/* 
   LoginWindow.h

   Class to allow the display of a borderless window.  It also
   provides the necessary functionality for some of the other nice
   things we want the window to do.

   Copyright (C) 2000 Gregory John Casamento 

   Author:  Gregory John Casamento <greg_casamento@yahoo.com>
   Date: 2000
   
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

#include "LoginWindow.h"

#ifdef GNUSTEP
#include "unistd.h"
#else
#include "libc.h"
#endif

#define SHRINKFACTOR 70

// #define TEST_REPORT7877

@implementation LoginWindow
- (id)initWithContentRect:(NSRect)contentRect
		styleMask:(unsigned int)styleMask
		  backing:(NSBackingStoreType)bufferingType
		    defer:(BOOL)flag
{
  // It was neccesary to override this method to get the borderless
  // window since it is not available from InterfaceBuilder.
  NSLog(@"LoginWindow class has been instantiated...");
  return [super initWithContentRect: contentRect
		styleMask: NSBorderlessWindowMask
		backing: bufferingType
		defer: flag];
}

- (void)center
{
  NSScreen *aScreen = nil;
  NSRect screenRect, windowRect;
  NSSize screenSize, windowSize;
  NSPoint windowOrigin, newOrigin;

  // Get screen size..
  aScreen = [self screen];
  screenRect = [aScreen frame];
  screenSize = screenRect.size;
#ifdef DEBUG
  printf("Screen size is %f x %f\n", screenSize.width, screenSize.height );
#endif
    
  // Get window size..
  windowRect = [self frame];
  windowSize = windowRect.size;
  windowOrigin = windowRect.origin;
#ifdef DEBUG
  printf("Window size is %f x %f\n", windowSize.width, windowSize.height );
  printf("Window origin is (%f, %f)\n", windowOrigin.x, windowOrigin.y );
#endif
    
  // Calculate the new position of the window.
  newOrigin.x = ( screenSize.width - windowSize.width ) / 2;
  newOrigin.y = ( screenSize.height - windowSize.height ) / 2;
#ifdef DEBUG
  printf("New window origin is (%f, %f)\n", newOrigin.x, newOrigin.y );
#endif
    
  // Set the origin
  [self setFrameOrigin: newOrigin];
}

- (void)waggle
{
  NSPoint origin, savedOrigin;
  NSRect windowRect;
  int i = 0, j = 0;
    

  NSLog(@"Waggling window... %@",self);
  windowRect = [self frame];
  savedOrigin = windowRect.origin;
  origin = savedOrigin;

  for( j = 0; j < 4; j++ )
    {
      for( i = 0; i < 2; i++ )
        {
	  origin.x += 30;
	  [self setFrameOrigin: origin];
        }

      for( i = 0; i < 4; i++ )
        {
	  origin.x -= 30;
	  [self setFrameOrigin: origin];
        }

      for( i = 0; i < 2; i++ )
        {
	  origin.x += 30;
	  [self setFrameOrigin: origin];
        }
    }
  [self setFrameOrigin: savedOrigin];
  // [self close];
}

- (void)shrink
{
  NSPoint origin, savedOrigin;
  NSRect windowRect;
  int i = 0, w = 0;

  windowRect = [self frame];
  savedOrigin = windowRect.origin;
  origin = savedOrigin;
  w = windowRect.size.width;
  for( i = 0; i < (w - SHRINKFACTOR); i+=SHRINKFACTOR )
    {
      windowRect.size.width-=SHRINKFACTOR;
      windowRect.origin.x+=SHRINKFACTOR/2;
      [self setFrame: windowRect display: YES];
    }
  [self close];
}

- (BOOL)canBecomeKeyWindow
{
  return YES;
}

- (BOOL)canBecomeMainWindow
{
  return YES;
}

- (void)displayPanel
{
  NSData *imageData = nil;
  NSString *imagePath = nil;
  NSImage *image = nil;
  NSRect windowRect;

  // Initialize the login image (TDB: This will change later when login images become
  // configurable.)
  imagePath = [[NSBundle mainBundle] pathForResource: @"loginPanel" ofType: @"tiff"];
  imageData = [NSData dataWithContentsOfFile: imagePath];
  image = [[NSImage alloc] initWithData: imageData];

  windowRect = [self frame];
  windowRect.size = [image size];
  [self setFrame: windowRect display: NO];
  [loginImageView setImage: image];
  [loginImageView setNeedsDisplay: YES];
  [loginImageView setEditable: NO];
}

- (void)displayPowerButton
{
  NSData *imageData = nil, *altImageData = nil;
  NSString *imagePath = nil, *altImagePath = nil;
  NSImage *image = nil, *altImage = nil;

  // Initialize the power button image (TDB: This will change later 
  // when login images become configurable.)
  imagePath = [[NSBundle mainBundle] pathForResource: @"power" 
				     ofType: @"tiff"];
  altImagePath = [[NSBundle mainBundle] pathForResource: @"power_invert" 
					ofType: @"tiff"];
  imageData = [NSData dataWithContentsOfFile: imagePath];
  altImageData = [NSData dataWithContentsOfFile: altImagePath]; 
  image = [[NSImage alloc] initWithData: imageData];
  altImage = [[NSImage alloc] initWithData: altImageData];
  [powerButton setImage: image];
  [powerButton setAlternateImage: altImage];
  [powerButton setNeedsDisplay: YES];
}

- (void)displayRestartButton
{
  NSData *imageData = nil, *altImageData = nil;
  NSString *imagePath = nil, *altImagePath = nil;
  NSImage *image = nil, *altImage = nil;

  // Initialize the restart button image (TDB: This will change later 
  // when login images become configurable.)
  imagePath = [[NSBundle mainBundle] pathForResource: @"restart" 
				     ofType: @"tiff"];
  altImagePath = [[NSBundle mainBundle] pathForResource: @"restart_invert" 
					ofType: @"tiff"];
  imageData = [NSData dataWithContentsOfFile: imagePath];
  altImageData = [NSData dataWithContentsOfFile: altImagePath]; 
  image = [[NSImage alloc] initWithData: imageData];
  altImage = [[NSImage alloc] initWithData: altImageData];
  [restartButton setImage: image];
  [restartButton setAlternateImage: altImage];
  [restartButton setNeedsDisplay: YES];
}

- (void)displayHostname
{
  char hostname[256], displayname[256];
  int  namelen = 256, index = 0;
  NSString *host_name = nil;

  // Initialize hostname
  gethostname( hostname, namelen );
  for(index = 0; index < 256 && hostname[index] != '.'; index++)
    {
      displayname[index] = hostname[index];
    }
  displayname[index] = 0;
  host_name = [NSString stringWithCString: displayname];
  [hostnameText setStringValue: host_name];
}

- (void)initializeInterface
{
#ifdef DEBUG
  NSLog(@"Initialize interface window=%@",self);
#endif
  // Set up all elements of the display...
  [self displayPanel];
  [self displayPowerButton];
  [self displayRestartButton];
  [self displayHostname];
  [self center];
}

- (void) awakeFromNib
{
#ifdef TEST_REPORT7877
  NSSavePanel *panel = [NSSavePanel savePanel];
  [panel setDelegate: self];
  [panel runModal];
#endif
  [self center];
}


- (BOOL) panel: (id)sender isValidFilename: (NSString*)filename
{
  NSLog(@"panel:isValidFilename: called");
  return YES;
}

- (NSComparisonResult) panel: (id)sender
	     compareFilename: (NSString *)filename1
			with: (NSString *)filename2
	       caseSensitive: (BOOL)caseSensitive
{
  NSLog(@"panel:compareFilename:with:caseSensitive:");
  return NSOrderedSame;

}	 
- (BOOL) panel: (id)sender shouldShowFilename: (NSString *)filename
{
  NSLog(@"panel:shouldShowFileName:");
  return YES;
}

- (NSString *)panel: (id)sender
userEnteredFilename: (NSString *)fileName
          confirmed: (BOOL)okFlag
{
  NSLog(@"panel:userEnteredFilename:confirmed:");
  return fileName;
}

@end





