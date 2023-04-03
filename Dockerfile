FROM node:alpine

# Install PostGraphile and additional plugins
RUN npm install -g postgraphile@4.12.3 \
    && npm install -g postgraphile-plugin-connection-filter@2.3.0 \
    && npm install -g graphiql-explorer@0.9.0 \
    && npm install -g @graphile/pg-aggregates@0.1.1

# EXPOSE 5000
ENTRYPOINT ["postgraphile"]
CMD  [ "--connection", "postgres://postgres_admin:shopassword@shoppingify.cshthgnqgzqd.us-east-1.rds.amazonaws.com:5432/postgres", "--schema", "public", "--watch", "--allow-explain", "--enhance-graphiql", "--cors", "--append-plugins", "postgraphile-plugin-connection-filter,@graphile/pg-aggregates"]