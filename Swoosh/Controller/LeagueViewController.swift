//
//  LeagueViewController.swift
//  Swoosh
//
//  Created by Sasirekha Kambhampaty on 9/13/20.
//  Copyright © 2020 Sasirekha Kambhampaty. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {
    
    // The exclamatory implies that we don't want this code to even run if there is no value in player
    var player: Player!
    
    
    
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue){
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        player = Player()
    }
    
    // This segue was created by dragging one ctrl+dragging one VC to another (as opposed to the one made using the Interface Builder, where a button was ctrl+dragged onto the next VC)
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillViewControllerSegue", sender: self)
    }
    
    // We need an IBOutlet to refere to the Next button and make changes
    // Make sure IBOutlet variables are weak so that the memory of that button is released and doesn't result in memory leaks or uncollected references.
    @IBOutlet weak var nextBtn: BorderButton!
    
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    
    // What we need to pass data across segues is all in the comment below (auto-generated)
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // This is overriding the default prepare that was being used until we implemented this from the parent class
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // if the code after let fails, the if fails, but does not throw a runtime error
        if let skillViewController = segue.destination as? SkillViewController {
            // If the destination of the segue is SkillViewContoller,
            // pass data in the player object from this VC to the next VC
            skillViewController.player = player
            // prepare-for-segue is ALWAYS guaranteed to be called before viewDidLoad in the next VC. So we can use the implicitly unwrapped optional with confidence because we will be assigning it a value. But it also means that from wherever the SkillViewController is segued to, a player object MUST be passed.
        }
    }

}
