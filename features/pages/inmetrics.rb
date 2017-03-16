# encoding: utf-8
# !/usr/bin/env ruby


class Home < SitePrism::Page
  set_url "http://www.inmetrics.com.br"

  element :about_link, "a[href='http://www.inmetrics.com.br/quem-somos/']"
  element :about_text, "div[class='iwh-sub-title']"
end

