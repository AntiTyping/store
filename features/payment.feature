Feature: Payments
  Customers should be able to pay for products using PayPal.
  Customer should click the "Pay with PayPal" and be taken to PayPal website.
  On the PayPal website customer will enter the payment information and submit the payment.
  After submitting the payment the customer should be taken back to our website
  and presented with confirmation.

  Scenario: successful payment
    Given I want to purchase the service
    When I enter registration information
    And I choose to pay with PayPal
    Then 