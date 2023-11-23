# Load the data
data.clinical <- read.table("data/data_clinical_patient.txt", sep = "\t", header = TRUE)
data.mutation <- read.table("data/data_mutations.txt", sep = "\t", header = TRUE)
data.expression <- read.table("data/RNAseq_BRCA.csv", sep = ",", header = TRUE)

# Extract the patient IDs from columns
clinical.patients <- data.clinical$PATIENT_ID
mutation.patients <- list(substr(data.mutation$Tumor_Sample_Barcode, 1, 12))
expression.patients <- substr(colnames(data.expression), 1, 12)[-1]

# Identify the number of unique patients in each data file
clinical.num <- length(unique(clinical.patients))
mutation.num <- length(unique(mutation.patients))
expression.num <- length(unique(expression.patients))

#
Reduce(intersect, list())
