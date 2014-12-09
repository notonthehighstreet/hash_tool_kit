require 'spec_helper'

describe HashToolKit::Keys do

  let(:underscore_hash) do
     {
        "id" => "123456789",
        "manager" => {
          "name" => "Roy J.",
          "email_address" => "no@example.com",
          "home_address" => {
            "post_code" => "TW9 1RE",
            "country" => "GB"
          },
          "phone_number" => "012345689",
        },
        "players" => [{"first_name" => "John", "position" => "striker"}, 
                      {"first_name" => "Jane", "position" => "defender"}]
    }
  end

  let(:camelcase_hash) do
    {
      "id" => "123456789",
      "manager" => {
        "name" => "Roy J.",
        "emailAddress" => "no@example.com",
        "homeAddress" => {
          "postCode" => "TW9 1RE",
          "country" => "GB"
        },
        "phoneNumber" => "012345689",
      },
      "players" => [{"firstName" => "John", "position" => "striker"}, 
                    {"firstName" => "Jane", "position" => "defender"}]
    }
  end

  describe ".camelize_keys" do
		it "converts underscore json to camelcase" do
	    expect(described_class.camelize(underscore_hash)).to eq(camelcase_hash)
		end
  end

  describe ".underscorize_keys" do
    it "converts camelcase json to underscore" do
      expect(described_class.underscorize(camelcase_hash)).to eq(underscore_hash)
    end
  end
end
