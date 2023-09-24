//
//  ViewController.swift
//  hw2.1
//
//  Created by Alexandru Brixencov on 24.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = redView.frame.size.width / 2
        yellowView.layer.cornerRadius = redView.frame.size.width / 2
        greenView.layer.cornerRadius = redView.frame.size.width / 2
        redView.backgroundColor = .gray
        yellowView.backgroundColor = .gray
        greenView.backgroundColor = .gray
    }


    @IBAction func pressButton() {
        if redView.backgroundColor == .red {
            redView.backgroundColor = .gray
            yellowView.backgroundColor = .yellow
        } else if yellowView.backgroundColor == .yellow {
            yellowView.backgroundColor = .gray
            greenView.backgroundColor = .green
        } else if greenView.backgroundColor == .green {
            greenView.backgroundColor = .gray
            redView.backgroundColor = .red
        } else {
            redView.backgroundColor = .red
            button.setTitle("Next", for: .normal)
        }
    }
}

