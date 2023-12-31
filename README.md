# InternetBanking-PHP
PHP CRUD Banking Management System
Overview

This PHP project is a simple CRUD (Create, Read, Update, Delete) Banking Management System, designed to manage basic banking operations. It uses PHP for server-side scripting, MariaDB for the database, and Bootstrap CSS along with JavaScript for the front-end.
Features
    
    Create Account: Allows users to create new bank accounts with essential information.
    View Accounts: Displays a list of all bank accounts with basic details.
    Update Account: Enables users to modify account information.
    Delete Account: Allows the removal of bank accounts from the system.

    Client Interface Panel:

    Create Account: Allows clients to create new bank accounts with essential information.
    View Accounts: Displays a list of all bank accounts with basic details.

 Admin Interface Panel:

    View All Accounts: Enables administrators to see a comprehensive list of all bank accounts.
    Update Account: Allows administrators to modify account information.
    Delete Account: Enables administrators to remove bank accounts from the system.
    Search Accounts: Provides administrators with the ability to search through the client database.

Employee Interface Panel:

    View All Accounts: Allows employees to see a comprehensive list of all bank accounts.
    Update Account: Enables employees to modify account information.
    Delete Account: Allows employees to remove bank accounts from the system.
    Search Accounts: Provides employees with the ability to search through the client database.

Technologies Used

    PHP: Server-side scripting language.
    MariaDB: Open-source relational database management system.
    Bootstrap CSS: Front-end framework for responsive and modern design.
    JavaScript: Used for client-side interactivity.

Project Structure

    index.php: The main page that displays the list of bank accounts and provides navigation.
    add.php: Allows users to add new bank accounts.
    edit.php: Enables users to modify existing account information.
    delete.php: Handles the deletion of bank accounts.
    config.php: Contains database configuration details and establishes a connection.
    db.sql: SQL script to create the necessary database and tables.

Setup Instructions

    Clone the repository to your local machine.

    bash

    git clone https://github.com/hollali/php-banking-system.git

    Import the database schema using db.sql into your MariaDB server.

    Update the database connection details in the config.php file.

    Run the application on a PHP-enabled server.

Usage

    Access the application through a web browser.

    Navigate to the "Create Account" page to add new bank accounts.

    Use the "View Accounts" page to see a list of existing bank accounts.

    Modify or delete accounts using the respective pages.

Additional Notes

    This project is designed for educational purposes and may lack advanced security features.
    Ensure that your server environment supports PHP and MariaDB.

Credits

This project was created by Hollali.
License

This project is licensed under the MIT License.

Feel free to contribute or report issues!
