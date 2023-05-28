//
//  MenuItemsOptionView.swift
//  meta-advanced-programming-in-swift
//
//  Created by Nguyễn Thanh Bình on 28/05/2023.
//

import SwiftUI
import Foundation

enum SortMenuItem: String, CaseIterable {
    case mostPopular = "Most Popular"
    case price = "Price $-$$$"
    case az = "A-Z"
}

struct MenuItemsOptionView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            List {
                Section("Selected categories") {
                    ForEach(MenuCategory.allCases, id: \.self) { item in
                        Text(item.rawValue)
                    }
                }
                Section("Sort by") {
                    ForEach(SortMenuItem.allCases, id: \.self) { item in
                        Text(item.rawValue)
                    }
                }
            }.navigationTitle(Text("Filter"))
                .toolbar {
                    ToolbarItem {
                        Button("Done") {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    }
                }
        }
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
