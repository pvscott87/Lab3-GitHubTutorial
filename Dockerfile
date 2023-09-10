FROM python as base
RUN apt-get update && apt-get install -y vim
RUN python -m pip install --upgrade pip && pip install flake8 pytest
COPY shelter.py /shelter.py 
COPY tests /tests
COPY pyproject.toml /pyproject.toml 
        