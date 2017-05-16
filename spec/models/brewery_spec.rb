require 'rails_helper'

RSpec.describe Brewery, type: :model do
  let(:name) { 'Brewery Name' }

  subject { Brewery.new(name: name) }

  it 'has a valid factory' do
    expect(subject).to be_valid
  end

  describe '#valid' do
    context 'when name is missing' do
      let(:name) { '' }
      it 'is invalid' do
        expect(subject).to be_invalid
      end
    end
  end
end
