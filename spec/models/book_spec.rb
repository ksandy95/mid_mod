require 'rails_helper'

RSpec.describe Book do
  describe 'Relationships' do
    it {should belong_to :author}
  end

  describe 'Validations' do
    it {should validate_presence_of :title}
    it {should validate_presence_of :pages}
    it {should validate_presence_of :publication_year}
  end


end
