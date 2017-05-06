<?php
error_reporting(E_ALL);
session_start();
set_time_limit(0);

require_once __DIR__ . '/config.php';
require_once __DIR__ . '/lib/sql.php';

$db = sql::app();
$litera = 'R';
$urlSearch = 'https://account.viber.com/api/web/search/countries?query=' . $litera;
$countries = file_get_contents($urlSearch);
$countries = json_decode($countries)->data;

$countries_length = count($countries);


foreach ($countries as $key => $country) {
    $name = $country->name;
    $code = $country->code;
    $urlCountry = 'https://account.viber.com/api/web/rates/' . $code;
    $country_info = file_get_contents($urlCountry);
    $country_info = json_decode($country_info)->data->rates;
    echo '--------------  '. $key . '---' . $name . '  --------------';
    foreach ($country_info as  $item) {
        $destination = $country->name;
        if (stripos($item->destination, 'Mobile') !== false) {
            $location = trim(str_replace('Mobile', '', $item->destination));
            $is_mobile = '1';
        } else {
            $location = trim(str_replace('Landline', '', $item->destination));
            $is_mobile = '0';
        }
        $call_price = $item->rate->real_value;
        $currency = $item->rate->value->currency_name;
        $connection_fee = 0;
        $sms_price = 0;

        print('<pre>');
        print_r(array (
                'destination'   => $destination,
                'location'      => $location,
                'is_mobile'     => $is_mobile,
                'call_price'    => $call_price,
                'currency'      => $currency,
                'connection_fee'=> $connection_fee,
                'sms_price'     => $sms_price,
            )
        );
        print('</pre>');
        $db->insert('rates', array (
                                    'destination'   => $destination,
                                    'location'      => $location,
                                    'is_mobile'     => $is_mobile,
                                    'call_price'    => $call_price,
                                    'connection_fee'=> $connection_fee,
                                    'sms_price'     => $sms_price,
                                    )
        );
        flush ();
    }
    //die();

}
