require 'spec_helper'

describe PagesController do

  describe 'page layout' do
    before { allow(controller).to receive(:params).and_return( id: 'test' ) }
    context 'when matching layout file exists' do
      before do
        allow(controller).to receive(:template_exists?)
          .with('layouts/test')
          .and_return(true)
      end
      it 'uses it' do
        expect(controller.send(:layout_for_page)).to eql('test')
      end
    end
    context 'when matching layout file does not exists' do
      before do
        allow(controller).to receive(:template_exists?)
          .with('layouts/test')
          .and_return(false)
      end
      it 'uses the default layout' do
        expect(controller.send(:layout_for_page)).to eql('application')
      end
    end
  end

end
