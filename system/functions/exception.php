<?php

/*
  异常处理方法
 */
if (!function_exists('_exception_handler')) {

    function _exception_handler($severity, $message, $filepath, $line) {
        switch ($severity) {
            case E_USER_ERROR:
                $str = 'E_USER_ERROR' . $filepath . '--' . $line . '--' . $severity . '--' . $message;
                write_log_file($str);
                exit(1);
                break;
            case E_USER_WARNING:
                $str = 'E_USER_WARNING' . $filepath . '--' . $line . '--' . $severity . '--' . $message;
                write_log_file($str);
                break;

            case E_USER_NOTICE:
                $str = 'E_USER_NOTICE' . $filepath . '--' . $line . '--' . $severity . '--' . $message;
                write_log_file($str);
                break;

            default:

                $str = $severity . 'Unknown' . $filepath . '--' . $line . '--' . $severity . '--' . $message;
                write_log_file($str);

                break;
        }

        /* Don't execute PHP internal error handler */
        return true;
    }

}
if (defined("LOG") && strtoupper(LOG) == 'ON') {
    set_error_handler('_exception_handler');
}