//
//  ViewController.swift
//  Localization
//
//  Created by mac on 1/3/21.
//

import UIKit
import MOLH


class ViewController: UIViewController  {

    @IBOutlet weak var buttonName: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
        
    }


    @IBAction func didPresseOnLanguage(_ sender: UIButton) {
       MOLH.setLanguageTo(MOLHLanguage.currentAppleLanguage() == "en" ? "ar" : "en")
       
      /*  if L102Language.currentAppleLanguage() == "en" {
            L102Language.setAppleLAnguageTo(lang: "ar")
        } else {
            L102Language.setAppleLAnguageTo(lang: "en")
        }
        */
        MOLH.reset()
    }
}
extension String{
    var localized:String {
        return NSLocalizedString(self, comment: "")
    }
}

// constants
/*let APPLE_LANGUAGE_KEY = "AppleLanguages"
/// L102Language
class L102Language {
/// get current Apple language
class func currentAppleLanguage() -> String{
    let userdef = UserDefaults.standard
    let langArray = userdef.object(forKey: APPLE_LANGUAGE_KEY) as! NSArray
let current = langArray.firstObject as! String
return current
}
/// set @lang to be the first in Applelanguages list
class func setAppleLAnguageTo(lang: String) {
    let userdef = UserDefaults.standard
    userdef.set([lang,currentAppleLanguage()], forKey: APPLE_LANGUAGE_KEY)
userdef.synchronize()
}
}*/
