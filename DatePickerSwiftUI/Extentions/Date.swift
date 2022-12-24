//
//  Date.swift
//  DatePickerSwiftUI
//
//  Created by Mohammed Safadi Macbook Pro on 24/12/2022.
//

import Foundation

extension Date {
    func formatDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.setLocalizedDateFormatFromTemplate("EEEE, MMM d")
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        return dateFormatter.string(from: self)
    }
    
    /// Extentiond Date function to convert date style from api to another style formatter
    /// ```
    /// Example : from "2023-01-01 12:55:00" to "February 1, 2023"
    /// ```
    func formatStringDate(date: String) -> String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
            let newDate = dateFormatter.date(from: date)
            dateFormatter.setLocalizedDateFormatFromTemplate("MMMM d, yyyy")
            return dateFormatter.string(from: newDate!)
        
        // Output: February 1, 2023

    }
}

