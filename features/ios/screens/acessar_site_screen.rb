class AcessarSiteScreen
  def initialize
    @layout_name = 'XCUIElementTypeButton'
    @url = 'XCUIElementTypeTextField'
    @enter = 'XCUIElementTypeButton'
    @home_site = 'XCUIElementTypeButton'
  end

  def acessar_homePage
    find_element(class: @layout_name).text
  end

  def acessar_site(site)
    @site = CREDENTIALS[site.tr(' ', '_').to_sym][:url]
    find_element(class: @url).send_keys(@site)
    find_element(class: @enter).click
    #binding.pry
  end

  def visualizar_home_site
    wait_for_element(class: @home_site)
  end
end
