import UIKit

struct DefaultHeaderLabelFormStyle: InputLabelStyle {
    var isHidden: Bool { false }
    var text: String { "billingAddressTitle".localized(forClass: CheckoutTheme.self) }
    var font: UIFont { UIFont.systemFont(ofSize: 24) }
    var textColor: UIColor { .codGray }
}
