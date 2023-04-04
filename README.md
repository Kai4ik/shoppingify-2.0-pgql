## Docker image for PostGraphile

 **What is PostGraphile ?** 
---
**PostGraphile** (formerly PostGraphQL) builds a powerful, extensible and performant GraphQL API from a PostgreSQL schema in seconds; saving you weeks if not months of development time.
<br />Documentation: https://www.graphile.org/postgraphile/usage/

 **Additional PostGraphile plugins:** 
 ---
 - https://github.com/graphile-contrib/postgraphile-plugin-connection-filter
	<br />Used to add a powerful suite of filtering capabilities to a PostGraphile schema.
 - https://github.com/graphile/pg-aggregates
   <br />Used to add  a powerful suite of aggregate functionality to a PostGraphile schema: calculating aggregates, grouped aggregates, applying conditions to grouped aggregates, ordering by relational aggregates, filtering by the results of aggregates on related connections, etc.

<br />AWS RDS used to run Postgres
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html)
 
  
 **Deployment** 
 ---
 1. The image is stored on Docker hub (https://hub.docker.com/)
 2. The Google Cloud Run is used to run the container (https://cloud.google.com/run)

 
 **Needs to be done** 
 ---
 1. Restrict access to running GCR service to only authenticated users
 2. Enable JWT authentication for PostGraphile
 3. Enable VPC Egress for Cloud Run Service 
