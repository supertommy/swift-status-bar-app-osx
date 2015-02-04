//
//  AppDelegate.swift
//  SwiftStatusBarApplication
//
//  Created by Tommy Leung on 6/7/14.
//  Copyright (c) 2014 Tommy Leung. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate
{
    @IBOutlet var window: NSWindow?
    @IBOutlet var popover : NSPopover?
    
    private let icon: IconView;
    
    override init()
    {
        let bar = NSStatusBar.systemStatusBar();
        
        let length: CGFloat = -1 //NSVariableStatusItemLength
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
        let edge = NSMinYEdge
        let icon = self.icon
        let rect = icon.frame
        
        icon.onMouseDown = {
            if (icon.isSelected)
            {
                self.popover?.showRelativeToRect(rect, ofView: icon, preferredEdge: edge);
                return
            }
            self.popover?.close()
        }
    }
}

