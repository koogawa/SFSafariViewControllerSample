//
//  MyActivity.swift
//  SFSafariViewControllerSample
//
//  Created by koogawa on 2015/10/04.
//  Copyright © 2015年 koogawa. All rights reserved.
//

import UIKit

class MyActivity: UIActivity {

    override func activityType() -> String? {
        return "MyActivity"
    }

    override func activityImage() -> UIImage? {
        return nil
    }

    override func activityTitle() -> String? {
        return "カスタマイズできた"
    }

    override func canPerformWithActivityItems(activityItems: [AnyObject]) -> Bool {
        // Do something

        return true
    }

    override func prepareWithActivityItems(activityItems: [AnyObject]) {
        // Do something
    }

}
