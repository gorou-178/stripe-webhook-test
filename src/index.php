<?php

$params = json_decode(file_get_contents('php://input'), true);
if (!empty($params)) {
    error_log("webhook: event_id = {$params['id']} => type:{$params['type']}");
}
