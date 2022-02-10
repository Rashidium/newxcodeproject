//
//  ViewController.swift
//  New to Xcode Project
//
//  Created by Rashid Ramazanov on 2/10/22.
//

import UIKit
import SwiftExtensions

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = getGoogleAppId()
    }

    private func getGoogleAppId() -> String? {
        guard let infoPlist = Bundle.main.path(forResource: "GoogleService-Info", ofType: "plist"),
              let dictionary = NSDictionary.init(contentsOfFile: infoPlist) else { return nil }
        return dictionary.value(forKey: "BUNDLE_ID") as? String
    }


}
