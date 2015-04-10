# ObjC-Stub

Auto generate stub classes, based off of existing Objective-C classes, for testing.

The idea is to create a system that can create classes that can be a drop-in replacement for framework classes such as UIKit. By creating empty implementations of these classes you eliminate the time it takes to create and display views, draw calls, etc. that can impact the length of time it takes your tests to run.

Each of the auto-generated classes would have only the necessary functions that iniatilize their respective classes; such that UIViewController stub class could be made which still makes calls to loadView, viewWillAppear and viewDidAppear in the same order as its non-stubbed class.

You can configure the stub generator to emit only changes between an existing stubbed class and a source class. That way, as changes are made to the stubbed classes, you have the ability to quickly add/remove methods which are associated to the source class.

# API

As an example, the following will take a source class, UIView, and use an existing stubbed UIView class to add only what has changed between the two APIs. Changes that are _removed_ from the source class will not be removed from the target stub class unless specifically told to do so.

@todo
