//
//  ViewController.swift
//  Fonts
//
//  Created by 史　翔新 on 2016/06/03.
//  Copyright © 2016年 5pb.Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		let view = UIScrollView(frame: self.view.bounds)
		view.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
		view.contentSize = .zero
		
		UIFont.familyNames().forEach { (familyName) in
			let fontsInFamily = UIFont.fontNamesForFamilyName(familyName)
			fontsInFamily.forEach({ (fontName) in
				print(fontName)
				let label = UILabel()
				label.text = "フォント：" + fontName
				label.font = UIFont(name: fontName, size: UIFont.labelFontSize())
				label.sizeToFit()
				label.frame.origin.y = view.contentSize.height
				view.contentSize.width = max(view.contentSize.width, label.frame.width)
				view.contentSize.height += label.frame.height + 10
				view.addSubview(label)
			})
		}
		
		self.view.addSubview(view)
		
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	override func prefersStatusBarHidden() -> Bool {
		return true
	}


}

