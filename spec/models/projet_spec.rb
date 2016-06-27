require 'rails_helper'

describe Projet do
  let(:projet) { FactoryGirl.build(:projet) }
  it { expect(FactoryGirl.build(:projet)).to be_valid }
  
  #let!(:projet) { FactoryGirl.create(:projet) }
  #it { expect(Projet.count).to eq(1) }

  it { is_expected.to validate_presence_of(:usager) }
  it { is_expected.to validate_presence_of(:numero_fiscal) }
  it { is_expected.to validate_presence_of(:reference_avis) }
  it { is_expected.to validate_presence_of(:adresse) }
  it { is_expected.to have_many(:intervenants) }
  it { is_expected.to have_many(:evenements) }
end
