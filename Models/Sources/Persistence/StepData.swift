//
//  StepData.swift
//  Persistence
//
//  Created by Егор Бадмаев on 02.01.2023.
//

/// Represents `Step: NSManagedObject` class to simplify initializing and providing data to interactor.
public struct StepData: Equatable {
    /// Step's text/description.
    public var text: String
    /// Raw data for image.
    public var imageData: Data?
    
    /// Memberwise initializer with optional `imageData` property.
    public init(text: String, imageData: Data? = nil) {
        self.text = text
        self.imageData = imageData
    }
    
    public static func == (lhs: StepData, rhs: StepData) -> Bool {
        return lhs.text == rhs.text &&
               lhs.imageData == rhs.imageData
    }
}
