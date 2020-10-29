class Resident < ApplicationRecord
  include Personable
  enum local_gender: { local_male: "local_male", local_female: "local_female" }

end
