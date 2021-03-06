# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PickupLocation, type: :model do
  let(:subject) { build(:pickup_location) }

  context 'relations', vcr: true do
    it { is_expected.to belong_to(:carpool) }
  end

  context 'when saving', vcr: true do
    it 'should geolocate and store latitude, longitude' do
      subject.save
      expect(subject.latitude).to_not be_nil
      expect(subject.longitude).to_not be_nil
    end
  end
end
