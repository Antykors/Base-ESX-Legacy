SET @job_name = 'vigneron'; -- Replacer par la société désiré
SET @society_name = 'society_vigneron'; -- Idem avec society_
SET @job_Name_Caps = 'Vigneron'; -- Idem avec une majuscule



INSERT INTO `addon_account` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `jobs` (name, label) VALUES
  (@job_name, @job_Name_Caps)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  (@job_name, 0, 'recrue', 'Intérimaire', 0, '{}', '{}'), -- Remplacer le grades et le salaire en respectant les majuscules
  (@job_name, 1, 'novice', 'Vigneron', 0, '{}', '{}'), -- Remplacer le grades et le salaire en respectant les majuscules
  (@job_name, 2, 'cdisenior', 'Chef de chai', 0, '{}', '{}'), -- Remplacer le grades et le salaire en respectant les majuscules
  (@job_name, 3, 'boss', 'Gérant', 0, '{}', '{}') -- Remplacer le grades et le salaire en respectant les majuscules
;