class PagesController < ApplicationController
  include HighVoltage::StaticPage

  layout :layout_for_page

  private

    def layout_for_page
      # tries to use a matching app/views/layouts/page_title.html.erb
      if template_exists? "layouts/#{params[:id]}"
        params[:id]
      else
        'application'
        # # use specific overrides
        # case params[:id] # page_title
        # when 'example'
        #   'some_shared_layout'
        # else
        #   'application'
        # end
      end
    end

end
