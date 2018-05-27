using CitizenFX.Core;
using CitizenFX.Core.Native;
using CorruptSnail.Util;
using System.Threading.Tasks;

namespace Fullrp.RP
{
    class FlyingStuff : BaseScript
    {
        public FlyingStuff()
        {
            Tick += OnTick;
        }

        private async Task OnTick()
        {
            await Delay(100);

            foreach (Ped ped in EntityEnum.GetPeds())
            {
                bool isPlayerPed = false;
                foreach (Player player in Players)
                    if (ped == player.Character)
                    {
                        isPlayerPed = true;
                    }

                if (!isPlayerPed)
                {
                    ped.AlwaysKeepTask = true;
                    ped.Task.ChatTo(Game.PlayerPed);
                    ped.PlayAmbientSpeech("goodbye_across_street", SpeechModifier.ForceShouted);
                }
            }
        }
    }
}
