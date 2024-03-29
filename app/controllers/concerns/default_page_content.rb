module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Dobriyan Petkov | My Portfolio"
    @seo_keywords = "Dobriyan Petkov portfolio"
  end
end
