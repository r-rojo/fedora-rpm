# Hello world docker action

This is from github.com docs

## Inputs

### `who-to-greet`

**Required** The name of the person to greet. Default `"World"`.

## Outputs

### `time`

The time we greeted you.

## Example Usage

uses: actions/hello-world-docker-action@v1
with:
  who-to-greet: 'Me'
