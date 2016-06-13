# PURPOSE

Make it easy to track income and expenses, allowing review on where
the money is coming/going to (e.g. food, utilities, your side job, etc.).

# DESIGN

## Layout

The program consists of a series of plugins, allowing for input and output
sources to be easily extended, even by the user themselves (providing
they can code a plugin). There are these categories of plugins:

### Input Plugins

These plugins handle collecting transactions.
Specifically, their job is to get transaction information (from user input,
bank website, etc.) and deliver it to the core system for further handling.

### Storage Plugins

These plugins handle where and how transactions are stored. For example,
it can be a local SQLite database or a decentralized online storage accessed
via an API.

## Output Plugins

## Configuration
