require 'spec_helper'

describe 'Testing the exchange rates' do

  before(:all) do

    @exchange_rates = ParseJson.new('json_exchange_rates.json')

  end

  it 'Should be a Hash' do

    expect(@exchange_rates.json_file).to be_a_kind_of(Hash)

  end

  it 'should contain the base as EUR' do

    expect(@exchange_rates.json_file["base"]).to eq 'EUR' 
    # expect(@exchange_rates.json_file).to include "base" => "EUR"
   
  end

  it "Should have a date string" do
    expect(@exchange_rates.json_file["date"]).to be_a(String)
  
  end

  it "should countain 31 rates" do

        # expect(@exchange_rates.json_file["rates"].count).to be eq 31
        
        @key_num = 0
        @value_num=0

      @exchange_rates.json_file["rates"].each do |k,v|
         
        @key_num+=1
        @value_num+=1
      end
      expect(@key_num).to eq 31
      expect(@value_num).to eq 31

     
  end
   

  it "should all rates should be Floats" do
    @exchange_rates.json_file["rates"].each do |k,v|
      expect(v).to be_a Float
   end
  end


end