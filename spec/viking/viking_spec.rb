require 'spec_helper'

describe Viking do

  it { should respond_to :logger }
  it { should respond_to :default_engine }
  it { should respond_to :connect_options }
  it { should respond_to :default_instance }

  describe ".connect" do
    it "should load the Akismet engine" do
      Viking.connect('akismet', {}).should be_a_kind_of(Viking::Akismet)
    end

    it "should load the Akismet engine with Symbol" do
      Viking.connect(:akismet, {}).should be_a_kind_of(Viking::Akismet)
    end

    it "should be nil if the engine is nil" do
      Viking.connect(nil, {}).should be_nil
    end

    it "should be nil if the engine is blank" do
      Viking.connect('', {}).should be_nil
    end

  end

  describe ".enabled?" do
    it "should not be enabled if a default instance has not be initialized" do
      Viking.should_not be_enabled
    end
  end

end
