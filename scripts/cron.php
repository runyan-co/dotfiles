#!/usr/bin/env php
<?php

// Simple script to run the scheduled tasks
// instead of using a cron job
print exec('/opt/homebrew/bin/php /Users/alex/code/processmaker/artisan schedule:run').PHP_EOL;

sleep(60);

exit(0);
