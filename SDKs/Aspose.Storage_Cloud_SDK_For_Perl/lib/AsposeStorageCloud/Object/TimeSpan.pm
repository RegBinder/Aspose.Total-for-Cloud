package AsposeStorageCloud::Object::TimeSpan;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use base "AsposeStorageCloud::Object::BaseObject";

#
#
#
#NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
#

my $swagger_types = {
    'Ticks' => 'int',
    'Days' => 'int',
    'Hours' => 'int',
    'Milliseconds' => 'int',
    'Minutes' => 'int',
    'Seconds' => 'int',
    'TotalDays' => 'double',
    'TotalHours' => 'double',
    'TotalMilliseconds' => 'double',
    'TotalMinutes' => 'double',
    'TotalSeconds' => 'double'
};

my $attribute_map = {
    'Ticks' => 'Ticks',
    'Days' => 'Days',
    'Hours' => 'Hours',
    'Milliseconds' => 'Milliseconds',
    'Minutes' => 'Minutes',
    'Seconds' => 'Seconds',
    'TotalDays' => 'TotalDays',
    'TotalHours' => 'TotalHours',
    'TotalMilliseconds' => 'TotalMilliseconds',
    'TotalMinutes' => 'TotalMinutes',
    'TotalSeconds' => 'TotalSeconds'
};

# new object
sub new { 
    my ($class, %args) = @_; 
    my $self = { 
        #
        'Ticks' => $args{'Ticks'}, 
        #
        'Days' => $args{'Days'}, 
        #
        'Hours' => $args{'Hours'}, 
        #
        'Milliseconds' => $args{'Milliseconds'}, 
        #
        'Minutes' => $args{'Minutes'}, 
        #
        'Seconds' => $args{'Seconds'}, 
        #
        'TotalDays' => $args{'TotalDays'}, 
        #
        'TotalHours' => $args{'TotalHours'}, 
        #
        'TotalMilliseconds' => $args{'TotalMilliseconds'}, 
        #
        'TotalMinutes' => $args{'TotalMinutes'}, 
        #
        'TotalSeconds' => $args{'TotalSeconds'}
    }; 

    return bless $self, $class; 
}  

# get swagger type of the attribute
sub get_swagger_types {
    return $swagger_types;
}

# get attribute mappping
sub get_attribute_map {
    return $attribute_map;
}

1;