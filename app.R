

#We set the working directory to the folder ISA 401/Project/app/jobs
#install.packages("readxl")

df = readxl::read_excel(path = "all_data_M_2024.xlsx", na = c("**", "*", "~"))


#install.packages("querychat")

querychat::querychat_app(
  data_source = df,
  table_name = "Our_data",
  greeting = "Welcome to Amanda's QueryChat app! We are exploring the OEWS Dataset.",
  client = "openai/gpt-5-mini-2025-08-07"
)