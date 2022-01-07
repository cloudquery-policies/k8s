# Namespace LimitRange Default Memory Request

## Description

Containers should have a memory request, so Kubernetes will make sure the containers get the memory they requested.

## Rationale

You should use the default LimitRange policy for memory request in each namespace.
