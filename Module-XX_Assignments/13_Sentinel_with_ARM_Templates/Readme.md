# Managing Sentinel resources with ARM Templates

- [ARM Template Reference](https://learn.microsoft.com/en-us/azure/templates/) >> **Azure Sentinel**

### Step-01: Create your ARM Template

- Download and Install an IDE; In this lab, I'm using Visual Studio Code.
- Install an extension [Azure Resource Manager Tools](https://marketplace.visualstudio.com/items?itemName=msazurermtools.azurerm-vscode-tools).
- Create a new ARM template and label it as _azuredeploy.json_ and parameter file as _sentinel.param.json_.

### Step-02: Connect to your Azure Account using PS/CLI

- To launch Powershell from VS code editor, navigate to **VS Code** >> **View** menu >> **Terminal**

```
connect-AzAccount

# This command will take you to sign-in page;
# Enter the credentials and come back to the editor after successful sign-in
```

### Step-02: Create a Resource Group

```
New-AzResourceGroup -Name "Sentinel-lab-RG" -Location "East US"

```

### Step-03: Deploy template to the Resource Group

```

$templateFile = "{path-to-the-template-file}"
$parameterFile="{path-to-azuredeploy.parameters.dev.json}"

New-AzResourceGroupDeployment -Name addstorage -ResourceGroupName myResourceGroup -TemplateFile $templateFile -TemplateParameterFile $parameterFile
```

### Step-04: Verify deployment

- Sign-in to **Azure Portal** and Navigate to **Resource Groups**.
- Check if the sentinel workspace with all the associated resources are created as expected or not.
