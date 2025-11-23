# Home Assistant CouchDB Add-on

Apache CouchDB is a database that uses JSON for documents, an HTTP API, and JavaScript/declarative indexing.

## About

This add-on runs the official CouchDB Docker image, providing a reliable and scalable NoSQL database for your Home Assistant installation.

## Installation

1. Add this repository to your Home Assistant instance
2. Install the "CouchDB" add-on
3. Configure the add-on (see Configuration section below)
4. Start the add-on
5. Check the logs to ensure it started successfully

## Configuration

```yaml
admin_user: admin
admin_password: changeme
```

### Option: `admin_user`

The administrator username for CouchDB. Default is `admin`.

### Option: `admin_password`

The administrator password for CouchDB. **Important**: Change this from the default `changeme` to a strong password.

## Usage

After starting the add-on, CouchDB will be available at:

- **URL**: `http://homeassistant.local:5984`
- **Web Interface (Fauxton)**: `http://homeassistant.local:5984/_utils`

You can verify the installation by accessing `http://homeassistant.local:5984` in your browser. You should see a JSON response like:

```json
{
  "couchdb": "Welcome",
  "version": "3.x.x"
}
```

## Data Persistence

All CouchDB data is stored in the add-on's data directory and will persist across restarts and updates.

## Support

For issues with this add-on, please check:
- Add-on logs in Home Assistant
- [CouchDB Documentation](https://docs.couchdb.org/)
- [Home Assistant Community Forum](https://community.home-assistant.io/)

## License

This add-on uses the official CouchDB Docker image, which is licensed under the Apache License 2.0.
