var b_pressUP = false;
var b_pressLEFT = false;
var b_pressDOWN = false;
var b_pressRIGHT = false;
var b_pressA= false;
var b_pressB= false;
var b_pressC = false;
var b_pressD = false;
var b_pressE = false;
var b_pressF = false;
var b_pressG = false;
var b_pressH = false;
var b_pressI = false;
var b_pressJ = false;
var b_pressK = false;
var b_pressL = false;
var b_pressM = false;
var b_pressN = false;
var b_pressO = false;
var b_pressP = false;
var b_pressQ = false;
var b_pressR = false;
var b_pressS = false;
var b_pressT = false;
var b_pressU = false;
var b_pressV = false;
var b_pressW = false;
var b_pressX = false;
var b_pressY = false;
var b_pressZ = false;
var b_pressLB = false;
var b_pressRB = false;
var b_pressCTRL = false;
var b_pressSHIFT = false;

function pressSHIFT()
{
    if ( b_pressSHIFT === false)
    {
        b_pressSHIFT = true;
        myclient.send_data("SHIFT", 1 );
    }
}
function releaseSHIFT()
{
    if ( b_pressSHIFT === true)
    {
        b_pressSHIFT = false;
        myclient.send_data("SHIFT", 0 );
    }
}

function pressCTRL()
{
    if ( b_pressCTRL === false)
    {
        b_pressCTRL = true;
        myclient.send_data("CTRL", 1 );
    }
}
function releaseCTRL()
{
    if ( b_pressCTRL === true)
    {
        b_pressCTRL = false;
        myclient.send_data("CTRL", 0 );
    }
}

function pressLB()
{
    if ( b_pressLB === false)
    {
        b_pressLB = true;
        myclient.send_data("LB", 1 );
    }
}
function releaseLB()
{
    if ( b_pressA === true)
    {
        b_pressA = false;
        myclient.send_data("LB", 0 );
    }
}

function pressRB()
{
    if ( b_pressRB === false)
    {
        b_pressRB = true;
        myclient.send_data("RB", 1 );
    }
}
function releaseRB()
{
    if ( b_pressR === true)
    {
        b_pressR = false;
        myclient.send_data("RB", 0 );
    }
}

