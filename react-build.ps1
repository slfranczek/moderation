
# Set the paths
$reactAppPath = "$PSScriptRoot\review-client"
$dotnetAppPath = "$PSScriptRoot"
$destinationPath = "$dotnetAppPath\wwwroot\review-client"

# Ensure the script stops on errors
$ErrorActionPreference = "Stop"

# Navigate to the React app directory
Write-Host "Navigating to React app directory..."
Set-Location -Path $reactAppPath

# Install dependencies
Write-Host "Installing dependencies..."
npm install

# Set the BUILD_PATH environment variable temporarily for the build process
Write-Host "Setting BUILD_PATH environment variable..."
$env:BUILD_PATH = $destinationPath

# Run the build command with the BUILD_PATH environment variable set
Write-Host "Building the React app..."
& npm run build

# Clear the BUILD_PATH environment variable to avoid affecting the rest of the session
Write-Host "Clearing BUILD_PATH environment variable..."
Remove-Item Env:BUILD_PATH

# Confirm that the build output is in the correct location
Write-Host "Build output is now in $destinationPath"

Write-Host "Deployment complete!"
