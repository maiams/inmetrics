# encoding: utf-8
# !/usr/bin/env ruby


class Home < SitePrism::Page
  set_url "https://enterprise-demo.orangehrmlive.com"
  element :username_field, "input[id='txtUsername']"
  element :password_field, "input[id='txtPassword']"
  element :login_button, "input[id='btnLogin']"
end

class Disciplines < SitePrism::Page
  element :disciplinary_link, "a[id='menu_discipline_defaultDisciplinaryView']"
  element :add_button, "input[id='btnAdd']"
end

class AddDisciplinaryCase < SitePrism::Page
  element :employee_name_field, "input[id='addCase_employeeName_empName']"
  element :employee_name_li_selector, xpath, "//div[class='ac_results']/ul/li"
  element :case_name_field, "input[id='addCase_caseName']"
  element :case_description_textarea, "textarea[id='addCase_description']"
  element :save_button, "input[id='btnSave']"
end

class ViewDisciplinaryCase < SitePrism::Page
  elements :disciplinary_cases, "span[class='commentContainerLong']"

  def disciplinary_cases_name
    disciplinary_cases.map {|dc| dc.disciplinary_cases['text']}
  end
end

