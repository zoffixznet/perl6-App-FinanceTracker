unit class App::FinanceTracker::Config;
use JSON::Fast;

sub blank-config {
    q:to/END/;
    {
        plugins: {
            storage: [
                {
                    name: "SQLite",
                    conf: {
                        file: "~/.app-financetracker-sqlite-store.db"
                    }
                }
            ]
        }
    }
    END
}

constant $conf = do given $*HOME.child('.app-financetracker.conf.json') {
    .e or .spurt: blank-config;
    from-json .slurp;
}

method new { die 'Cannot instantiate this class. Use .conf method' }
method AT-KEY ($key) {
    $conf{$key}:exists ?? $conf{$key} !! die 'No such configuration key';
}
