%%% Illustration of SSCV on the YouTube dataset
close all; clear; clc;

% data information






info.type = 'STIP';
info.suffix = '.stip';
info.ncenter = 500;
info.nstcenter = 5;
info.cls = {'ApplyEyeMakeup','ApplyLipstick','Archery','BabyCrawling','BalanceBeam','BandMarching',...
'BaseballPitch','Basketball','BasketballDunk','BenchPress','Biking','Billiards',...
'BlowDryHair','BlowingCandles','BodyWeightSquats','Bowling','BoxingPunchingBag',...
'BoxingSpeedBag','BreastStroke','BrushingTeeth','CleanAndJerk','CliffDiving',...
'CricketBowling','CricketShot','CuttingInKitchen','Diving','Drumming','Fencing',...
'FieldHockeyPenalty','FloorGymnastics','FrisbeeCatch','FrontCrawl','GolfSwing',...
'Haircut','Hammering','HammerThrow','HandstandPushups','HandstandWalking','HeadMassage',...
'HighJump','HorseRace','HorseRiding','HulaHoop','IceDancing','JavelinThrow','JugglingBalls',...
'JumpingJack','JumpRope','Kayaking','Knitting','LongJump','Lunges','MilitaryParade','Mixing',...
'MoppingFloor','Nunchucks','ParallelBars','PizzaTossing','PlayingCello','PlayingDaf','PlayingDhol',...
'PlayingFlute','PlayingGuitar','PlayingPiano','PlayingSitar','PlayingTabla','PlayingViolin','PoleVault',...
'PommelHorse','PullUps','Punch','PushUps','Rafting','RockClimbingIndoor','RopeClimbing','Rowing',...
'SalsaSpin','ShavingBeard','Shotput','SkateBoarding','Skiing','Skijet','SkyDiving','SoccerJuggling',...
'SoccerPenalty','StillRings','SumoWrestling','Surfing','Swing','TableTennisShot','TaiChi','TennisSwing',...
'ThrowDiscus','TrampolineJumping','Typing','UnevenBars','VolleyballSpiking','WalkingWithDog','WallPushups',...
'WritingOnBoard','YoYo'};
info.ngroup = 25;
info.rate = 20;
info.dirfeat = '/home/wcj/code/SSCV-master/Feats';
info.dirfrm = '/home/wcj/code/SSCV-master/Frames';
info.dirvec = '/home/wcj/code/SSCV-master/SSCV';

addpath('/home/wcj/software/spams-matlab-v2.6/build/');

% compute visual descriptor words
compSDVBasis(info);

% compute super descriptor vector

compSDV(info);

% compute visual location words
compSLVBasis(info);

% compute super location vector
compSLV(info);
