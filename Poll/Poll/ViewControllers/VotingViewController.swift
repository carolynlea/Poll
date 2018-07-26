//
//  VotingViewController.swift
//  Poll
//
//  Created by Carolyn Lea on 7/26/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {

    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var colorTextfield: UITextField!
    var voteController: VoteController?
    
    @IBAction func save(_ sender: Any) {
        
        guard let name = nameTextfield.text,
            let response = colorTextfield.text else {return}
        
        voteController?.createVote(with: name, response: response)
        
    }
    
}
