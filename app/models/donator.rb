class Donator < ApplicationRecord

def self.search(search)
  if search
    Donator.where('nama LIKE ?', "%#{search}%")
  else
    Donator.all
  end
end


end
