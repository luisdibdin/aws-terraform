# aws-terraform

Testing terraform and actions for deployment to AWS.

## GitHub Actions - Workflows

The terraform-plan and terraform-apply workflows are designed to work together by using the upload-artifact and download-artifact actions.

### Terraform Plan

This workflow runs a terraform plan and posts the result as comment if running on a pull request. The output of the plan can be uploaded if using prior to the terraform apply workflow. The plan also outputs a detailed exitcode:

- 0: succesfful plan with no changes
- 1: an error in the plan
- 2: a succesfful plan with changes

This workflow uses this to output a variable, tfplan-diff, which can be used to determine whether to run the apply workflow.

The plan is uploaded with the name `tfplan-${{ github.sha }}` and when downloaded will unpack into a file called `tfplan`.
