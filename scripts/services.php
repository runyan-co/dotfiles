<?php

if (!isset($app)) {
    return;
}

if (!$app instanceof \Silly\Application) {
    return;
}

use \Illuminate\Support\Str;

use function \Valet\info;
use function \Valet\output;
use function \Valet\table;

 $app->command('services', function () {

     $output = CommandLine::runAsUser('brew services & sudo brew services', static function ($exitCode, $output) {
         throw new DomainException('Brew was unable to check which services are running.');
     });

     $output = array_filter(explode(PHP_EOL, $output), static function ($line) {
         if (blank($line)) {
             return false;
         }

         if (Str::contains($line, ['Name', 'Status', 'User', 'File'])) {
             return false;
         }

         return Str::contains($line, 'started');
     });

     $output = array_map(static function ($line) {
         return [
             'name' => Str::remove(" ", Str::before($line, 'started')),
             'user' => Str::contains($line, 'root /') ? 'root' : 'current user',
             'status' => '<info>started</info>',
         ];
     }, $output);

     if (blank($output)) {
         output('<comment>No running services</comment>');
     } else {
         table(['Name', 'User', 'Status'], $output);
     }

     exit($exitCode ?? 0);

    })->descriptions('All running homebrew services');

