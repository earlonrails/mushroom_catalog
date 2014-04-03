require 'spec_helper'

describe "Families" do
  describe "GET /families" do
    it "works! (now write some real specs)" do
      get families_path
      expect(response.status).to be(200)
    end
  end
end
