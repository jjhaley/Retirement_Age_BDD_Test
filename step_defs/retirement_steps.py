import string

from pytest_bdd import scenario, parsers, given, when, then
import retirement

EXTRA_TYPES = {
    'Number': int,
    'String': string
}

CONVERTERS = {
    'byear': int,
    'bmonth': int,
    'retYear': int,
    'retMonth': int,
    'month': string,
    'year': int

}
@scenario('../features/retirement.feature', 'user enters year and month of birth', example_converters=CONVERTERS)
def test_dates():
    pass

@given("the software asks for a birth year and birth month from user")
def software_asks_for_user_input():
    raise NotImplementedError(u'STEP: Given the software asks for a birth year and birth month from user')


@when('"<byear>" and "<bmonth>" are entered by the user')
def enter_month_and_year(byear, bmonth):
    retirement.calculate_nra(byear, bmonth)


@then('"<retAge>" and "<retMonth>" months "<month>" of "<year>" is displayed')
def return_retirement_age(retAge, retMonth, month, year, bmonth, byear):
    assert retirement.calculate_nra(byear, bmonth) == ("" + str(retAge) + " and " + str(retMonth) + " months " + month + " of " + str(year))
