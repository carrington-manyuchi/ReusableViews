//
//  Ad.swift
//  ReusableViews
//
//  Created by Manyuchi, Carrington C on 2024/09/01.
//

import Foundation

struct Ad: Codable {
    let offerId: String
    let offerType: String
    let startColour: String
    let endColour: String
    let imageLeftUrl: String
    let imageRightUrl: String
    let headerText: String
    let greetingText: String
    let offerHeading: String
    let offerDescription: String
    let cta: CTA
    let offerDetails: OfferDetails
    let faq: FAQ

    struct CTA: Codable {
        let text: String
        let destinationType: String
        let destinationIdentifier: String
    }

    struct OfferDetails: Codable {
        let lines: [String]
        let tncUrl: String
    }

    struct FAQ: Codable {
        let sections: [FAQSection]

        struct FAQSection: Codable {
            let question: String
            let answer: String
        }
    }
}
