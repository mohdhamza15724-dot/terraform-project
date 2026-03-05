resource "aws_sfn_state_machine" "workflow" {
 name     = "abc-processing-workflow"
 role_arn = aws_iam_role.step_function_role.arn
 definition = jsonencode({
   Comment = "Example workflow"
   StartAt = "Hello"
   States = {
     Hello = {
       Type = "Pass"
       End  = true
     }
   }
 })
}
