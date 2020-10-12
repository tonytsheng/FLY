# FLY
My experimentation learning AWS.

The original plan was to build one Oracle RDS and one MySQL RDS. This turned into two Oracle RDSs first, and using the Data Migration Service to replicate between the two. 
Here are some issues that I ran in to:

+ I used an account called dms_user and had to add the appropriate permissions to it, obviously. But when I started, I thought I should do it all as the schema owner, which was obviously super dumb.
+ With Oracle RDS as a target, you have to add a schema remap in the DMS task transformation rules, so it puts data into your desired schema instead of DMS_USER. That is documented in the migration guide for using Oracle RDS as a target.
+ When I changed this, Direct Path loading wouldn't work so I had to add a useDirectPathFullLoad=N. Change this in the Extra Connection Attributes under Endpoint Specific Settings for the Target Endpoint.
+ Enable DMS to write to CloudWatch. Turn on the most detailed level of debugging for DMS. For Cloudwatch, if you have the option at the top right, Expand Text instead of Expand Row. [Looks like the interace was upgraded in the middle of me doing this.] This helped lots when trying to debug permission issues for DMS_USER.
+ I had to add a log group to Cloudwatch because it complained that the log group didn't exist in order for my logs to flow.
+ I ran a DMS PreAssessment Report a few times but didn't use that too much. You have to give your S3 bucket some other permissions. See the s3bucketpolicy file.

Migrating from an Oracle RDS database to a MySQL RDS Aurora database turned out to be a lot easier. Or I just got better at it. Follow all the steps. Also, I used the Schema Conversion Tool prior to all this, but DMS took care of any schema changes without any intervention from me.
