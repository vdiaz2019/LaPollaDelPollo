//
//  ApuestaViewController.swift
//  LaPollaDelPollo
//
//  Created by Victor Hugo Diaz Rojas on 28/06/22.
//

import UIKit


class ApuestaPartidoCell: UITableViewCell {
    
    @IBOutlet weak var team1: UILabel!
    @IBOutlet weak var scoreTeam1: UITextField!
    @IBOutlet weak var team2: UILabel!
    @IBOutlet weak var scoreTeam2: UITextField!
    
}

class ApuestaViewController: UIViewController {
    
    @IBOutlet weak var tableApuestas: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)

        // Do any additional setup after loading the view.
    }
}

extension ApuestaViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableApuestas.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ApuestaPartidoCell
        // cell.textLabel?.text = "Perú VS Australia"
        cell.team1?.text = "Perú"
        cell.team2?.text = "Australia"
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 8
    }
}

