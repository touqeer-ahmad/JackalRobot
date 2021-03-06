[~,len] = size(odomLog);
a = zeros(len,3,'double');
av = zeros(len,3,'double');
t = zeros(len,3,'double');
pos = zeros(len,3,'double');

for i = 1:len
    a(i,1) = imuLog(i).LinearAcceleration.X;
    a(i,2) = imuLog(i).LinearAcceleration.Y;
    a(i,3) = imuLog(i).LinearAcceleration.Z;
    
    av(i,1) = imuLog(i).AngularVelocity.X;
    av(i,2) = imuLog(i).AngularVelocity.Y;
    av(i,3) = imuLog(i).AngularVelocity.Z;
    
    pos(i,1) = odomLog(i).Pose.Pose.Position.X;
    pos(i,2) = odomLog(i).Pose.Pose.Position.Y;
    pos(i,3) = odomLog(i).Pose.Pose.Position.Z;
    
    t(i) = imuLog(i).Header.Stamp.Sec;
end
