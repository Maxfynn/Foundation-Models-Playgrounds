//
//  MockCSV.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/13/25.
//


import FoundationModels
import Playgrounds

@Generable(description: "Synthetic CSV representing mock data.")
struct MockCSV {
    @Guide(description: "The CSV string (first row headers, rows delimited by \n).")
    var csv: String
    @Guide(description: "How many rows of data (excluding header) were generated?")
    var rowCount: Int
}

#Playground {
    let schema = """
    Generate a CSV for a fictitious e‑commerce orders table with columns:
    order_id (UUID), order_date (recent ISO‑8601 date), customer_email, product_sku (alphanumeric),
    quantity (1‑5), unit_price (USD), total (computed).
    Produce exactly 10 rows.
    """
    let instruction = """
    You create realistic‑looking mock datasets for development. Output only the CSV string plus row count.
    Compute derived fields accurately (total = quantity × unit_price).
    """
    let session = LanguageModelSession(instructions: instruction)

    let dataset = try await session.respond(
        to: Prompt(schema),
        generating: MockCSV.self
    )
}
