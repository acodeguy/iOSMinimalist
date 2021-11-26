import UIKit

/*
This view controller demonstrates a UITableViewController
*/

final class DemoChooserViewController: UITableViewController {

    // MARK: Properties

    private let demos: [Demo]

    // MARK: Lifecycle methods

    init(demos: [Demo]) {
        self.demos = demos

        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Demo Chooser"

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.reuseIdentifier)
    }

    // MARK: UITableViewDataSource methods

    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        demos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.reuseIdentifier, for: indexPath)

        let demo = demos[indexPath.row]

        var cellConfig = cell.defaultContentConfiguration()
        cellConfig.text = demo.name
        cellConfig.secondaryText = demo.description
        cell.contentConfiguration = cellConfig

        return cell
    }

    // MARK: UITableViewDelegate methods

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let demo = demos[indexPath.row]

        let viewController = demo.viewController

        navigationController?.pushViewController(viewController, animated: true)
    }
}

extension UITableViewCell {
    static let reuseIdentifier = "DemoCell"
}
