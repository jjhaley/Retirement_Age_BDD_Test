# Created by Joshua Haley at 11/21/2021
Feature: retirement calculator
  In order to calculate the users retirement date,
  The program accepts year of birth and month of birth
  in order to return the retirement date.

  Scenario Outline: user enters year and month of birth
    Given the software asks for a birth year and birth month from user
    When "<byear>" and "<bmonth>" are entered by the user
    Then "<retYear>" and "<retMonth>" months "<month>" of "<year>" is displayed

    Examples: Values
      | byear | bmonth | retYear | retMonth | month    | year |
      | 1938  | 1      | 65      | 2        | March    | 2003 |
      | 1938  | 11     | 65      | 2        | January  | 2004 |
      | 1955  | 1      | 66      | 2        | March    | 2021 |
      | 1955  | 11     | 66      | 2        | January  | 2022 |
      | 1939  | 1      | 65      | 4        | May      | 2004 |
      | 1939  | 11     | 65      | 4        | March    | 2005 |
      | 1956  | 1      | 66      | 4        | May      | 2022 |
      | 1956  | 11     | 66      | 4        | March    | 2023 |
      | 1940  | 1      | 65      | 6        | July     | 2005 |
      | 1940  | 11     | 65      | 6        | May      | 2006 |
      | 1957  | 1      | 66      | 6        | July     | 2023 |
      | 1957  | 11     | 66      | 6        | May      | 2024 |
      | 1941  | 1      | 65      | 8        | September| 2006 |
      | 1941  | 11     | 65      | 8        | July     | 2007 |
      | 1958  | 1      | 66      | 8        | September| 2024 |
      | 1958  | 11     | 66      | 8        | July     | 2025 |
      | 1942  | 1      | 66      | 10       | November | 2007 |
      | 1942  | 11     | 66      | 10       | September| 2008 |
      | 1959  | 1      | 66      | 10       | November | 2025 |
      | 1959  | 11     | 66      | 10       | September| 2026 |
      | 1960  | 1      | 67      | 0        | January  | 2027 |
