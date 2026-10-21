# Test strategy

## Unit
Pure functions, validators, formatters, reducers/stores, hooks/composables (renderHook),
event payload builders. Fast, no DOM where possible.

## Component (Testing Library)
- Query by role/label/text (what users see), not by class or test-id unless unavoidable
- Every state: loading, empty, error, success, disabled, validation messages
- Interactions with user-event: click, type, keyboard (Tab, Enter, Escape), focus management
- Accessibility check with axe on each key state
- Snapshots only for small, stable output; never as the only assertion

## Integration
- Render the feature/route with real components, router and providers
- Mock the API at the network layer (MSW) with fixtures shaped by the OpenAPI schemas
- Happy path + 4xx (validation, 401/403, 404, 409) + 5xx + timeout + empty data
- Assert analytics events on a mocked analytics client (name + properties)
- Contract drift guard: fixtures type-checked against generated types

## Rules
- Each AC / bug / finding → ≥1 test that fails without the change (check by reverting locally)
- No real network, no sleeps (use fake timers / findBy*), no test order dependence
- Test names state behaviour: "shows an error when the email is already registered"
