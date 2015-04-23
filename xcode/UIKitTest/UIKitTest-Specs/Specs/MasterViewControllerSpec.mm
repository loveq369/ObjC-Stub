#import <Cedar/Cedar.h>
#import "MasterViewController.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(MasterViewControllerSpecSpec)

describe(@"MasterViewControllerSpec", ^{
    __block MasterViewController *subject;

    beforeEach(^{
        subject = [[MasterViewController alloc] init];
        spy_on(subject);
    });
    
    describe(@"viewDidLoad", ^{
//        __block UIBarButtonItem *rightButton;
        __block UINavigationItem *navItem;
        
        beforeEach(^{
            [subject viewDidLoad];
//            rightButton = nice_fake_for([UIBarButtonItem class]);
            navItem = nice_fake_for([UINavigationItem class]);
//            navItem stub_method(@selector(rightBarButtonItem)).and_return(rightButton);
            subject stub_method(@selector(navigationItem)).and_return(navItem);
        });
        
        it(@"should have set the right bar button item", ^{
            navItem should have_received(@selector(setRightBarButtonItem:));
        });
    });
});

SPEC_END
