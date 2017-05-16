require 'rails_helper'

RSpec.describe Beer, type: :model do
  fixtures :all

  let(:name) { 'Lone Pine' }
  let(:brewery) { breweries(:sawdust) }
  let(:style) { styles(:american_ipa) }
  let(:abv) { 5.6 }

  subject { Beer.new(name: name, brewery: brewery, style: style, abv: abv) }

  it 'is valid' do
    expect(subject).to be_valid
  end

  describe '#valid' do
    context 'when name is missing' do
      let(:name) { '' }
      it 'is invalid' do
        expect(subject).to be_invalid
      end
    end

    context 'when missing a brewery' do
      let(:brewery) { nil }
      it 'is invalid' do
        expect(subject).to be_invalid
      end
    end

    context 'when missing a style' do
      let(:style) { nil }
      it 'is invalid' do
        expect(subject).to be_invalid
      end
    end

    context 'when missing the abv' do
      let(:abv) { nil }
      it 'is invalid' do
        expect(subject).to be_invalid
      end
    end

    context 'when the abv is less then or equal to 0' do
      let(:abv) { 0 }
      it 'is invalid' do
        expect(subject).to be_invalid
      end
    end
  end
end
