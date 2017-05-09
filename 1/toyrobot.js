const readline = require('readline');
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.write('\nWelcome to ToyRobot, please input your commands: \n');
rl.on('line', (input) => {
  var args = input.toUpperCase().split(' ');
	
	if(args[0] !== 'PLACE'){
		console.warn('Please place the robot first!');
	}else{
		
		var init = args[1].split(',');

		var tr = new ToyRobot(parseInt(init[0]), parseInt(init[1]), init[2]);

		for(var i = 2; i < args.length; i++){
			if(args[i] === 'PLACE'){
				var reinit = args[i+1].split(',');
				tr.PLACE(reinit[0], reinit[1], reinit[2]);
				i++;
			}else{
				tr[args[i]]();
			}
		}
	}
});

var ToyRobot = function(x,y,o){

	this._x = 0; // <=4
	this._y = 0; // <=4
	this._o = 'NORTH'; // N,E,S,W

	this.compass = ['NORTH', 'EAST', 'SOUTH', 'WEST']; // 

	this.PLACE(x,y,o);
};

ToyRobot.prototype.PLACE = function(x,y,o){
	// stavlja robota na poziciju i seta orijentaciju
	function checkPosition(pos){
		return pos > -1 && pos < 5 ? true : false;
	}

	if(checkPosition(x)){
		this._x = x;
	}else{
		console.error('\t* invalid x position, the robot would fall off\n')
	}

	if(checkPosition(y)){
		this._y = y;
	}else{
		console.error('\t* invalid y position, the robot would fall off\n')
	}

	if(this.compass.indexOf(o) !== -1){
		this._o = o;
	}else{
		console.error('\t* invalid orientation\n')
	}
};

ToyRobot.prototype.MOVE = function(){
	// uzima poziciju robota i miče ga jedno polje naprid di je okrenut
	console.info(' >> Moving robot ' + this._o);
	switch(this._o){
		case 'NORTH':
			this.PLACE(this._x, this._y+1, this._o);
			break;
		case 'EAST':
			this.PLACE(this._x+1, this._y, this._o);
			break;
		case 'SOUTH':
			this.PLACE(this._x, this._y-1, this._o);
			break;
		case 'WEST':
			this.PLACE(this._x-1, this._y, this._o);
			break;
		default:
			break;
	}
};

ToyRobot.prototype.LEFT = function(){
	// zaokreće orijentaciju ulivo
	var p = this.compass.indexOf(this._o);
	this._o = this.compass[ p === 0 ? 3 : p-1 ];
};


ToyRobot.prototype.RIGHT = function(){
	// zaokreće orijentaciju udesno
	var p = this.compass.indexOf(this._o);
	this._o = this.compass[ p === 3 ? 0 : p+1 ];
};

ToyRobot.prototype.REPORT = function(){
	console.log('>', this._x, ',' ,this._y, ',', this._o);
};

