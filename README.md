# cloudwatch_logs

I copied almost everything from: <https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/QuickStartChef.html>

## Usage

in your node or role:

```
{
    "run_list":["recipe[cloudwatch_logs]"],
    "cloudwatch_logs":{
        "logs":[
            "/var/log/messages",
            "/var/log/secure"
        ]
    }
}
```
