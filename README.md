# Containerized HamClock

## Dedication

Many thanks to Elwood Downey, WB0OEW (SK) for his devotion to making life a little better for ham radio operators around the globe.

## What is this?

This repository aims only to build a containerized version of the application.
No attempt has been made to preserve the original source code since others have done that.
To build this yourself, you will probably need to update the `Dockerfile` to point to a different source repository/download location.

**As of v4.0.22,** the build uses [`hamclock.com`](https://hamclock.com) in order to keep running after July 2026.
Thank you Bruce Edrich, W4BAE for building a free, community-operated backend server to keep HamClock alive.

Automated builds push to [Docker Hub](https://hub.docker.com/r/gizmotronic/hamclock/tags).

## Example

If you use Docker Compose, look in the `examples` directory for an easy way to run this container.
