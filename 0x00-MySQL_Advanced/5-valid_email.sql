-- Task: Create a trigger that resets the attribute valid_email only when the email has been changed.

-- Drop trigger if exists to prevent errors when re-running the script
DROP TRIGGER IF EXISTS update_valid_email_on_email_change;

-- Create the trigger
CREATE TRIGGER update_valid_email_on_email_change BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email != NEW.email THEN
        SET NEW.valid_email = 0;
    END IF;
END;
