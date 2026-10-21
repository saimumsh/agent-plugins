# Event instrumentation
- Use exactly the event name, trigger and property names/types from the spec; no extras
- Fire through the project's analytics wrapper only; never call a vendor SDK directly
- Trigger on the user outcome described (e.g. after a successful response, not on click) as specced
- No PII (email, name, phone, free text, precise location) unless the spec and standards explicitly allow it
- Respect consent: no events before consent where the standards require it
- Fire once (guard against double renders/retries); include required context properties
- Integration test asserts each event's name + properties; unit test the payload builder
- Spec missing or contradicting the design → implement what's clear, list the rest as questions
