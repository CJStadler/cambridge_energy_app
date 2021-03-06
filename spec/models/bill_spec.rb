require 'rails_helper'

describe Bill do

  it { should belong_to :user }
  it { should belong_to :unit }

  it { should have_valid(:bill_received).when("2016-02-07") }
  it { should_not have_valid(:bill_received).when(nil, "", "String") }

  it { should have_valid(:usage).when(0, 4000, 9999) }
  it { should_not have_valid(:usage).when(-10, nil, "", "String", 10000) }

end
