clc;
clear;
info.dirfeat = '/home/wcj/UCF-101/';
info.cls = {'ApplyLipstick','Archery'};
info.ngroup = 25;
for i = 1:length(info.cls)
 for j = 1:info.ngroup
        idxGroup = sprintf('%02d', j);
        k = 1;
         while 1
            idxVid = sprintf('%02d', k);
filename = [info.dirfeat,info.cls{i},'/v_',info.cls{i},'_g',idxGroup,'_c',idxVid,'.avi'];
if ~exist(filename, 'file')
                break;
           
         end
obj = VideoReader(filename);
raws = obj.Width;
columns = obj.Height;
frames = obj.NumberOfFrames;
explain = '# rows columns frames';
fid = fopen([info.dirfeat,info.cls{i},'/v_',info.cls{i},'_g',idxGroup,'_c',idxVid,'.txt'],'a');
fprintf(fid,'%s\n %d\n %d\n %d\n',explain,raws,columns,frames)
fclose(fid);
   
         
         if exist([info.dirfeat,info.cls{i},'/v_',info.cls{i},'_g',idxGroup,'_c',idxVid,'.txt'])
                k = k + 1;
                continue;
         end
         end
 end
  
 end