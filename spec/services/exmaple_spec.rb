require 'spec_helper'

RSpec.describe Example, :type => :service do
  describe '#current_env' do
    context 'when call Example run' do
      it "should return environment from .env file" do
        expect(Example.new.current_env).to eq "development"
      end
    end
  end

end
