# Huginn Human Task Agent

`HumanTaskAgent` extracted from the Huginn core repository.

## Installation

Add this gem to your Huginn `.env`:

```sh
ADDITIONAL_GEMS=huginn_human_task_agent(github: huginn/huginn_human_task_agent),erector(github: dsander/erector, ref: 821c2fa9174b56cc39e203883d83b18b60912a36)
```

Then run `bundle install` in your Huginn checkout.

The Erector entry pins the Rails-compatible fork required by RTurk.  Gemfiles
inside Agent gems are not evaluated when they are installed through
`ADDITIONAL_GEMS`, so the fork must be listed separately.

## Configuration

Set your Mechanical Turk credentials in the Huginn `.env`:

```sh
AWS_ACCESS_KEY_ID="your aws access key id"
AWS_ACCESS_KEY="your aws access key"
AWS_SANDBOX=false
```

Set `AWS_SANDBOX` to `true` while developing or testing against the Mechanical
Turk sandbox.

## Development

Run `bundle exec rake spec` to execute the agent spec suite against Huginn.
