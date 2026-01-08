resource "aws_cloudwatch_metric_alarm" "cpu" {
  alarm_name          = "ec2-cpu-alarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 70
  dimensions = {
    InstanceId = var.instance_id
  }
}
