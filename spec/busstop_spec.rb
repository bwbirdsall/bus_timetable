require 'spec_helper'

describe Busstop do
  it { should belong_to :bus }
  it { should belong_to :stop }
end
