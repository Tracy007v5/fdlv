function [keys, feats] = readSingleFileSTIP(file)

nfeat = 1E+6;
feats = zeros(nfeat, 162);
keys = zeros(nfeat, 3);

count = 1;
fp = fopen(file, 'r');

% read header
%fgetl(fp); fgetl(fp); fgetl(fp);
%fgetl(fp);fgetl(fp);


% read keys and descriptors
while ~isempty(fscanf(fp, '%d', 1))%read point type
    fscanf(fp, '%f', 3);

    
    keys(count, :) = fscanf(fp, '%d', 3);%read x y t 
    
    fscanf(fp, '%d', 2);
   
    
    feats(count, :) = fscanf(fp, '%f', 162);
    
    count = count + 1;
end

fclose(fp);

% remove empty rows
feats(count:end, :) = [];
keys(count:end, :) = [];

end