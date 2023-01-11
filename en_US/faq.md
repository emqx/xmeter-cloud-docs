# FAQ

## How test evaluation and deduction works in Professional plan?

In Professional plan, test cost evaluation is based on VUM, where VUM = VU (virtual user, i.e. connections) * M (execution minutes). If there are available coupons that can be used for tests, the cost will be deducted from these coupons first. The remaining cost will then be deducted from test packs.

If the test is running via public network, the traffic cost from XMeter Cloud is also evaluated and charged.

## What are the limitations for each test scenario in Professional plan?

In Professional plan, test duration should not exceed 1,440 minutes (e.g. 24 hours), and connections should not exceed 500,000. Also, there are specific limitations for different scenarios. You will receive detailed instruction messages if your settings exceed the limitations.

Specific limitations for each scenario are listed as follows.

1. **Connection-only**: all connections must be established within given duration. In addition,
   - New connections per second SHOULD NOT exceed either 1,000 or total connections, if total connections within 10,000.
   - New connections per second SHOULD NOT exceed either 1/10 of the total connections, if total connections over 10,000.
2. **Publish**: payload SHOULD NOT exceed 102,400 bytes. In addition,
   - Messages published per second SHOULD NOT exceed either 1,000 or 10 times of the total connections, if total connections within 1,000.
   - Messages published per second SHOULD NOT exceed either 500,000 or 10 times of the total connections, if total connections over 1,000.
3. **One-to-one**: payload SHOULD NOT exceed 102,400 bytes. In addition,
   - Messages published per second SHOULD NOT exceed either 1,000 or 10 times of the total connections, if total connections within 1,000.
   - Messages published per second SHOULD NOT exceed either 250,000 or 10 times of the total connections, if total connections over 1,000.
4. **Fan-out**: pub clients SHOULD NOT exceed either 1,000 or 1/10 of the total connections, and payload SHOULD NOT exceed 102,400 bytes. In addition,
   - Messages published per second SHOULD NOT exceed either 1,000 or 100 times of the total connections, if total connections within 1,000.
   - Messages published per second SHOULD NOT exceed either 500,000 or 100 times of the total connections, if total connections over 1,000.
5. **Fan-in**: shared sub clients SHOULD NOT exceed either 1,000 or total connections, and payload SHOULD NOT exceed 102,400 bytes. In addition,
   - Messages published per second SHOULD NOT exceed either 1,000 or 10 times of the total connections, if total connections within 1,000.
   - Messages published per second SHOULD NOT exceed either 250,000 or 10 times of the total connections, if total connections over 1,000.



## What are the limitations for each test scenario in Standard plan?

In Standard plan, test duration should not exceed 60 minutes (e.g. 1 hour), and connections should not exceed 1,000. Also, there are specific limitations for different scenarios. You will receive detailed instruction messages if your settings exceed the limitations.

Specific limitations for each scenario are listed as follows.

1. **Connection-only**: all connections must be established within given duration. In addition,
   - New connections per second SHOULD NOT exceed 1,000.
2. **Publish**: payload SHOULD NOT exceed 1,024 bytes. In addition,
   - Messages published per second SHOULD NOT exceed 1,000.
3. **One-to-one**: payload SHOULD NOT exceed 1,024 bytes. In addition,
   - Messages published per second SHOULD NOT exceed 500.
4. **Fan-out**: pub clients and messages published per second are both fixed at 1, and payload SHOULD NOT exceed 1,024 bytes.
5. **Fan-in**: shared sub clients SHOULD NOT exceed either 10 or total connections, and payload SHOULD NOT exceed 1,024 bytes. 



## How long are trace logs and error logs kept?

XMeter Cloud cleans test logs regularly. Trace logs will be kept for **1 month**, while error logs will be kept for **3 months**. Logs other than trace logs and error logs will also be kept for **3 months**. Please download and back up your important logs in time.