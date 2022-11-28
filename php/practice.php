<?php

    function longdate($timestamp): string
    {
        return date("l F jS Y", $timestamp);
    }

    echo longdate(170002);