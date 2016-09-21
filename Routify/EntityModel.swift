//
//  EntityModel.swift
//  GoodJob
//
//  Created by Jacky Nguyen on 9/19/16.
//  Copyright © 2016 Jacky. All rights reserved.
//

import UIKit

class EntityModel: NSObject {
    
    var contentId: String?
    var thumbUrl: String?
    var title: String?
    var content: String?
    
    var dateCreated: Date?

    
    override init() {
        super.init()
    }
    
    func initData(mContentId: String, mThumbUrl:String, mTitle:String, mContent: String, mDateCreated: Date ) -> Void {
        contentId = mContentId;
        thumbUrl   = mThumbUrl;
        title =     mTitle;
        content = mContent;
        dateCreated = mDateCreated;
    }
}
