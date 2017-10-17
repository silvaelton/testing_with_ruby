require_relative '../helpers/application_helper'

RSpec.configure do |config|
  config.include ApplicationHelper
end

describe 'Satisfy' do 
  it { expect(10).to be_even }
  it { expect(10).to satisfy { |x| x % 2 == 0 } }
  it { 
    expect(20).to satisfy('Satisfaça a condição') do |x| 
      x % 2 == 0
    end 
   }

   it { expect(fruta).to include("banana").or include("maça")}
end