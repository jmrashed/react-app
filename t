The error "create-react-app.ps1 cannot be loaded because running scripts is disabled on this system" occurs when the execution policy does not allow running the specific script on Windows. 

Use the `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned` command to solve the error.

Open your PowerShell as an administrator and set its execution policy with the `Set-ExecutionPolicy` command.

    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

The `Set-ExecutionPolicy` command sets the PowerShell execution policy for the Windows computer.


If you aren't able to run the command as an administrator, try running it with the `CurrentUser` parameter.

    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

The `RemoteSigned` policy still prevents us from running unsigned scripts.
Now, run the `Get-ExecutionPolicy` command:

    Get-ExecutionPolicy
The `Get-ExecutionPolicy` command should display the effective execution policy for the current PowerShell session (`RemoteSigned`).

[![enter image description here][1]][1]


  [1]: https://i.stack.imgur.com/7o06l.png