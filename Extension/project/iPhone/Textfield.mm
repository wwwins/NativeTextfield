#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

#include "Extension.h"

namespace extension {

    int pos_x = 10;
    
	UIButton *btn;
	UITextField *textField;
	UITextView *textView;

	void initTextfield(const char* text) {

		NSString *str = [[NSString alloc] initWithUTF8String:text];
		NSLog(@"pass:%@", str);

		btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
		btn.frame = CGRectMake(pos_x, 65, 100, 30);
		[btn setTitle:@"按鈕" forState:UIControlStateNormal];
		[[[UIApplication sharedApplication] keyWindow] addSubview:btn];

		textField = [[UITextField alloc] initWithFrame:CGRectMake(pos_x, 100, 200, 30)];
		textField.borderStyle = UITextBorderStyleRoundedRect;
		textField.font = [UIFont systemFontOfSize:15];
		textField.returnKeyType = UIReturnKeyDone;
		textField.placeholder = str;
		[[[UIApplication sharedApplication] keyWindow] addSubview:textField];

		textView = [[UITextView alloc] initWithFrame:CGRectMake(pos_x, 150, 300, 100)];
		textView.layer.cornerRadius = 5;
		textView.clipsToBounds = YES;
		[textView.layer setBackgroundColor: [[UIColor whiteColor] CGColor]];
		[textView.layer setBorderColor: [[UIColor grayColor] CGColor]];
		[textView.layer setBorderWidth: 1.0];
		[textView.layer setCornerRadius:8.0];
		[textView.layer setMasksToBounds:YES];
		textView.text = @"可以打多行";
		textView.font = [UIFont systemFontOfSize:15];
		[[[UIApplication sharedApplication] keyWindow] addSubview:textView];

	}


}
