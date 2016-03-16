class Job < ActiveRecord::Base
  belongs_to :boat

  validates :title, presence: { message: "Job Title Required" }, uniqueness: { message: "Job Title taken, rename it." }
  validates_numericality_of :containers_needed, greater_than_or_equal_to: 1, message: "Job must have at least 1 container" 
  validates :origin, inclusion: { in: ["Algeciras", "Tangier", "Gibraltar", "Ceuta", "Málaga", "Al Hoceima", "Melilla", "Nador", "Almería", "Cartagena", "Oran", "Alicante", "Valencia", "Castellón de la Plana", "Calpe", "Mostaganem", "Dénia", "Sant Carles de la Ràpita", "Tarragona", "Sant Antoni de Portmany", "Ibiza", "Sitges", "Barcelona", "Badalona", "Palma", "Algiers", "Alcúdia", "Cala", "Millor", "Agde", "Sète", "Ciutadella", "Mahón", "Béjaïa", "Marseille", "Jijel", "Toulon", "Monaco", "Cannes", "Nice", "Palermo", "Trieste", "Benghazi", "Alexandria", "Tel-Aviv"], message: "Pick an origin" }
  validates :destination, inclusion: { in: ["Algeciras", "Tangier", "Gibraltar", "Ceuta", "Málaga", "Al Hoceima", "Melilla", "Nador", "Almería", "Cartagena", "Oran", "Alicante", "Valencia", "Castellón de la Plana", "Calpe", "Mostaganem", "Dénia", "Sant Carles de la Ràpita", "Tarragona", "Sant Antoni de Portmany", "Ibiza", "Sitges", "Barcelona", "Badalona", "Palma", "Algiers", "Alcúdia", "Cala", "Millor", "Agde", "Sète", "Ciutadella", "Mahón", "Béjaïa", "Marseille", "Jijel", "Toulon", "Monaco", "Cannes", "Nice", "Palermo", "Trieste", "Benghazi", "Alexandria", "Tel-Aviv"], message: "Pick a destination" }
  validates :cargo, length: { minimum: 50, message: "Cargo Description: minimum of 50 characters" }
  validates_numericality_of :cost, greater_than_or_equal_to: 1000, message: "Cost must be greater than $1,000"
  validates :delivery_date, presence: { message: "Delivery Date can't be blank" }
end



