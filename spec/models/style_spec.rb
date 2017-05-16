require 'rails_helper'

RSpec.describe Style, type: :model do
  let(:name) { 'Beer Style' }

  subject { Style.new(name: name) }

  it 'is valid' do
    expect(subject).to be_valid
  end

  describe '#valid' do
    context 'when missing name' do
      let(:name) { '' }

      it 'is invalid' do
        expect(subject).to be_invalid
      end
    end

    context 'when the style already exists' do
      it 'is invalid' do
        Style.create!(name: name)

        expect(subject).to be_invalid
      end
    end
  end
end
