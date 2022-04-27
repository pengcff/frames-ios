import UIKit

struct BillingFormFactory {
    // in order
    static let styles: [BillingFormTextFieldCellStyle] = [
        DefaultBillingFormFullNameCellStyle(),
        DefaultBillingFormAddressLine1CellStyle(),
        DefaultBillingFormAddressLine2CellStyle(),
        DefaultBillingFormCityCellStyle(),
        DefaultBillingFormStateCellStyle(),
        DefaultBillingFormPostcodeCellStyle(),
        DefaultBillingFormCountryCellStyle(),
        DefaultBillingFormPhoneNumberCellStyle()
    ]
    
    static func getBillingFormViewController(delegate: BillingFormViewModelDelegate) -> UIViewController {
        let style = DefaultBillingFormStyle()
        let viewModel = DefaultBillingFormViewModel(style: style, initialCountry: "", delegate: delegate)
        return BillingFormViewController(viewModel: viewModel)
    }
    
}
