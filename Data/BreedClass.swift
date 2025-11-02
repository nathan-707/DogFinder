import Foundation

struct Breed: Hashable, Identifiable {
    let breedName: String
    var id: String {breedName}
    let affectionateWithFamily: Int
    let goodWithYoungChildren: Int
    let goodWithOtherDogs: Int
    let sheddingLevel: Int
    let coatGroomingFrequency: Int
    let droolingLevel: Int
    let coatType: String
    let coatLength: String
    let opennessToStrangers: Int
    let playfulnessLevel: Int
    let watchdogProtectiveNature: Int
    let adaptabilityLevel: Int
    let trainabilityLevel: Int
    let energyLevel: Int
    let barkingLevel: Int
    let mentalStimulationNeeds: Int

    // Map JSON keys to Swift property names
    enum CodingKeys: String, CodingKey {
        case affectionateWithFamily = "Affectionate With Family"
        case goodWithYoungChildren = "Good With Young Children"
        case goodWithOtherDogs = "Good With Other Dogs"
        case sheddingLevel = "Shedding Level"
        case coatGroomingFrequency = "Coat Grooming Frequency"
        case droolingLevel = "Drooling Level"
        case coatType = "Coat Type"
        case coatLength = "Coat Length"
        case opennessToStrangers = "Openness To Strangers"
        case playfulnessLevel = "Playfulness Level"
        case watchdogProtectiveNature = "Watchdog/Protective Nature"
        case adaptabilityLevel = "Adaptability Level"
        case trainabilityLevel = "Trainability Level"
        case energyLevel = "Energy Level"
        case barkingLevel = "Barking Level"
        case mentalStimulationNeeds = "Mental Stimulation Needs"
    }
}


/// Helper responsible for decoding the breeds.json file into an array of `Breed` objects.
enum BreedLoader {
    /// Decode breeds from raw JSON `Data`. The expected format is a JSON object where
    /// keys are breed names and values are objects matching `Breed.CodingKeys`.
    static func decode(data: Data) throws -> [Breed] {
        // The top-level JSON is a dictionary keyed by breed name with a value object containing the properties.
        let decoder = JSONDecoder()
        // Decode the values as a dictionary of CodingKeys->Any by using an intermediate struct.
        // We'll decode to [String: Inner] then map to [Breed] while injecting the key as breedName.
        struct Inner: Decodable {
            let affectionateWithFamily: Int
            let goodWithYoungChildren: Int
            let goodWithOtherDogs: Int
            let sheddingLevel: Int
            let coatGroomingFrequency: Int
            let droolingLevel: Int
            let coatType: String
            let coatLength: String
            let opennessToStrangers: Int
            let playfulnessLevel: Int
            let watchdogProtectiveNature: Int
            let adaptabilityLevel: Int
            let trainabilityLevel: Int
            let energyLevel: Int
            let barkingLevel: Int
            let mentalStimulationNeeds: Int

            enum CodingKeys: String, CodingKey {
                case affectionateWithFamily = "Affectionate With Family"
                case goodWithYoungChildren = "Good With Young Children"
                case goodWithOtherDogs = "Good With Other Dogs"
                case sheddingLevel = "Shedding Level"
                case coatGroomingFrequency = "Coat Grooming Frequency"
                case droolingLevel = "Drooling Level"
                case coatType = "Coat Type"
                case coatLength = "Coat Length"
                case opennessToStrangers = "Openness To Strangers"
                case playfulnessLevel = "Playfulness Level"
                case watchdogProtectiveNature = "Watchdog/Protective Nature"
                case adaptabilityLevel = "Adaptability Level"
                case trainabilityLevel = "Trainability Level"
                case energyLevel = "Energy Level"
                case barkingLevel = "Barking Level"
                case mentalStimulationNeeds = "Mental Stimulation Needs"
            }
        }

        let dict = try decoder.decode([String: Inner].self, from: data)
        // Map dictionary entries to Breed while using the key as breedName
        let breeds = dict.map { (key, value) in
            Breed(
                breedName: key,
                affectionateWithFamily: value.affectionateWithFamily,
                goodWithYoungChildren: value.goodWithYoungChildren,
                goodWithOtherDogs: value.goodWithOtherDogs,
                sheddingLevel: value.sheddingLevel,
                coatGroomingFrequency: value.coatGroomingFrequency,
                droolingLevel: value.droolingLevel,
                coatType: value.coatType,
                coatLength: value.coatLength,
                opennessToStrangers: value.opennessToStrangers,
                playfulnessLevel: value.playfulnessLevel,
                watchdogProtectiveNature: value.watchdogProtectiveNature,
                adaptabilityLevel: value.adaptabilityLevel,
                trainabilityLevel: value.trainabilityLevel,
                energyLevel: value.energyLevel,
                barkingLevel: value.barkingLevel,
                mentalStimulationNeeds: value.mentalStimulationNeeds
            )
        }
        // Sort for stable order (optional): alphabetically by breedName
        return breeds.sorted { $0.breedName.localizedCaseInsensitiveCompare($1.breedName) == .orderedAscending }
    }

    /// Convenience to load and decode a file named `breeds.json` from the main bundle.
    static func decodeFromBundle(fileName: String = "breeds", withExtension: String = "json", bundle: Bundle = .main) throws -> [Breed] {
        guard let url = bundle.url(forResource: fileName, withExtension: withExtension) else {
            throw NSError(domain: "BreedLoader", code: 1, userInfo: [NSLocalizedDescriptionKey: "Could not find \(fileName).\(withExtension) in bundle"])
        }
        let data = try Data(contentsOf: url)
        return try decode(data: data)
    }
}

