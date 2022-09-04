import os

try:
    DISCORD_GUILD = os.getenv('DISCORD_GUILD')
    DISCORD_TOKEN = os.getenv('DISCORD_TOKEN')
except:
    exit("Please set the DISCORD_GUILD environment variable.")