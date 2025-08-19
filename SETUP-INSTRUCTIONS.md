# Repository Setup Instructions

## GitHub Workflow Setup Required

A GitHub Actions workflow has been prepared for this repository, but due to API restrictions, it needs to be moved to the correct location manually.

### Steps to activate the workflow:

1. **Go to your repository**: [https://github.com/scout-qualapps/test6](https://github.com/scout-qualapps/test6)

2. **Find the workflow file**: Click on `github-workflow.yml` in the repository root

3. **Edit the file**: Click the pencil icon (✏️) to edit

4. **Change the file path**: 
   - Change the filename from `github-workflow.yml` 
   - To: `.github/workflows/workflow.yml`
   - GitHub will automatically create the `.github/workflows/` directory

5. **Commit the change**: 
   - Add a commit message like "Move workflow to .github/workflows/"
   - Click "Commit changes"

6. **Verify**: The workflow will now appear in the "Actions" tab of your repository

### Alternative Method (if you prefer command line):

```bash
# Clone the repository
git clone https://github.com/scout-qualapps/test6.git
cd test6

# Create the directory structure
mkdir -p .github/workflows

# Move the workflow file
mv github-workflow.yml .github/workflows/workflow.yml

# Remove the instructions comments from the top of the file (optional)
# Edit .github/workflows/workflow.yml and remove the instruction comments

# Commit and push
git add .
git commit -m "Move workflow to proper location"
git push origin main
```


## DBT Template Files

The following DBT template files have been added to your repository in the `dbt/` folder:

### Successfully Added (4 files):
- `dbt/schema.yml`
- `dbt/datamart/model_dm.sql`
- `dbt/staging/model_stg.sql`
- `dbt/intermediate/model_interm.sql`

### Why this step is needed:

GitHub has security restrictions that prevent API-based creation of `.github` directories and workflow files. This is a common limitation when automating repository setup.

---

*This repository was created automatically. Once you complete the workflow setup above, you can delete this README if desired.*
