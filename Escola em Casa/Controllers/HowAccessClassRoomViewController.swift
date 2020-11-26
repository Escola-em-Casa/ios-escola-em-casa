import UIKit
import WebKit

class HowAccessClassRoomViewController: UIViewController {

    // MARK: - Properties

    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadUrl()
    }

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    private func loadUrl() {
        let request = URLRequest(url: WebViewURL.howAcess.url)
        webView.load(request)
    }
}

extension HowAccessClassRoomViewController: WKNavigationDelegate {

    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if isAvailableForDomain(navigationAction.request.url?.host) {
            decisionHandler(.allow)
            return
        } else {
            decisionHandler(.cancel)
        }
    }

    private func isAvailableForDomain(_ host: String?) -> Bool {
        if let host = host, host.contains("escolaemcasa.se.df.gov.br") {
            return true
        } else {
            return false
        }
    }
}
