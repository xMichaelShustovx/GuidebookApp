//
//  Place+CoreDataProperties.swift
//  GuidebookApp
//
//  Created by Michael Shustov on 16.11.2021.
//
//

import Foundation
import CoreData


extension Place {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Place> {
        return NSFetchRequest<Place>(entityName: "Place")
    }

    @NSManaged public var name: String?
    @NSManaged public var imageName: String?
    @NSManaged public var summary: String?
    @NSManaged public var lat: Double
    @NSManaged public var long: Double
    @NSManaged public var adress: String?

}

extension Place : Identifiable {

}
