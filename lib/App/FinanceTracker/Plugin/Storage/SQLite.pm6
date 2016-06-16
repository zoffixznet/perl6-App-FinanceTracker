unit class App::FinanceTracker::Plugin::Storage::SQLite
    does App::FinanceTracker::Plugin::Storage;

use DBIish;

method store (
    $amount, :$score, :$source-type, :$source-name,
    :$date = ~Date.today, :$currency
) {
    DBIish;
}
