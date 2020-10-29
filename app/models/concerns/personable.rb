module Personable
  extend ActiveSupport::Concern

  included do
    belongs_to :person, :autosave => true
    delegate :gender, :gender=, :gender_changed?, :gender_was, :to => :person, :allow_nil => true
    enum gender: { male: "male", female: "female" }
  end

  def person
    super || build_person
  end

end
