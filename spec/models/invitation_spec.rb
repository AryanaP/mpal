require 'rails_helper'

describe Invitation do
  let(:invitation) { FactoryGirl.build(:invitation) }
  subject { invitation }

  it { is_expected.to validate_presence_of(:projet) }
  it { is_expected.to validate_presence_of(:operateur) }
  it { is_expected.to validate_uniqueness_of(:operateur).scoped_to(:projet_id) }
  

  it { is_expected.to be_valid }

  it "genere un jeton avant la création" do
    expect(FactoryGirl.create(:invitation).token).to be_present
  end

  it { is_expected.to delegate_method(:usager).to(:projet) }
  it { is_expected.to delegate_method(:adresse).to(:projet) }
  it { is_expected.to delegate_method(:description).to(:projet) }

  it "cree un evenement pour l'invitation d'un operateur" do
    nb_evenements = invitation.projet.evenements.count
    invitation.save
    expect(nb_evenements).to be < invitation.projet.evenements.count
  end
end
