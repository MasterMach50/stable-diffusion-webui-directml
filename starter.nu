# Torch Command
$env.TORCH_COMMAND = "pip3 install torch torchvision torchaudio torch-directml"

# Arguments
$env.COMMANDLINE_ARGS = "--autolaunch --medvram --opt-sub-quad-attention --no-download-sd-model --listen"

mut venv = ""

# Detect Virtual Environment
try {
    $venv = $env.VIRTUAL_ENV
} catch {
    print $"(ansi red_bold)Virtual Environment Not Detected \nExiting" --stderr
    exit 1
}


# Print the set values
print { 
    'TORCH_COMMAND': $env.TORCH_COMMAND,
    'Arguments': $env.COMMANDLINE_ARGS,
    'Virtual Environment': $venv
    }

# Wait for keypress
input "[press any key to continue]\n" -s

# Launch webui
python launch.py
