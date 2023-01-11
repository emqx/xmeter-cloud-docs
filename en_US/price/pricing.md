# Pricing

## Glossary

**Base fee**: To perform load tests of different needs, different numbers of test machines need to be deployed. Base fee is calculated based on the test machine instances cost and deployement cost.

**Traffic fee**: Outgoing traffic from XMeter Cloud will be charged when executing tests via public network. Traffic fee is related to number of connections, execution duration, message throughput, QoS and payload size. Traffic charged by server side will not be included in XMeter Cloud traffic fee.

**VUM**: VUM = VU * M, in which VU stands for virtual users (i.e. number of connections) and M stands for execution duration measured in minutes. For instance, a test uses 1,000 connections and lasts for 10 minutes, its VUM is 10,000; another test uses 10,000 connections and lasts for 1 minute, its VUM is also 10,000. 

## Price Details

<table>
   <tr>
      <th>Plan</th>
      <th>Base Fee</th>
      <th>Traffic Fee</th>
   </tr>
   <tr>
      <td>Standard</td>
      <td>$4.90/min. Free coupon on first trial</td>
      <td>Included</td>
   </tr>
   <tr>
      <td>Professional</td>
      <td>Deducted from test packs based on test VUM cost. Refer to <a href="#base-fee">Base Fee</a> for details of test packs.</td>
      <td>Charge based on public network traffic occurred during test. 1GB free traffic on upgrading to professional plan. Refer to <a href="#traffic-fee">Traffic Fee</a> for details.</td>
   </tr>
</table>

## Base Fee

Prefessional plan supports larger-scale tests, which execute on different numbers of test machines. To provide pricing in finer granularity, **VUM** is used as the base to calculate test resources cost. 

We offer a variety of test pack specifications to support different test needs. Please contact sales for detailed pricing. 

### Billing

1. When a test is submitted, corresponding VUM is locked in a test pack.
2. When a test is completed, actual VUM cost during test will be deducted from the test pack and extra locked VUM will be released.
3. A test pack needs to be used before expiry. Not used parts in expired test packs are not supported to be unsubscribed or transferred to other test packs.  Please note the reminder email of recent expiry.

## Traffic Fee

In professional plan, traffic fee is not included in base fee. If the test is run via public network, traffic fee will be charged. Please contact sales for detailed pricing.

When upgrading to professional plan, you will receive 1GB free traffic.

### Billing

1. When a test via public network is running, the traffic fee is calculated every minute.
2. When a test is completed, the accumulated traffic fee will be charged.
