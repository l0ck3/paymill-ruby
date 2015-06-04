payment = Paymill::Payment.create(token: '098f6bcd4621d373cade4e832627b4f6')
offer = Paymill::Offer.create(
    amount: 3333,
    currency: 'USD',
    interval: '2 WEEK',
    name: 'Offer Name',
    trial_period_days: 30
    )

Paymill::Subscription.create(
    payment: payment,
    offer: offer,
    period_of_validity: '2 YEAR',
    start_at: 2.days.from_now
)
