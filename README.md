# Packages, Please

## Overview

As a mail clerk in Boston, you’re tasked with resolving cases of missing packages. The goal is to locate these packages based on information provided by customers and data from the `packages.db` database. The database includes details on packages, addresses, drivers, and package scans.

## Problem Statement

Each missing package case requires:
1. Determining the current address or location of the package.
2. Identifying the type of address or location (e.g., residential, business).
3. Figuring out the contents of the package.

## Database Schema

The `packages.db` database contains the following tables:

- **addresses**: Details about various addresses.
- **drivers**: Information on delivery drivers.
- **packages**: Information on packages.
- **scans**: Records of package pickups and deliveries.

## Tasks

You’ll need to resolve three specific cases of missing packages:

1. **The Lost Letter**: Find a congratulatory letter sent from 900 Somerville Avenue to 2 Finnegan Street.
2. **The Devious Delivery**: Locate a mysterious package from Fiftyville with no “From” address.
3. **The Forgotten Gift**: Track a gift sent from 109 Tileston Street to 728 Maple Place.

## Instructions

### Queries and Logs

1. **Log File**: Track all SQL queries and thought processes in `log.sql`. Each query should be preceded by a comment explaining its purpose.
2. **Answers File**: Complete the `answers.txt` file with details about the missing packages based on your queries.

### How to Test

Use the following command to test the correctness of your queries:

```sh
check50 cs50/problems/2024/sql/packages
