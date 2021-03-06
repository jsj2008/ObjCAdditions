//
//  OACalloutView.h
//  ObjCAdditions
//
// Copyright 2011 A25 SIA
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
//
// Based on https://github.com/edanuff/MonoTouchCalloutView


#import <UIKit/UIKit.h>


@interface OACalloutView : UIView {
	UIImage *calloutLeftImage;
	UIImage *calloutCenterImage;
	UIImage *calloutRightImage;
	
	UIImageView *calloutLeft;
	UIImageView *calloutCenter;
	UIImageView *calloutRight;
	UILabel *calloutTitleLabel;
	UILabel *calloutSubtitleLabel;
	UIButton *calloutButton;
	
	CGPoint anchorPoint;
	BOOL animationInProgress;
}

@property (nonatomic,retain) NSString *title;
@property (nonatomic,retain) NSString *subtitle;
@property (nonatomic) CGPoint anchorPoint;
@property (nonatomic) CGFloat maxWidth;
@property (nonatomic) CGFloat labelOriginY;
@property (nonatomic) CGFloat labelHeight;

- (id)initWithLeftImage:(UIImage *)leftImage centerImage:(UIImage *)centerImage rightImage:(UIImage *)rightImage;
- (void)showAnimated:(UIView *)parent;
- (void)setAnchorPoint:(CGPoint)point;
- (void)addButtonTarget:(id)target action:(SEL)action;

@end
