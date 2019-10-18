//
//  Article.swift
//  NewsAppMVVM
//
//  Created by APP技術部-陳冠志 on 2019/10/18.
//  Copyright © 2019 Bruce Chen. All rights reserved.
//

import Foundation

struct ArticleResponse: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String?
}
