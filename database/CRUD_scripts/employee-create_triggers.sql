-- For employee_type_desc
CREATE TRIGGER update_employee_type_desc_modtime
    BEFORE UPDATE ON employee_type_desc
    FOR EACH ROW
    EXECUTE FUNCTION update_modified_column();

-- For employee_status_desc
CREATE TRIGGER update_employee_status_desc_modtime
    BEFORE UPDATE ON employee_status_desc
    FOR EACH ROW
    EXECUTE FUNCTION update_modified_column();