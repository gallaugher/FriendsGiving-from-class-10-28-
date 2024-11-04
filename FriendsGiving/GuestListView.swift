// File: GuestListView.swift Project: FriendsGiving
// Created by: Prof. John Gallaugher on 10/28/24
// YouTube.com/profgallaugher  -  threads.net/john.gallaugher

import SwiftUI
import SwiftData

struct GuestListView: View {
    @Query var guests: [Guest]
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(guests) { guest in
                    Text(guest.name)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Friends:")
        }
    }
}

#Preview {
    GuestListView()
        .modelContainer(Guest.preview)
}
