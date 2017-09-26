require 'spec_helper'

describe package('graphite-web') do
  it { should be_installed }
end

describe package('graphite-carbon') do
  it { should be_installed }
end

describe port(80) do
  it { should be_listening }
end

