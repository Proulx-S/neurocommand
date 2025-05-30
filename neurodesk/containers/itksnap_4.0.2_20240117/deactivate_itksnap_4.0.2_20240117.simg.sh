pathToRemove=/home/sebp/neurocommand/neurodesk/containers/itksnap_4.0.2_20240117

echo "path to remove: $pathToRemove"
echo "path before"
echo $PATH

function path_remove {
     # Delete path by parts so we can never accidentally remove sub paths
       PATH=${PATH//":$1:"/":"} # delete any instances in the middle
         PATH=${PATH/#"$1:"/} # delete any instance at the beginning
           PATH=${PATH/%":$1"/} # delete any instance in the at the end
}

path_remove $pathToRemove

echo "path after"
echo $PATH

export PATH=$PATH

searchString=`echo $pathToRemove | rev | cut -d/ -f1 | rev`
echo "removing $searchString from .bashrc"
sed -i "\|$searchString|d" ~/.bashrc
