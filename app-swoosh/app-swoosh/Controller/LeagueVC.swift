//
//  LeagueVCViewController.swift
//  app-swoosh
//
//  Created by Test on 3/10/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player: Player!

    @IBOutlet weak var nextBtn: BorderButton!
    @IBAction func onWomensTapped(_ sender: Any) {
       selectLeague(leagueType: "womens")
    }
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
       selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType:String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    @IBAction func onNextTapped(_ sender: Any) {
        
        
        performSegue(withIdentifier: "skillVCSegue", sender: self)
       
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
            
            
        }
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
