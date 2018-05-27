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
                if (ped != Game.PlayerPed)
                {
                    ped.AlwaysKeepTask = true;
                    ped.Task.ChatTo(Game.PlayerPed);
                    ped.PlayAmbientSpeech("goodbye_across_street", SpeechModifier.ForceShouted);
                }
        }
    }
}
