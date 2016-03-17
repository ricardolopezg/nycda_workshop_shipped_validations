class Boat < ActiveRecord::Base
  has_many :jobs, dependent: :destroy
  has_many :users
  has_many :user_boats
  belongs_to :user


  has_attached_file :avatar, styles: { medium: "300x200>", thumb: "100x100>" }, default_url: "http://placehold.it/300x200"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  validates :boat_name, presence: { message: "Boat Name Required" }, uniqueness: { message: "Boat Name taken, Try another name." }
  validates :container_capacity, presence: { message: "Enter Container Capacity" }
  validates :location, inclusion: { in: ["Algeciras", "Tangier", "Gibraltar", "Ceuta", "Málaga", "Al Hoceima", "Melilla", "Nador", "Almería", "Cartagena", "Oran", "Alicante", "Valencia", "Castellón de la Plana", "Calpe", "Mostaganem", "Dénia", "Sant Carles de la Ràpita", "Tarragona", "Sant Antoni de Portmany", "Ibiza", "Sitges", "Barcelona", "Badalona", "Palma", "Algiers", "Alcúdia", "Cala", "Millor", "Agde", "Sète", "Ciutadella", "Mahón", "Béjaïa", "Marseille", "Jijel", "Toulon", "Monaco", "Cannes", "Nice", "Palermo", "Trieste", "Benghazi", "Alexandria", "Tel-Aviv"], message: "Pick a city" }
    
end
