//
//  MenuItemsView.swift
//  meta-advanced-programming-in-swift
//
//  Created by Nguyễn Thanh Bình on 28/05/2023.
//

import SwiftUI

struct MenuItemsView: View {
    @State private var isShowOptions = false
    var viewModel: MenuItemsViewModel = MenuItemsViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(content: {
                HStack {
                    Text("Food").frame(alignment: .leading)
                }
                LazyVGrid(columns: [
                    GridItem(.adaptive(minimum: 100)),
                    GridItem(.adaptive(minimum: 150)),
                    GridItem(.adaptive(minimum: 150))
                ]) {
                    ForEach(self.viewModel.foodMenuItems, id: \.id) { item in
                        VStack(spacing: 12, content: {
                            Color.black.overlay {
                                EmptyView()
                                    .frame(height: 100)
                            }
                            Text(item.title)
                        }).frame(maxWidth: .infinity)
                            .onTapGesture {
                                
                            }
                    }
                }
                LazyVGrid(columns: [
                    GridItem(.flexible()),
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ]) {
                    ForEach(self.viewModel.drinkMenuItems, id: \.id) { item in
                        VStack {
                            Text(item.title)
                        }
                    }
                }
                LazyVGrid(columns: [
                    GridItem(.flexible()),
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ]) {
                    ForEach(self.viewModel.dessertMenuItems, id: \.id) { item in
                        VStack {
                            Text(item.title)
                        }
                    }
                }
            }).navigationTitle(Text("Menu"))
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
