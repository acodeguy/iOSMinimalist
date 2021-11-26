import UIKit

final class ScrollerViewController: UIViewController {

    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        return scrollView
    }()

    private let contentView: UIView = {
        let view = UIView()
        return view
    }()

    private let loremBox: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontForContentSizeCategory = true
        label.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Scroller"

        view.backgroundColor = .systemBackground

        // add the scroll view as a sub-view of the UIViewcontroller's view
        // pin it to the view with no insets
        view.addSubview(view: scrollView, pinningWithInsets: nil)

        // add the contentView asa sub-view of the scroll view
        // pin it to the scroll view's frame with no insets
        scrollView.addSubview(view: contentView, pinningWithInsets: nil)

        // add the label as a sub-view of the content view
        // pin it to the content view with some insets on leading & trailing edges
        contentView.addSubview(view: loremBox, pinningWithInsets: UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16))

        // set the content view's width to the width of the main view
        // this forces vertical scorlling
        contentView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    }
}
