//
//  ViewController.swift
//  SFSafariViewControllerSample
//
//  Created by koogawa on 2015/10/04.
//  Copyright © 2015 koogawa. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        // entersReaderIfAvailable: Indicates if the Safari Reader version of content should be shown automatically
        let safariViewController = SFSafariViewController(URL: NSURL(string: "http://www.apple.com/")!, entersReaderIfAvailable: true)
        safariViewController.delegate = self
        presentViewController(safariViewController, animated: true, completion: nil)
    }

    // Called when the view controller is about to show UIActivityViewController after the user taps the action button.
    func safariViewController(controller: SFSafariViewController, activityItemsForURL URL: NSURL, title: String?) -> [UIActivity] {
        let myActivity = MyActivity()
        return [myActivity]
    }

    // Called when the user taps the Done button.
    func safariViewControllerDidFinish(controller: SFSafariViewController) {
        print("safariViewControllerDidFinish")
    }
}

