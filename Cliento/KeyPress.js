var b_pressUP = false;
var b_pressLEFT = false;
var b_pressDOWN = false;
var b_pressRIGHT = false;


function pressUp()
{
    if ( b_pressUP === false)
    {
        b_pressUP = true;
        myclient.send_data("VK_UP", 1 );
    }
}
function releaseUp()
{
    if ( b_pressUp === true)
    {
        b_pressUp = false
        myclient.send_data("VK_UP", 0 );
    }
}
function pressDOWN()
{
    if ( b_pressDOWN === false)
    {
        b_pressDOWN = true;
        myclient.send_data("VK_DOWN", 1 );
    }
}
function releaseDOWN()
{
    if ( b_pressDOWN === true)
    {
        b_pressDOWN = false
        myclient.send_data("VK_DOWN", 0 );
    }
}
function pressLEFT()
{
    if ( b_pressLEFT === false)
    {
        b_pressLEFT = true;
        myclient.send_data("VK_LEFT", 1 );
    }
}
function releaseLEFT()
{
    if ( b_pressLEFT === true)
    {
        b_pressLEFT = false
        myclient.send_data("VK_LEFT", 0 );
    }
}
function pressRIGHT()
{
    if ( b_pressRIGHT === false)
    {
        b_pressRIGHT = true;
        myclient.send_data("VK_RIGHT", 1 );
    }
}
function releaseRIGHT()
{
    if ( b_pressRIGHT === true)
    {
        b_pressRIGHT = false
        myclient.send_data("VK_RIGHT", 0 );
    }
}
