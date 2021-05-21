//
//  DetailViewController.swift
//  RxViewControllerCommunication
//
//  Created by Brian Advent on 09.01.18.
//  Copyright © 2018 Brian Advent. All rights reserved.
//

import UIKit
import RxSwift

//MARK: - Delegate Pattern
//protocol CharacterDelegate {
//    func didSelectCharacter (_ name:String)
//}

class DetailViewController: UIViewController {
   
    //MARK: - Properties
//    var delegate: CharacterDelegate?
    
    //1.RXSwift will observe changes to this property
    private let selectedCharaterVariable = Variable("User")
    var selectedCharacter: Observable<String> {
        return selectedCharaterVariable.asObservable()
    }
    
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - IBAction
    @IBAction func characterSelected(_ sender: UIButton) {
        guard let characterName = sender.titleLabel?.text else {return}
        
        //Change the value to the selected value to react/trigger changes
        selectedCharaterVariable.value = characterName
//        if let delegateObject = delegate {
//            delegateObject.didSelectCharacter(characterName)
//        }
        
    }
    
    
}
