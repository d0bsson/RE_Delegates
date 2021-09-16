//
//  MainViewController.swift
//  RE_RGBsliders
//
//  Created by Дэвид Бердников on 13.09.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let slidersVC = navigationVC.topViewController as? SlidersViewController else { return }
        slidersVC.viewColor = view.backgroundColor
    }
    
}


