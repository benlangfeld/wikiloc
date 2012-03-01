Feature: locator submits location

  The locator submits a location. The application scrapes relevant data from Wikipedia.
  As a start, it will get the location's populations.
  
  Scenario: Asking for the capital of Israel
    Given I am not yet using wikiloc
    When I run `wikiloc` interactively
    And I type "Israel"
    And I type "capital"
    Then the output should contain "Welcome to Wikiloc!"
    And the output should contain "Enter location:"
    Then the output should contain "What do you want to know?"
    Then the output should contain "Jerusalem"
  
  Scenario Outline: All countries and their capitals
    Given the location is "<location>"
    When I ask for "<data_type>"
    Then the data should be "<data>"

    Scenarios: All countries and their capitals
    | location | data_type | data |
    | Afghanistan | capital | Kabul |
    | Albania | capital | Tirana |
    | Algeria | capital | Algiers |
    | Andorra | capital | Andorra la Vella |
    | Angola | capital | Luanda |
    | Antigua and Barbuda | capital | Saint John's |
    | Argentina | capital | Buenos Aires |
    | Armenia | capital | Yerevan |
    | Australia | capital | Canberra |
    | Austria | capital | Vienna |
    | Azerbaijan | capital | Baku |
    | The Bahamas | capital | Nassau |
    | Bahrain | capital | Manama |
    | Bangladesh | capital | Dhaka |
    | Barbados | capital | Bridgetown |
    | Belarus | capital | Minsk |
    | Belgium | capital | Brussels |
    | Belize | capital | Belmopan |
    | Benin | capital | Porto-Novo |
    | Bhutan | capital | Thimphu |
    #| Bolivia | capital | La Paz (administrative); Sucre (judicial) |
    | Bosnia and Herzegovina | capital | Sarajevo |
    | Botswana | capital | Gaborone |
    #| Brazil | capital | Brasilia |
    | Brunei | capital | Bandar Seri Begawan |
    | Bulgaria | capital | Sofia |
    | Burkina Faso | capital | Ouagadougou |
    | Burundi | capital | Bujumbura |
    | Cambodia | capital | Phnom Penh |
    #| Cameroon | capital | Yaounde |
    | Canada | capital | Ottawa |
    | Cape Verde | capital | Praia |
    | Central African Republic | capital | Bangui |
    | Chad | capital | N'Djamena |
    | Chile | capital | Santiago |
    | China | capital | Beijing |
    | Colombia | capital | Bogotá |
    | Comoros | capital | Moroni |
    | Congo, Republic of the | capital | Brazzaville |
    | Congo, Democratic Republic of the | capital | Kinshasa |
    | Costa Rica | capital | San José |
    ##| Cote d'Ivoire | capital | Yamoussoukro (official); Abidjan (de facto) |
    | Croatia | capital | Zagreb |
    | Cuba | capital | Havana |
    #| Cyprus | capital | Nicosia |
    | Czech Republic | capital | Prague |
    | Denmark | capital | Copenhagen |
    | Djibouti | capital | Djibouti |
    | Dominica | capital | Roseau |
    | Dominican Republic | capital | Santo Domingo |
    | East Timor | capital | Dili |
    | Ecuador | capital | Quito |
    | Egypt | capital | Cairo |
    | El Salvador | capital | San Salvador |
    #| Equatorial Guinea | capital | Malabo |
    | Eritrea | capital | Asmara |
    | Estonia | capital | Tallinn |
    | Ethiopia | capital | Addis Ababa |
    | Fiji | capital | Suva |
    | Finland | capital | Helsinki |
    | France | capital | Paris |
    | Gabon | capital | Libreville |
    | The Gambia | capital | Banjul |
    #| Georgia | capital | Tbilisi |
    | Germany | capital | Berlin |
    | Ghana | capital | Accra |
    | Greece | capital | Athens |
    | Grenada | capital | St. George’s |
    | Guatemala | capital | Guatemala City |
    | Guinea | capital | Conakry |
    | Guinea-Bissau | capital | Bissau |
    | Guyana | capital | Georgetown |
    | Haiti | capital | Port-au-Prince |
    | Honduras | capital | Tegucigalpa and Comayagüela |
    | Hungary | capital | Budapest |
    | Iceland | capital | Reykjavík |
    #| India | capital | New Delhi |
    | Indonesia | capital | Jakarta |
    | Iran | capital | Tehran |
    | Iraq | capital | Baghdad |
    #| Ireland | capital | Dublin |
    | Israel | capital | Jerusalem |
    | Italy | capital | Rome |
    | Jamaica | capital | Kingston |
    | Japan | capital | Tokyo |
    | Jordan | capital | Amman |
    | Kazakhstan | capital | Astana |
    | Kenya | capital | Nairobi |
    #| Kiribati | capital | Tarawa Atoll |
    | Korea, North | capital | Pyongyang |
    | Korea, South | capital | Seoul |
    | Kosovo | capital | Pristina (Prishtina or Priština) |
    | Kuwait | capital | Kuwait City |
    | Kyrgyzstan | capital | Bishkek |
    | Laos | capital | Vientiane |
    | Latvia | capital | Riga |
    | Lebanon | capital | Beirut |
    | Lesotho | capital | Maseru |
    | Liberia | capital | Monrovia |
    #| Libya | capital | Tripoli |
    #| Liechtenstein | capital | Vaduz |
    | Lithuania | capital | Vilnius |
    | Luxembourg | capital | Luxembourg |
    #| Macedonia | capital | Skopje |
    | Madagascar | capital | Antananarivo |
    | Malawi | capital | Lilongwe |
    | Malaysia | capital | Kuala Lumpur |
    #| Maldives | capital | Malé |
    | Mali | capital | Bamako |
    | Malta | capital | Valletta |
    | Marshall Islands | capital | Majuro (Delap) |
    | Mauritania | capital | Nouakchott |
    | Mauritius | capital | Port Louis |
    | Mexico | capital | Mexico City |
    | Micronesia, Federated States of | capital | Palikir |
    #| Moldova | capital | Chisinau |
    #| Monaco | capital | Monaco |
    | Mongolia | capital | Ulan Bator |
    #| Montenegro | capital | Podgorica |
    | Morocco | capital | Rabat |
    | Mozambique | capital | Maputo |
    ##| Myanmar (Burma) | capital | Rangoon (Yangon); Naypyidaw or Nay Pyi Taw (administrative) |
    | Namibia | capital | Windhoek |
    ##| Nauru | capital | no official capital; government offices in Yaren District |
    | Nepal | capital | Kathmandu |
    | Netherlands | capital | Amsterdam |
    | New Zealand | capital | Wellington |
    | Nicaragua | capital | Managua |
    | Niger | capital | Niamey |
    | Nigeria | capital | Abuja |
    | Norway | capital | Oslo |
    | Oman | capital | Muscat |
    | Pakistan | capital | Islamabad |
    #| Palau | capital | Melekeok |
    #| Panama | capital | Panama |
    | Papua New Guinea | capital | Port Moresby |
    | Paraguay | capital | Asunción |
    | Peru | capital | Lima |
    #| Philippines | capital | Manila |
    | Poland | capital | Warsaw |
    | Portugal | capital | Lisbon |
    | Qatar | capital | Doha |
    | Romania | capital | Bucharest |
    | Russia | capital | Moscow |
    | Rwanda | capital | Kigali |
    | Saint Kitts and Nevis | capital | Basseterre |
    | Saint Lucia | capital | Castries |
    | Saint Vincent and the Grenadines | capital | Kingstown |
    | Samoa | capital | Apia |
    | San Marino | capital | City of San Marino |
    | Sao Tome and Principe | capital | São Tomé |
    | Saudi Arabia | capital | Riyadh |
    | Senegal | capital | Dakar |
    | Serbia | capital | Belgrade |
    | Seychelles | capital | Victoria |
    | Sierra Leone | capital | Freetown |
    #| Singapore | capital | Singapore |
    | Slovakia | capital | Bratislava |
    #| Slovenia | capital | Ljubljana |
    | Solomon Islands | capital | Honiara |
    | Somalia | capital | Mogadishu |
    ##| South Africa | capital | Pretoria (administrative); Cape Town (legislative); Bloemfontein (judiciary) |
    | South Sudan | capital | Juba |
    | Spain | capital | Madrid |
    ##| Sri Lanka | capital | Colombo; Sri Jayewardenepura Kotte (legislative) |
    | Sudan | capital | Khartoum |
    | Suriname | capital | Paramaribo |
    ##| Swaziland | capital | Mbabane |
    | Sweden | capital | Stockholm |
    #| Switzerland | capital | Bern |
    | Syria | capital | Damascus |
    #| Taiwan | capital | Taipei |
    | Tajikistan | capital | Dushanbe |
    | Tanzania | capital | Dodoma |
    #| Thailand | capital | Bangkok |
    | Togo | capital | Lomé |
    | Tonga | capital | Nukuʻalofa |
    #| Trinidad and Tobago | capital | Port-of-Spain |
    | Tunisia | capital | Tunis |
    | Turkey | capital | Ankara |
    | Turkmenistan | capital | Ashgabat |
    | Tuvalu | capital | Funafuti |
    | Uganda | capital | Kampala |
    | Ukraine | capital | Kiev |
    | United Arab Emirates | capital | Abu Dhabi |
    | United Kingdom | capital | London |
    | United States of America | capital | Washington, D.C. |
    | Uruguay | capital | Montevideo |
    | Uzbekistan | capital | Tashkent |
    | Vanuatu | capital | Port Vila |
    #| Vatican City (Holy See) | capital | Vatican City |
    | Venezuela | capital | Caracas |
    | Vietnam | capital | Hanoi |
    | Yemen | capital | Sana‘a |
    | Zambia | capital | Lusaka |
    | Zimbabwe | capital | Harare |

    