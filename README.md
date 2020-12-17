# Sample Docker test of Stripe Webhook
- Sample environment for local testing of Stripe Webhook(docker).

## Environmental Structure
### Build
- `make install`

### Start(start php built-in server, and stripe-cli listen)
- `make up`
※ "Control + C" to stop.

### stripe-cli event trigger
- `make stripe-trigger <event_type>`

### Rebuild
- `make reinstall`

### Destroy
- `make destroy`
