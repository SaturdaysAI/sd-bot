import discord
from env import DISCORD_TOKEN, DISCORD_GUILD

class MyClient(discord.Client):
  async def on_ready(self):
    print('Logged on as {0}!'.format(self.user))

intents = discord.Intents.default()
client = MyClient(intents=intents)
client.run(DISCORD_TOKEN)