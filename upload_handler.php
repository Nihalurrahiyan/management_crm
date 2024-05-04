<?php
// File upload handling, validation, etc. (IMPORTANT!)

// ... 

// If absolutely necessary, call your Python script with exec()
// Exercise extreme caution to avoid security vulnerabilities
$result = exec("upload.py " . $target_file); 

echo $result; // Or echo a success/error message in JSON format for better handling
