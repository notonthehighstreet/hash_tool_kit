require 'spec_helper'

describe HashToolKit::StringUtils do

  let(:camelcase_string) 	{ 'SomeRandomString' }
  let(:underscore_string) { 'some_random_string' }

  describe ".to_underscore" do
  	context "camelcase string" do
			it "converts to underscore" do
		    expect(described_class.to_underscore(camelcase_string)).to eq(underscore_string)
			end
		end

		context "underscore string" do
			it "remains the same" do
		    expect(described_class.to_underscore(underscore_string)).to eq(underscore_string)
			end
		end
  end

  describe ".to_camelcase" do
  	context "underscore string" do
	    it "converts to camelcase" do
	      expect(described_class.to_camelcase(underscore_string)).to eq(camelcase_string)
	    end
	  end
  end
end


