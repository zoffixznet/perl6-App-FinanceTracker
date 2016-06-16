use v6;
use lib 'lib';
use App::FinanceTracker;

sub MAIN ( 'add',
    $amount, $score?, $source-type?, $source-name?, $date?, $currency?,
) {
    MAIN $amount, :$score, :$source-type, :$source-name, :$date, :$currency;
}

sub MAIN ( 'add',
    $amount, :$score, :$source-type, :$source-name :$date, :$currency,
) {
    App::FinanceTracker.new.add:
        $amount, :$score, :$source-type, :$source-name, :$date, :$currency;
}
