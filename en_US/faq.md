# FAQ

## How test evaluation and deduction works in Professional plan?

In Professional plan, test cost evaluation is based on VUM, where VUM = VU (virtual user, i.e. connections) * M (execution minutes). If there are available coupons that can be used for tests, the cost will be deducted from these coupons first. The remaining cost will then be deducted from test packs.

If the test is running via public network, the traffic cost from XMeter Cloud is also evaluated and charged.

## What are the limitations for each MQTT test mode in Professional plan?

In Professional plan, test duration and connections have the following limitation:

<table>
	<tr>
		<th>Test duration limit</th>
		<th>Connections limit</th>
	</tr>
	<tr>
		<td>&lt;= 1,440 minutes (e.g. 24 hours)</td>
		<td>&lt;= 500,000</td>
	</tr>
</table>

Also, there are specific limitations for different modes. You will receive detailed instruction messages if your settings exceed the limitations.

Specific limitations for each mode are listed as follows.

1. **Connection-only**: all connections must be established within given duration. In addition,

   <table>
      	<tr>
            <th>Total connections range</th>
            <th>&lt;= 10,000</th>
            <th>&gt; 10,000</th>
        </tr>
        <tr>
            <td>New connections per second limit</td>
            <td>&lt;= 1,000, and not exceed total connections</td>
            <td>not exceed 1/10 of the total connections </td>
        </tr>
   </table>

2. **Publish**: 

   <table>
   	<tr>
   		<th>Total connections range</th>
   		<th>&lt;= 1,000</th>
   		<th>&gt; 1,000</th>
   	</tr>
   	<tr>
   		<td>Messages published per second limit</td>
   		<td>&lt;= 1,000, and not exceed 10 times of the total connections</td>
   		<td>&lt;= 500,000 and not exceed 10 times of the total connections</td>
   	</tr>
   	<tr>
   		<td>Payload limit</td>
   		<td colspan="2">&lt;= 102,400 bytes</td>
   	</tr>
   </table>

3. **One-to-one**: 

   <table>
   	<tr>
   		<th>Total connections range</th>
   		<th>&lt;= 1,000</th>
   		<th>&gt; 1,000</th>
   	</tr>
   	<tr>
   		<td>Messages published per second limit</td>
   		<td>&lt;= 1,000, and not exceed 10 times of the total connections</td>
   		<td>&lt;= 250,000 and not exceed 10 times of the total connections</td>
   	</tr>
   	<tr>
   		<td>Payload limit</td>
   		<td colspan="2">&lt;= 102,400 bytes</td>
   	</tr>
   </table>

4. **Fan-out**: 

   <table>
   	<tr>
   		<th>Total connections range</th>
   		<th>&lt;= 1,000</th>
   		<th>&gt; 1,000</th>
   	</tr>
   	<tr>
   		<td>Pub clients limit</td>
   		<td colspan="2">&lt;= 1,000, and not exceed 1/10 of the total connections</td>
   	</tr>
   	<tr>
   		<td>Messages published per second limit</td>
   		<td>&lt;= 1,000, and not exceed 100 times of the total connections</td>
   		<td>&lt;= 500,000 / total connections, and not exceed 100 times of the total connections</td>
   	</tr>
   	<tr>
   		<td>Payload limit</td>
   		<td colspan="2">&lt;= 102,400 bytes</td>
   	</tr>
   </table>

5. **Fan-in**: 

   <table>
   	<tr>
   		<th>Total connections range</th>
   		<th>&lt;= 1,000</th>
   		<th>&gt; 1,000</th>
   	</tr>
   	<tr>
   		<td>Sub clients limit</td>
   		<td colspan="2">&lt;= 1,000, and &lt; total connections</td>
   	</tr>
   	<tr>
   		<td>Messages published per second limit</td>
   		<td>&lt;= 1,000, and not exceed 10 times of the total connections</td>
   		<td>&lt;= 250,000, and not exceed 10 times of the total connections</td>
   	</tr>
   	<tr>
   		<td>Payload limit</td>
   		<td colspan="2">&lt;= 102,400 bytes</td>
   	</tr>
   </table>

## What are the limitations for each MQTT test mode in Standard plan?

In Standard plan, test duration and connections have the following limitation:

<table>
	<tr>
		<th>Test duration limit</th>
		<th>Connections limit</th>
	</tr>
	<tr>
		<td>&lt;= 60 minutes (e.g. 1 hour)</td>
		<td>&lt;= 1,000</td>
	</tr>
</table>

Also, there are specific limitations for different modes. You will receive detailed instruction messages if your settings exceed the limitations.

Specific limitations for each mode are listed as follows.

1. **Connection-only**: all connections must be established within given duration. In addition,

   <table>
   	<tr>
   		<td>New connections per second limit</td>
   		<td>&lt;= 1,000</td>
   	</tr>
   </table>

2. **Publish**: 

   <table>
   	<tr>
   		<td>Messages published per second limit</td>
   		<td>&lt;= 1,000</td>
   	</tr>
   	<tr>
   		<td>Payload limit</td>
   		<td>&lt;= 1,024 bytes</td>
   	</tr>
   </table>

3. **One-to-one**: 

   <table>
   	<tr>
   		<td>Messages published per second limit</td>
   		<td>&lt;= 500</td>
   	</tr>
   	<tr>
   		<td>Payload limit</td>
   		<td>&lt;= 1,024 bytes</td>
   	</tr>
   </table>

4. **Fan-out**: 

   <table>
   	<tr>
   		<td>Pub clients limit</td>
   		<td>1</td>
   	</tr>
   	<tr>
   		<td>Messages published per second limit</td>
   		<td>1</td>
   	</tr>
   	<tr>
   		<td>Payload limit</td>
   		<td>&lt;= 1,024 bytes</td>
   	</tr>
   </table>

5. **Fan-in**: 

   <table>
   	<tr>
   		<td>Sub clients limit</td>
   		<td>&lt;=10, and not exceed total connections</td>
   	</tr>
   	<tr>
   		<td>Messages published per second limit</td>
   		<td>&lt;= 500</td>
   	</tr>
   	<tr>
   		<td>Payload limit</td>
   		<td>&lt;= 1,024 bytes</td>
   	</tr>
   </table>

## How long are trace logs and error logs kept?

XMeter Cloud cleans test logs regularly. Trace logs will be kept for **1 month**, while error logs will be kept for **3 months**. Logs other than trace logs and error logs will also be kept for **3 months**. Please download and back up your important logs in time.