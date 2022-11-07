#!/usr/bin/env php
<?php

// Simple script to run the scheduled tasks
// instead of using a cron job
if (file_exists($artisan = '/Users/alex/code/processmaker/artisan')) {
    print exec(PHP_BINARY." {$artisan} schedule:run").PHP_EOL;
}

sleep(60) && exit(0);
