import UIKit
import Vision

class ResultsTableViewController: UITableViewController {
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellDefault", for: indexPath)
        return cell
    }
}

extension ResultsTableViewController: PulleyDrawerViewControllerDelegate {
    func collapsedDrawerHeight() -> CGFloat {
        return 68.0
    }
    
    func partialRevealDrawerHeight() -> CGFloat {
        return 264.0
    }
    
    func supportedDrawerPositions() -> [PulleyPosition] {
        // You can specify the drawer positions you support. This is the same as: [.open, .partiallyRevealed, .collapsed, .closed]
        return PulleyPosition.all
    }
    
    func drawerPositionDidChange(drawer: PulleyViewController) {
        tableView.isScrollEnabled = drawer.drawerPosition == .open
    }
}
