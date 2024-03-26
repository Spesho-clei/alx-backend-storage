-- Task: Create a trigger that decreases the quantity of an item after adding a new order.

-- Drop trigger if exists to prevent errors when re-running the script
DROP TRIGGER IF EXISTS decrease_quantity_after_order;

-- Create the trigger
CREATE TRIGGER decrease_quantity_after_order AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
    SET quantity = quantity - NEW.number
    WHERE name = NEW.item_name;
END;
