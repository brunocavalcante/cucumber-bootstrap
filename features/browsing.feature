Feature: Browsing
  Scenario: Happy Day
    When I go to "https://rails.gocase.com.br/"
    And I click on the selector ".header__logo [alt='Logo Gocase - Capas para Celular e Acessórios']"
    And I click on the menu ".main-menu > li:nth-child(1)"
    And I click on the name "Patches"
    And I click on the selector ".catalog__item:first-child"
    Then I see ".product-title"