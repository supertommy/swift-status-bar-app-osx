swift-status-bar-app-osx
========================

Example of a status bar application for OS X in Swift.

Some notes as of the first release of Swift with XCode 6 Beta:

- Swift has no access modifier support so all instance variables are public

- `NSSatusBar -statusItemWithLength:` exepects `CGFloat` but `NSVariableStatusItemLength` and `NSSquareStatusItemLength` are of type `CInt`
 
### Resources

[Swift Language Guide](https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/index.html#//apple_ref/doc/uid/TP40014097)

[Access modifier support forthcoming](https://devforums.apple.com/thread/227288)
