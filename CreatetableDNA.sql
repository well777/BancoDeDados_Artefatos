CREATE TABLE DNA_Samples (
  id_sample INT AUTO_INCREMENT PRIMARY KEY,
  sample_code VARCHAR(30) NOT NULL,        
  common_name VARCHAR(100),
  scientific_name VARCHAR(120),
  tissue_type VARCHAR(50),                  
  collection_date DATE,
  collection_location VARCHAR(150),
  collector VARCHAR(100),
  storage_temp VARCHAR(30),                 
  dna_concentration_ngul DECIMAL(8,2),      
  extraction_method VARCHAR(100),         
  sequencing_status VARCHAR(30),            
  project VARCHAR(100),
  notes TEXT
);
