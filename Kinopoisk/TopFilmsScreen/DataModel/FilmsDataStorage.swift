
import Foundation

final class FilmsDataStorage {
    
    private var films: [Film] = []
    
    static let shared = FilmsDataStorage()
    
    private init() { }
    
}

//MARK: FilmsDataStorageProtocol
extension FilmsDataStorage: FilmsDataStorageProtocol {
    
    func fillingFilmsWithData(data: Kino) {
        return films += data.films
    }

    func transmittingFilmsArray() -> [Film] {
        return films
    }

    func numberOfRowsInSection() -> Int {
        return films.count
    }

    func getFilm(for indexPath: IndexPath) -> Film {
        return films[indexPath.row]
    }
    
}
