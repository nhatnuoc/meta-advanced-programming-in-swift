//
//  MenuItemsView.swift
//  meta-advanced-programming-in-swift
//
//  Created by Nguyễn Thanh Bình on 28/05/2023.
//

import SwiftUI

struct MenuItemsView: View {
    @State private var isShowOptions = false
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Menu")
                }
            }.navigationTitle(Text("Menu"))
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            self.isShowOptions.toggle()
                        } label: {
                            Image(systemName: "slider.horizontal.3")
                        }.sheet(isPresented: $isShowOptions) {
                            MenuItemsOptionView()
                        }

                    }
                }
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
