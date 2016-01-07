//
//  ViewController.swift
//  foregroundexample
//
//  Created by Richard on 2016/1/7.
//  Copyright © 2016年 Richard. All rights reserved.
//

import UIKit
import ilocky
class ViewController: UIViewController {

    @IBOutlet weak var ivKey: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ILockyPassport.initialize()
        ILockyPassport.removeAllInvalidPassports()
        print(ILockyPassport.getDeviceUuid())
        let str:String!="\u{7B}\"passport_id\": 119,\"passport\":\"eyJpbG9ja3lfaWQiOiJkYzUzZDcyNyIsInV1aWQiOiIyRjkxNkNBOS01QzcwLTQ0RjUtOUExMS04NTM4RkFBMzJFQjgiLCJzdGFydF90aW1lIjoiMjAxNS0xMi0yNFQwMDowMDowMCswODAwIiwic3RvcF90aW1lIjoiMjAxOC0xMi0zMFQwMDowMDowMCswODAwIiwidXNlX2xpbWl0IjowLCJyZmlkX2R1cmF0aW9uIjoxMDAwLCJhY3Rpb24iOiJvcGVuIGRvb3IiLCJyZXZva2VfbGVnYWN5Ijp0cnVlfQ==\"\u{7D}"
        /** CAUTION: any passport should be genetered in our global server.
        ** this iLocky passport(key) generator is only for testing. it will be removed in near future.
        ********************************************************************************************/
        //        let passport = ILockyPassport.Builder()
        //            .setILockyId("22a77559")
        //            .setDeviceId(ILockyPassport.getDeviceUuid())
        //            .setActionType(ILockyPassport.ACTION_TYPE_LOW_SECURITY_OPEN)
        //            .setStartTime(Int64(NSDate().timeIntervalSince1970*1000))
        //            .setEndTime(Int64(NSDate(timeIntervalSinceNow:36000).timeIntervalSince1970*1000))
        //            .setTimes(0)
        //            .setRevokePast(true)
        /********************************************************************************************/
        ILockyPassport.importPassport(str, error: nil)

        ivKey.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "startILocky"))
    }
    func startILocky() {
        let frameworkBundle = NSBundle(identifier: "com.ilocky.ILocky")
        let sb = UIStoryboard(name:"ILocky",bundle:frameworkBundle)
        let vc = sb.instantiateViewControllerWithIdentifier("ILockyViewController")
            vc.modalPresentationStyle = UIModalPresentationStyle.OverCurrentContext
        self.presentViewController(vc, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

