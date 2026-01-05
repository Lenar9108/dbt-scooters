{% macro create_postgis() %}
    {% set query %}
        create extension postgis schema public;
    {% endset %}
    {% do log("Creating extension postgis", info=True) %}
    {% do run_query(query) %}
{% endmacro %}