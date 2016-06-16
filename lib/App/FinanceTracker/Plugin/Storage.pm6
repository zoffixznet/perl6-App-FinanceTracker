unit role App::FinanceTracker::Plugin::Storage;

method store (
    $amount, :$score, :$source-type, :$source-name,
    :$date = ~Date.today, :$currency
) { ... }
