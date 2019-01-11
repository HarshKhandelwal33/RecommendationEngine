echo "Fetching the data from RDBMS"
#cd $SQOOP_HOME
#bin/sqoop import --connect jdbc:mysql://localhost/moviesDB --table users
#bin/sqoop import --connect jdbc:mysql://localhost/moviesDB --table movies
#bin/sqoop import --connect jdbc:mysql://localhost/moviesDB --table ratings

echo "Creating Hive External Tables"
cd $HIVE_HOME
#bin/hive -f /home/vm4learning/Desktop/Projects/Recommendation/hql/create_tables.sql

echo "Preprocessing HIVE tables"
#bin/hive -f /home/vm4learning/Desktop/Projects/Recommendation/hql/preprocess.sql

echo "Recommendations"
#bin/hive -f /home/vm4learning/Desktop/Projects/Recommendation/hql/recommendations.sql

echo "Main Recommendations"
bin/hive -f /home/vm4learning/Desktop/Projects/Recommendation/hql/main_recommendations.sql
