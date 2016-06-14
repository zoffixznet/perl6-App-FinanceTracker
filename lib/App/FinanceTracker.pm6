unit class App::FinanceTracker;
my constant $CONF_FILE = $*HOME.child('.app-financetracker.conf.json');
BEGIN { .e || .spurt( blank-config ) given $CONF_FILE }
use Config::From $CONF_FILE;


sub blank-config {

}
