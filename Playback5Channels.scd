(
Server.default = s = Server.internal;
Server.default.options.device = "ASIO : ASIO4ALL v2";
s.options.sampleRate = 44100;

// Server.default.options.device = "ASIO : ASIO4ALL v2";

//ServerOptions.outDevices;
//Server.default.options.inDevice_("MADIface XT (23666412)");
//Server.default.options.outDevice_("MADIface XT (23666412)");



s.options.numInputBusChannels = 0;
s.options.numOutputBusChannels = 64;
s.options.numWireBufs = 128;
)


Buffer.read(s, 'C:\\Users\\Till\\Documents\\StudiumHfmMusInf\\XenakisNss\\ProjektKonzert\\Spuren\\Track1New.wav');
Buffer.read(s, 'C:\\Users\\Till\\Documents\\StudiumHfmMusInf\\XenakisNss\\ProjektKonzert\\Spuren\\Track2New.wav');
Buffer.read(s, 'C:\\Users\\Till\\Documents\\StudiumHfmMusInf\\XenakisNss\\ProjektKonzert\\Spuren\\Track3New.wav');
Buffer.read(s, 'C:\\Users\\Till\\Documents\\StudiumHfmMusInf\\XenakisNss\\ProjektKonzert\\Spuren\\Track4New.wav');
Buffer.read(s, 'C:\\Users\\Till\\Documents\\StudiumHfmMusInf\\XenakisNss\\ProjektKonzert\\Spuren\\Track5New.wav');


(
Ndef(\gendyPow3,{
	arg out = 0, snd;
	var tr1, tr2, tr3, tr4, tr5;
	snd = Array.fill(6, 0);
	tr1 = PlayBuf.ar(1, 0).dup;
	tr2 = PlayBuf.ar(1, 1).dup;
	tr3 = PlayBuf.ar(1, 2).dup;
	tr4 = PlayBuf.ar(1, 3).dup;
	tr5 = PlayBuf.ar(1, 4).dup;
	snd[0] = HPF.ar(tr1[0], 50);
	snd[1] = HPF.ar(tr2[0], 50);
	snd[2] = HPF.ar(tr3[0], 50);
	snd[3] = HPF.ar(tr4[0], 50);
	snd[4] = HPF.ar(tr5[0], 50);
	snd[5] = LPF.ar((tr1 * 0.25) + (tr2 * 0.25) + (tr3 * 0.25), 50) + (tr4 * 0.25) + (tr5 * 0.25);
	Out.ar(out, snd)
});
)

Ndef(\gendyPow3).clear;
s.reboot;


// Server.default.options.device = "ASIO : ASIO4ALL v2";

