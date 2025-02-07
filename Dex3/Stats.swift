//
//  Stats.swift
//  Dex3
//
//  Created by Jim Rainville on 2/7/25.
//

import SwiftUI
import Charts

struct Stats: View {
    @EnvironmentObject var pokemon: Pokemon
    
    var body: some View {
        Chart(pokemon.stats) { stat in
            BarMark(
                x: .value("Value", stat.value),
                y: .value("Stat", stat.label)
            )
            .annotation(position: .trailing) {
                Text("\(stat.value)")
                    .padding(.top, -5)
                    // Charts have a background color (the blue bars) and a secondary color
                    // (color of the labels. By setting this to .secondary we match the labels.
                    .foregroundColor(.secondary)
                    .font(.subheadline)
            }
        }
        .frame(height: 200)
        .padding([.leading, .bottom, .trailing])
        .foregroundColor(Color(pokemon.types![0].capitalized))
        .chartXScale(domain: 0...pokemon.highestStat.value+5)
    }
}

#Preview {
    Stats()
        .environmentObject(SamplePokemon.samplePokemon)
}
