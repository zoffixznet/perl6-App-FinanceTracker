unit class App::FinanceTracker;
use App::FinanceTracker::Config;

has $!conf = App::FinanceTracker::Config;

method add (
    Numeric $amount,
    Int :$score where 0 >= * >= 5 = 'N/A',
    Str :$source-type = 'N/A',
    Str :$source-name = 'N/A',
    Str :$date        = ~Date.today,
    Str :$currency    = 'N/A',
) {
    for $!conf<plugins><storage>.map: *.<name> {
        my $name = "App::FinanceTracker::Plugin::Storage::$_";
        my $plug = try {
            require ::$($name);
            ::($name).new;
        } // die "Failed to load plugin $name ($!)";

        $plug .store: $amount, :$score, :$source-type, :$source-name,
            :$date, :$currency;
    }
}
