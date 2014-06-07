//
//  AppDelegate.swift
//  SwiftStatusBarApplication
//
//  Created by Tommy Leung on 6/7/14.
//  Copyright (c) 2014 Tommy Leung. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate
{
    @IBOutlet var window: NSWindow
    @IBOutlet var popover : NSPopover
    
    let icon: IconView;
    
    init()
    {
        let bar = NSStatusBar.systemStatusBar();
        
        //statusItemWithLength expects CGFloat; NSVariableStatusItemLength is CInt
        let length = CDouble(NSVariableStatusItemLength);
        
        let item = bar.statusItemWithLength(length);
        
        self.icon = IconView(imageName: "icon", item: item);
        item.view = icon;
        
        super.init();
    }

    func applicationDidFinishLaunching(aNotification: NSNotification?)
    {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification?)
    {
        // Insert code here to tear down your application
    }

    override func awakeFromNib()
    {
        //NSRectEdge is not enumerated yet; NSMinYEdge == 1
        //@see NSGeometry.h
        let edge = 1
        let icon = self.icon
        let rect = icon.frame
        
        icon.onMouseDown = {
            if (icon.isSelected)
            {
                self.popover.showRelativeToRect(rect, ofView: icon, preferredEdge: edge);
                return
            }
            self.popover.close()
        }
    }
}

