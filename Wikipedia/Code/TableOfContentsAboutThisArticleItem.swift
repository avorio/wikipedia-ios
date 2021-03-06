import Foundation

public class TableOfContentsAboutThisArticleItem : NSObject, TableOfContentsFooterItem {
    let url:NSURL
    init(url: NSURL) {
        self.url = url
        super.init()
    }
    
    public var titleText:String {
        return localizedStringForURLWithKeyFallingBackOnEnglish(self.url, "article-about-title")
    }
    
    public let itemType: TableOfContentsItemType = TableOfContentsItemType.Primary
    public let footerViewIndex: WMFArticleFooterViewIndex = WMFArticleFooterViewIndex.AboutThisArticle

    public override func isEqual(object: AnyObject?) -> Bool {
        if let item = object as? TableOfContentsAboutThisArticleItem {
            return self === item
                || (titleText == item.titleText
                    && itemType == item.itemType
                    && borderType == item.borderType
                    && indentationLevel == item.indentationLevel)
        } else {
            return false
        }
    }
}

