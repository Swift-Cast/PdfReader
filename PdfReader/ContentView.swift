//
//  ContentView.swift
//  PdfReader
//
//  Created by HaoPeiqiang on 2023/1/3.
//

import SwiftUI
import PDFKit

struct ContentView: View {
    var body: some View {
        SwiftPDFView(url: Bundle.main.url(forResource: "sample_pdf", withExtension: "pdf")!)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
