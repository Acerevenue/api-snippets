<?php
// Get the PHP helper library from https://twilio.com/docs/libraries/php
require_once '/path/to/vendor/autoload.php'; // Loads the library
use Twilio\Rest\Client;

// Your Account Sid and Auth Token from twilio.com/console
$sid = "ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
$token = "your_auth_token";
$client = new Client($sid, $token);

$fax = $client->fax->v1
    ->faxes("FXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
    ->fetch();

echo $fax->status;
