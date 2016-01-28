//
//  ViewController.swift
//  foregroundexample
//
//  Created by Richard on 2016/1/7.
//  Copyright © 2016年 Richard. All rights reserved.
//

import UIKit
import ilocky
class ViewController: UIViewController,ILockyViewControllerCallback {

    @IBOutlet weak var ivKey: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ILockyPassport.initialize()
        ILockyPassport.removeAllInvalidPassports()
        print(ILockyPassport.getDeviceUuid())
//        let str:String!="\u{7B}\"passport_id\": 119,\"passport\":\"eyJpbG9ja3lfaWQiOiJkYzUzZDcyNyIsInV1aWQiOiIyRjkxNkNBOS01QzcwLTQ0RjUtOUExMS04NTM4RkFBMzJFQjgiLCJzdGFydF90aW1lIjoiMjAxNS0xMi0yNFQwMDowMDowMCswODAwIiwic3RvcF90aW1lIjoiMjAxOC0xMi0zMFQwMDowMDowMCswODAwIiwidXNlX2xpbWl0IjowLCJyZmlkX2R1cmF0aW9uIjoxMDAwLCJhY3Rpb24iOiJvcGVuIGRvb3IiLCJyZXZva2VfbGVnYWN5Ijp0cnVlfQ==\"\u{7D}"
        /** CAUTION: any passport should be genetered in our global server.
        ** this iLocky passport(key) generator is only for testing. it will be removed in near future.
        ********************************************************************************************/

//                let passport = ILockyPassport.Builder()
//                    .setILockyId("331d7662")
//                    .setDeviceId(ILockyPassport.getDeviceUuid())
//                    .setActionType(ILockyPassport.ACTION_TYPE_LOW_SECURITY_OPEN)
//                    .setStartTime(Int64(NSDate().timeIntervalSince1970*1000))
//                    .setEndTime(Int64(NSDate(timeIntervalSinceNow:360000).timeIntervalSince1970*1000))
//                    .setTimes(0)
//                    .setRevokePast(true)
//        let passport1 = ILockyPassport.Builder()
//            .setILockyId("bcf79e5e")
//            .setDeviceId(ILockyPassport.getDeviceUuid())
//            .setActionType(ILockyPassport.ACTION_TYPE_LOW_SECURITY_OPEN)
//            .setStartTime(Int64(NSDate().timeIntervalSince1970*1000))
//            .setEndTime(Int64(NSDate(timeIntervalSinceNow:3600000).timeIntervalSince1970*1000))
//            .setTimes(0)
//            .setRevokePast(true)
//        let passport2 = ILockyPassport.Builder()
//            .setILockyId("10ff5d02")
//            .setDeviceId(ILockyPassport.getDeviceUuid())
//            .setActionType(ILockyPassport.ACTION_TYPE_LOW_SECURITY_OPEN)
//            .setStartTime(Int64(NSDate().timeIntervalSince1970*1000))
//            .setEndTime(Int64(NSDate(timeIntervalSinceNow:3600000).timeIntervalSince1970*1000))
//            .setTimes(0)
//            .setRevokePast(true)
//        let passport3 = ILockyPassport.Builder()
//            .setILockyId("33b98f4e")
//            .setDeviceId(ILockyPassport.getDeviceUuid())
//            .setActionType(ILockyPassport.ACTION_TYPE_LOW_SECURITY_OPEN)
//            .setStartTime(Int64(NSDate().timeIntervalSince1970*1000))
//            .setEndTime(Int64(NSDate(timeIntervalSinceNow:3600000).timeIntervalSince1970*1000))
//            .setTimes(0)
//            .setRevokePast(true)
//        let passport4 = ILockyPassport.Builder()
//            .setILockyId("2ad82f13")
//            .setDeviceId(ILockyPassport.getDeviceUuid())
//            .setActionType(ILockyPassport.ACTION_TYPE_LOW_SECURITY_OPEN)
//            .setStartTime(Int64(NSDate().timeIntervalSince1970*1000))
//            .setEndTime(Int64(NSDate(timeIntervalSinceNow:3600000).timeIntervalSince1970*1000))
//            .setTimes(0)
//            .setRevokePast(true)
//        let passport5 = ILockyPassport.Builder()
//            .setILockyId("5833f46b")
//            .setDeviceId(ILockyPassport.getDeviceUuid())
//            .setActionType(ILockyPassport.ACTION_TYPE_LOW_SECURITY_OPEN)
//            .setStartTime(Int64(NSDate().timeIntervalSince1970*1000))
//            .setEndTime(Int64(NSDate(timeIntervalSinceNow:3600000).timeIntervalSince1970*1000))
//            .setTimes(0)
//            .setRevokePast(true)
        //fan sir demo lock
        let passport6 = ILockyPassport.Builder()
        .setILockyId("33b98f4e")
        .setDeviceId(ILockyPassport.getDeviceUuid())
        .setActionType(ILockyPassport.ACTION_TYPE_LOW_SECURITY_OPEN)
        .setStartTime(Int64(NSDate().timeIntervalSince1970*1000))
        .setEndTime(Int64(NSDate(timeIntervalSinceNow:360000).timeIntervalSince1970*1000))
        .setTimes(0)
        .setRevokePast(true)

//        let passport6 = ILockyPassport.Builder()
//            .setILockyId("33b98f4e")
//            .setDeviceId(ILockyPassport.getDeviceUuid())
//            .setActionType(ILockyPassport.ACTION_TYPE_LOW_SECURITY_OPEN)
//            .setStartTime(Int64(NSDate().timeIntervalSince1970*1000))
//            .setEndTime(Int64(NSDate(timeIntervalSinceNow:360000).timeIntervalSince1970*1000))
//            .setTimes(0)
//            .setRevokePast(true)
        /********************************************************************************************/
//        ILockyPassport.importILockyPassport(passport, error: nil)
//        ILockyPassport.importILockyPassport(passport1, error: nil)
//        ILockyPassport.importILockyPassport(passport2, error: nil)
//        ILockyPassport.importILockyPassport(passport3, error: nil)
//        ILockyPassport.importILockyPassport(passport4, error: nil)
//        ILockyPassport.importILockyPassport(passport5, error: nil)
        ILockyPassport.importILockyPassport(passport6, error: nil)
//        ILockyPassport.importPassport(str, error: nil)
        ivKey.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "startILocky"))
    }
    func startILocky() {
        let frameworkBundle = NSBundle(identifier: "com.ilocky.ILocky")
        let sb = UIStoryboard(name:"ILocky",bundle:frameworkBundle)
        let vc = sb.instantiateViewControllerWithIdentifier("ILockyViewController")
            vc.modalPresentationStyle = UIModalPresentationStyle.OverCurrentContext
        self.presentViewController(vc, animated: true, completion: nil)
        ILocky.iLockyViewControllerCallback=self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func onDismiss(success: Bool) {
        print("ILockyViewControllerDismiss")
    }



}

