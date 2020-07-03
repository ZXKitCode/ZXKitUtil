//
//  ViewController.swift
//  HDSwiftCommonTools
//
//  Created by Damon on 2020/7/2.
//  Copyright © 2020 Damon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //角度渐变图片
        let image = HDCommonTools.shared.getRadialGradientImage(colors: [UIColor.red, UIColor.black, UIColor.blue], raduis: 45)
        //线性渐变图片
        let image2 = HDCommonTools.shared.getLinearGradientImage(colors:  [UIColor.red, UIColor.black, UIColor.blue], directionType: .level)
        //16进制颜色转为UIColor
        let color = UIColorWithHexValue(hexValue: 0xffffff)
        //16进制字符串转为UIColor
        let color2 = UIColorWithHexString(hexString: "#ffffff")
        //获取导航栏高度
        let navigationBarHeight = HD_Default_NavigationBar_Height(vc: self)
        
        
        //md5加密
        HDCommonTools.shared.encryptString("哈哈是电话费", encryType: HDEncryType.md5)
        //sha加密
        HDCommonTools.shared.encryptString("sha1加密", encryType: HDEncryType.sha1)
        HDCommonTools.shared.encryptString("哈哈是电话费", encryType: HDEncryType.sha256)
        //base64加密
        HDCommonTools.shared.encryptString("哈哈是电话费", encryType: HDEncryType.base64)
        //base64解码
        HDCommonTools.shared.base64Decode(base64String: "5ZOI5ZOI5piv55S16K+d6LS5")
        //字符串转unicode
        HDCommonTools.shared.unicodeEncode(string: "哈哈哈")
        //unicode转中文
        HDCommonTools.shared.unicodeDecode(unicodeString: "\\u54c8\\u54c8\\u54c8")
        
        //软件版本
        HDCommonTools.shared.getAppVersionString()
        //软件构建版本
        HDCommonTools.shared.getAppBuildVersionString()
        //获取唯一标识
        HDCommonTools.shared.getIDFAString()
    }

}