function pressA()
{
    if ( b_pressA === false)
    {
        b_pressA = true;
        myclient.send_data("A", 1 );
    }
}
function releaseA()
{
    if ( b_pressA === true)
    {
        b_pressA = false;
        myclient.send_data("A", 0 );
    }
}
function pressB()
{
    if ( b_pressB === false)
    {
        b_pressB = true;
        myclient.send_data("B", 1 );
    }
}
function releaseB()
{
    if ( b_pressB === true)
    {
        b_pressB = false;
        myclient.send_data("B", 0 );
    }
}
function pressC()
{
    if ( b_pressC === false)
    {
        b_pressC = true;
        myclient.send_data("C", 1 );
    }
}
function releaseC()
{
    if ( b_pressC === true)
    {
        b_pressC = false;
        myclient.send_data("C", 0 );
    }
}
function pressD()
{
    if ( b_pressD === false)
    {
        b_pressD = true;
        myclient.send_data("D", 1 );
    }
}
function releaseD()
{
    if ( b_pressD === true)
    {
        b_pressD = false;
        myclient.send_data("D", 0 );
    }
}
function pressE()
{
    if ( b_pressE === false)
    {
        b_pressE = true;
        myclient.send_data("E", 1 );
    }
}
function releaseE()
{
    if ( b_pressE === true)
    {
        b_pressE = false;
        myclient.send_data("E", 0 );
    }
}
function pressF()
{
    if ( b_pressF === false)
    {
        b_pressF = true;
        myclient.send_data("F", 1 );
    }
}
function releaseF()
{
    if ( b_pressF === true)
    {
        b_pressF = false;
        myclient.send_data("F", 0 );
    }
}
function pressG()
{
    if ( b_pressG === false)
    {
        b_pressG = true;
        myclient.send_data("G", 1 );
    }
}
function releaseG()
{
    if ( b_pressG === true)
    {
        b_pressG = false;
        myclient.send_data("G", 0 );
    }
}
function pressH()
{
    if ( b_pressH === false)
    {
        b_pressH = true;
        myclient.send_data("H", 1 );
    }
}
function releaseH()
{
    if ( b_pressH === true)
    {
        b_pressH = false;
        myclient.send_data("H", 0 );
    }
}
function pressI()
{
    if ( b_pressI === false)
    {
        b_pressI = true;
        myclient.send_data("I", 1 );
    }
}
function releaseI()
{
    if ( b_pressI === true)
    {
        b_pressI = false;
        myclient.send_data("I", 0 );
    }
}
function pressJ()
{
    if ( b_pressJ === false)
    {
        b_pressJ = true;
        myclient.send_data("J", 1 );
    }
}
function releaseJ()
{
    if ( b_pressJ === true)
    {
        b_pressJ = false;
        myclient.send_data("J", 0 );
    }
}
function pressK()
{
    if ( b_pressK === false)
    {
        b_pressK = true;
        myclient.send_data("K", 1 );
    }
}
function releaseK()
{
    if ( b_pressK === true)
    {
        b_pressK = false;
        myclient.send_data("K", 0 );
    }
}
function pressL()
{
    if ( b_pressL === false)
    {
        b_pressL = true;
        myclient.send_data("L", 1 );
    }
}
function releaseL()
{
    if ( b_pressL === true)
    {
        b_pressL = false;
        myclient.send_data("L", 0 );
    }
}
function pressM()
{
    if ( b_pressM === false)
    {
        b_pressM = true;
        myclient.send_data("M", 1 );
    }
}
function releaseM()
{
    if ( b_pressM === true)
    {
        b_pressM = false;
        myclient.send_data("M", 0 );
    }
}
function pressN()
{
    if ( b_pressN === false)
    {
        b_pressN = true;
        myclient.send_data("N", 1 );
    }
}
function releaseN()
{
    if ( b_pressN === true)
    {
        b_pressN = false;
        myclient.send_data("N", 0 );
    }
}
function pressO()
{
    if ( b_pressO === false)
    {
        b_pressO = true;
        myclient.send_data("O", 1 );
    }
}
function releaseO()
{
    if ( b_pressO === true)
    {
        b_pressO = false;
        myclient.send_data("O", 0 );
    }
}
function pressP()
{
    if ( b_pressP === false)
    {
        b_pressP = true;
        myclient.send_data("P", 1 );
    }
}
function releaseP()
{
    if ( b_pressP === true)
    {
        b_pressP = false;
        myclient.send_data("P", 0 );
    }
}
function pressQ()
{
    if ( b_pressQ === false)
    {
        b_pressQ = true;
        myclient.send_data("Q", 1 );
    }
}
function releaseQ()
{
    if ( b_pressQ === true)
    {
        b_pressQ = false;
        myclient.send_data("Q", 0 );
    }
}
function pressR()
{
    if ( b_pressR === false)
    {
        b_pressR = true;
        myclient.send_data("R", 1 );
    }
}
function releaseR()
{
    if ( b_pressR === true)
    {
        b_pressR = false;
        myclient.send_data("R", 0 );
    }
}
function pressS()
{
    if ( b_pressS === false)
    {
        b_pressS = true;
        myclient.send_data("S", 1 );
    }
}
function releaseS()
{
    if ( b_pressS === true)
    {
        b_pressS = false;
        myclient.send_data("S", 0 );
    }
}
function pressT()
{
    if ( b_pressT === false)
    {
        b_pressT = true;
        myclient.send_data("T", 1 );
    }
}
function releaseT()
{
    if ( b_pressT === true)
    {
        b_pressT = false;
        myclient.send_data("T", 0 );
    }
}
function pressU()
{
    if ( b_pressU === false)
    {
        b_pressU = true;
        myclient.send_data("U", 1 );
    }
}
function releaseU()
{
    if ( b_pressU === true)
    {
        b_pressU = false;
        myclient.send_data("U", 0 );
    }
}
function pressV()
{
    if ( b_pressV === false)
    {
        b_pressV = true;
        myclient.send_data("V", 1 );
    }
}
function releaseV()
{
    if ( b_pressV === true)
    {
        b_pressV = false;
        myclient.send_data("V", 0 );
    }
}
function pressW()
{
    if ( b_pressW === false)
    {
        b_pressW = true;
        myclient.send_data("W", 1 );
    }
}
function releaseW()
{
    if ( b_pressW === true)
    {
        b_pressW = false;
        myclient.send_data("W", 0 );
    }
}
function pressX()
{
    if ( b_pressX === false)
    {
        b_pressX = true;
        myclient.send_data("X", 1 );
    }
}
function releaseX()
{
    if ( b_pressX === true)
    {
        b_pressX = false;
        myclient.send_data("X", 0 );
    }
}
function pressY()
{
    if ( b_pressY === false)
    {
        b_pressY = true;
        myclient.send_data("Y", 1 );
    }
}
function releaseY()
{
    if ( b_pressY === true)
    {
        b_pressY = false;
        myclient.send_data("Y", 0 );
    }
}
function pressZ()
{
    if ( b_pressZ === false)
    {
        b_pressZ = true;
        myclient.send_data("Z", 1 );
    }
}
function releaseZ()
{
    if ( b_pressZ === true)
    {
        b_pressZ = false;
        myclient.send_data("Z", 0 );
    }
}

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


