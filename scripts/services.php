<?php

if (!isset($app)) {
    return;
}

if (!$app instanceof \Silly\Application) {
    return;
}

use function \Valet\info;
use function \Valet\output;
use function \Valet\table;

 $app->command('services', function () {

     $statuses = collect();

     foreach (['brew services', 'sudo brew services'] as $command) {
         $command = "$command | grep started | awk '{ print $1; print $2; print $3; }'";

         $result = CommandLine::runAsUser($command, static function ($exitCode, $output) {
             throw new DomainException('Brew was unable to check which services are running.');
         });

         $statuses->push(collect(
             array_filter(explode(PHP_EOL, $result))
         )->chunk(3));
     }

     $cliTableValues = [];

     foreach ($statuses as $statusByUser) {
         foreach ($statusByUser as $serviceStatus) {
             $array = collect($serviceStatus)->values();

             $cliTableValues[] = [
                 'service' => $array->get(0),
                 'status' => $array->get(1),
                 'user' => \Illuminate\Support\Str::contains($user = $array->get(2), '.plist') ? 'current user': $user
             ];
         }
     }

        $services = array_map(static function ($row) {
            return \Illuminate\Support\Str::replace('started', '<info>started</info>', $row);
        }, $cliTableValues);

        if (empty($services)) {
            return info('No running services.');
        }

        table(['Service', 'Status', 'User'], $services);

    })->descriptions('All running homebrew services');
