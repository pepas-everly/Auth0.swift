import Foundation

extension URL {

    static func httpsURL(from domain: String, path pathString: String = "") -> URL {
        let prefix = !domain.hasPrefix("https") ? "https://" : ""
        let suffix = !domain.hasSuffix("/") ? "/" : ""
        var pathString = pathString
        if pathString.hasPrefix("/") {
            pathString.removeFirst()
        }
        let urlString = "\(prefix)\(domain)\(suffix)\(pathString)"
        return URL(string: urlString)!
    }

}
