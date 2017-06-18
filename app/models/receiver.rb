class Receiver < ApplicationRecord


def self.search(search)
  if search
    Receiver.where('nama LIKE ?', "%#{search}%")
  else
    Receiver.all
  end
end

end
