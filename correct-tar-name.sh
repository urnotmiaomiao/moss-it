path=$1
type="tar.gz" 
files=$(ls $path*.$type*); 
for filename in $files  
	do
	mv $filename ${filename%\.$type}
done
