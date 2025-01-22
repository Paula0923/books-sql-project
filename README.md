# Books: Analyzing books from goodreads.com 📖

![library](images/library.jpg)

## Overview
In this project, I analyze a **dataset on books** which I retrieved from kaggle. After cleaning the data and dropping columns which are not needed for the analysis, some new features are created. Afterwards, I will conduct basic EDA and inferential tests. Finally, the dataset is imported to MySQL to make some basic queries, especially for training reasons.

## Repository Content
In this repo, you can find the **original dataset**, as well as **a second dataset**, I edited using python. Additionally, there is a **pdf** describing the data and the findings in more depth and a **sql file** in which you can find the queries. For the project presentation please see [**here**]("https://docs.google.com/presentation/d/1-1PfzqZMZ8ojpl_rNeoFK6xB8Fa4VBwKpNowUfxb1JU/edit?usp=sharing").

## Dataset
The dataset can be found [**here**]("https://www.kaggle.com/datasets/pooriamst/best-books-ever-dataset") on Kaggle, it was downloaded on January 9th 2025.
- The dataset contains 25 columns and over 52,000 rows.
- The rows each describe a specific book, and the columns are information on this book from the website goodreads.com. 
- Columns, i.e., contain the following information: title, author, rating, language, genre, number of pages, format of the book.

## Approach
### Cleaning and new Features:
I first cleaned the dataset of missing values and duplicates and dropped columns which I found less valuable for an analysis. Following this, I created three new columns:
1. genre: only the main (= first mentioned) genre
2. number_awards: counts the number of awards
3. main_author: only the main (= first mentioned) author

### EDA: Key Findings
- **Authors**: **Nora Roberts** has the most books in the list, followed by James Patterson, Agatha Christie and Stephen King. **Nora Roberts** also has the most ratings, followed by James Patterson, Agatha Christie and Stephen King;; yet other authors have the **highest average ratings**: 9 of them have a mean rating of 5 (highest score). **Stephen King** received the most awards (97), followed by Neil Gaiman (75), China Mieville (69) and Suzanne Collins (62). Yet the **book title with the most awards** (41) is “Hunger Games” by Suzanne Collins, followed by "Escape from Mr. Lemoncello's Library" by Chris Grabenstein (27) and "Twilight" by Stephenie Meyer (26).
- **Genre**: The most current genre is **fiction**, followed by fantasy and young adult. **Alchemy** is the genre with the highest mean rating (4.65 out of 5), followed by Baha I (a religion) and Dinosaurs. **19th century** is the genre with the **highest mean price** (€285.93), followed by Comic Books (€229.64) and Apocalyptic (€173.48).
- **Ten Most Popular Genres**: Out of these, **history** receives the **highest mean rating** (4.09) and **history** has the **highest mean price** (€11.77).
- **Language**: **English** is by far the leading language, followed by French, Spanish and German.
- **Book Format**: The most prominent format is the **paperback**, followed by a hardcover. **Kindle** is already on 4th place.

### Inferential Statistics:
The only **strong relationship** I detected are (not surprisingly) between **author and genre** and (only slightly weaker) between **author and rating**. 

## SQL Queries and Restrictions
After editing and analysing the data using python, I was not able to fully import the data to MySQL (only 119 rows were imported after several repair attempts). The same goes for the original dataset (here only 15 rows could be imported). Unfortunately, I could not find out what the exact reason(s) were for this but I strongly believe that the original dataset was too unclean for MySQL.

## More on this Project:
Please see the [**presentation on this project**]("https://docs.google.com/presentation/d/1-1PfzqZMZ8ojpl_rNeoFK6xB8Fa4VBwKpNowUfxb1JU/edit?usp=sharing") for a summary and **visualizations**.

## About the Author
Paula Boks

Political Scientist with a love of numbers, currently in an additional qualification program as data analyst.

![book](images/book.jpg)





