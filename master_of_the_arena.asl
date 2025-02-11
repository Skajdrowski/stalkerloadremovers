state("XR_3DA","1.0006")
{
	int Money: "XR_3DA.exe", 0x10E58C, 0xC, 0x258;
	bool Start: "XR_3DA.exe", 0x10BB88, 0x18, 0x2C, 0x44, 0x4;
}
startup
{
	refreshRate = 60;
}

init
{
	timer.CurrentTimingMethod = TimingMethod.RealTime;
}

start
{
    return !current.Start && old.Start;
}
split
{
	return current.Money != old.Money;
}