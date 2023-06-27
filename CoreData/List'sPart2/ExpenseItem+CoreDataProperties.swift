//
//  ExpenseItem+CoreDataProperties.swift
//  List'sPart2
//
//  Created by Anastasiia Alyaseva on 05.04.2023.
//
//

import Foundation
import CoreData


extension ExpenseItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ExpenseItem> {
        return NSFetchRequest<ExpenseItem>(entityName: "ExpenseItem")
    }

    @NSManaged public var amount: Double
    @NSManaged public var name: String?
    @NSManaged public var type: String?

}

extension ExpenseItem : Identifiable {

}
