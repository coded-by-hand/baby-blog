require 'spec_helper'

describe ApplicationHelper do

  describe 'render_analytics' do
    it 'returns nil' do
      expect(helper.render_analytics).to eql(nil)
    end
    context 'in production with an analytics_id present' do
      before do
        allow(Rails.env).to receive(:production?).and_return(true)
        allow(Rails.application.secrets).to receive(:google_analytics_id).and_return('UA-XXXXX-X')
      end
      it 'returns a string' do
        expect(helper.render_analytics).to be_kind_of(String)
      end
    end
  end

end
