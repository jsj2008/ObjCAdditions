//
//  CGGeometryTests.m
//  ObjCAdditions
//
//  Copyright (c) 2011 A25 SIA
//  
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//  
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//  
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "CGGeometryTests.h"
#import "CGGeometry+OAAdditions.h"

@implementation CGGeometryTests

- (void)testRectBottom {
	CGRect rect1 = CGRectBottom(CGRectMake(0.0f, 0.0f, 75.0f, 68.0f), 14.0f);
	CGRect rect2 = CGRectMake(0.0f, 54.0f, 75.0f, 14.0f);
	STAssertEquals(rect1, rect2, nil);
}

- (void)testRectCentredInRect {
	CGRect rect1 = CGRectCentredInRect(CGRectMake(0.0f, 0.0f, 62.0f, 9.0f), CGRectMake(0.0f, 54.0f, 75.0f, 14.0f), YES);
	CGRect rect2 = CGRectMake(6.0f, 56.0f, 62.0f, 9.0f);
	STAssertEquals(rect1, rect2, nil);
}

@end
