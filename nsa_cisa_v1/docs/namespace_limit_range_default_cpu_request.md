# Namespace LimitRange Default CPU Request

## Description

Containers should have a CPU request, so Kubernetes will make sure the containers get the CPU they requested.

## Rationale

You should use the default LimitRange policy for CPU request in each namespace.
