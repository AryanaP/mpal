FactoryGirl.define do
  factory :projet do
    numero_fiscal 12
    reference_avis 15
    description "Je veux changer ma chaudiere"
    adresse '12 rue de la mare, 75010 Paris'
    departement '75'
    code_insee '75010'
    code_postal '75010'
    after(:create) do |projet, evaluator|
      create_list(:demandeur, 1, projet: projet)
    end
  end
end
