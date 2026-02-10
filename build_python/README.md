pip3 freeze > requirements.txt
python3 app.py



## Build & Publish to Nexus (PyPI hosted)

1. Create `~/.pypirc` from `.pypirc.sample` and set your Nexus credentials.
2. (Optional) Create venv and install tools:
   ```bash
   make install
   ```
3. Run tests:
   ```bash
   make test
   ```
4. Build wheel and sdist:
   ```bash
   make build
   ```
5. Upload to Nexus:
   ```bash
   make publish
   ```

Alternatively, set the following env and run without `~/.pypirc`:
```bash
TWINE_USERNAME=admin TWINE_PASSWORD=**** twine upload --repository-url http://100.0.0.187:8081/repository/pypi-hosted/ dist/*
```
