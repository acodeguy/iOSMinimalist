import UIKit

extension UIView {
    func addSubview(view: UIView, pinningWithInsets insets: UIEdgeInsets?) {
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.pin(to: self, withInsets: insets)
    }

    private func pin(to view: UIView, withInsets insets: UIEdgeInsets?) {
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: view.topAnchor, constant: insets?.top ?? 0),
            self.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: insets?.left ?? 0),
            self.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -(insets?.right ?? 0)),
            self.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -(insets?.bottom ?? 0))
        ])
    }
}
