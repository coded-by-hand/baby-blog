require 'spec_helper'

describe ApplicationHelper do

  describe 'render_analytics' do
    it 'returns nil' do
      expect(helper.render_analytics).to eql(nil)
    end
    context 'in production' do
      before { Rails.stub_chain(:env, :production?).and_return(true) }
      it 'returns a string' do
        expect(helper.render_analytics).to be_kind_of(String)
      end
    end
  end

end
