delimiter $$

CREATE TRIGGER h1n1_concern_trigger BEFORE INSERT ON e2e.h1n1

FOR EACH ROW
begin
  IF NEW.h1n1_concern > 3 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'H1N1 concern should be a numerical value between 0 and 3. Please try again.'
  END IF;
end;

$$