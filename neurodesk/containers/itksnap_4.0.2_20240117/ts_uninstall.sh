for executable in `cat commands.txt`; do
      echo $executable
      rm $executable
done

rm -rf activate*
rm -rf deactivate*
rm commands.txt
rm *.sif

rm /home/sebp/neurocommand/neurodesk/containers/itksnap_4.0.2_20240117/../modules/itksnap/4.0.2
