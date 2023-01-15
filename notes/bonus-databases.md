## Bonus - Databases

How and where can a DB be implemented:

- It can be installed locally by using for homebrew (For mac users) or apt-get (For linux users) to install it on bare
  metaal
- DB hosted remotely by a service provider like AWS, Azure, Google Cloud, Digital Ocean, Heroku, etc.
- De database can also be runned with containers like Docker or Kubernetes

### DB Types:

#### Key Value

Very fast but limited storage because it is stored inside memory used for caching, message queue.
Can also be used for storing small amounts of data like user preferences, user sessions, etc.
I used redis in the past for caching and it was very fast.
Recently I used it for storing marker locations instead of using a DynamoDb table for this.

- Redis

#### Wide Column (multiple columns per key)

Scalable but no joins used for time-series, IoT records, historical events.
Current I haven't used this type of database. But I might implement it in the future for a search system because the
current search (based in MySQL) in not fast enough.

- Cassandra
- Apache

#### Document (containers for key value pairs)

Slower writes but faster to read used for mobile apps, game apps.
(DynamoDB)We use this at the company that I work for for indexed trips and it is very fast to provide the data to the
user.

- MonogDB
- DynamoDB
- Redis (This one is missing inside the course but I think it should be listed in this type of database because
  of https://redis.io/docs/stack/search/indexing_json/)

#### Relational

Store structured data with relations and schema. The data is stored into tables with rows & columns
difficult to scale horizontally but AWS does have great solutions for this by supporting read replicas and sharding the
data this way.

- MySQL
- Postgres
- Oracle
- Amazon Aurora
- MariaDB
- Microsoft SQL Server

#### Graph

Reduce complexity of connections best for graphs, patterns, recommendations
I have used this in the past but i like the other types more or the use case that I had was to big for this in the
project.

- Neo4j

#### Search

Creates index of words that is searched only can combine multiple DB types together depending on App needs
I have used this in the past for some Wordpress project with a Woocommerce shop. We used ElasticSearch to improve the
product search. Great implementation of this is Algolia.

- ElasticSearch
- Solar



