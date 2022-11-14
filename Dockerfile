FROM python:3.9-slim
RUN apt-get update && apt-get install --no-install-recommends -y

RUN pip install --no-cache-dir --upgrade pip "dbt-snowflake==1.3"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
