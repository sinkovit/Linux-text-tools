# This script generates a Jupyter notebook from the shell scripts. It
# is normally executed by the owner of the repo after modification had
# been made. It does not need to be executed by users of the repo
# unless they wish to customize the examples.

echo '
{
 "cells": [
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "# Linux tools examples"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "Demonstration of Linux text processing tools"
   ]
  },
' > commands.ipynb

for file in 'head-and-tail' 'paste-and-nl' 'sort-and-shuf' 'split' 'grep' 'sed' 'awk' 'CaseStudyHPL' 'CaseStudyBERT' 'CaseStudyFASTA'
do
  echo ' ' { >> commands.ipynb
  echo '  ' \"cell_type\": \"markdown\",  >> commands.ipynb
  echo '  ' \"metadata\": {},  >> commands.ipynb
  echo '  ' \"source\": [  >> commands.ipynb
  echo '  ' \"\#\#\# $file\"  >> commands.ipynb
  echo '  ' ]  >> commands.ipynb
  echo ' ' },  >> commands.ipynb

  echo ' ' {  >> commands.ipynb
  echo '  ' \"cell_type\": \"code\",  >> commands.ipynb
  echo '  ' \"execution_count\": null,  >> commands.ipynb
  echo '  ' \"metadata\": {},  >> commands.ipynb
  echo '  ' \"outputs\": [],  >> commands.ipynb
  echo '  ' \"source\": [  >> commands.ipynb
  echo '  ' \"cd $file\"  >> commands.ipynb
  echo '  ' ]  >> commands.ipynb
  echo ' ' },  >> commands.ipynb

  echo ' ' {  >> commands.ipynb  >> commands.ipynb
  echo '  ' \"cell_type\": \"code\",  >> commands.ipynb
  echo '  ' \"execution_count\": null,  >> commands.ipynb
  echo '  ' \"metadata\": {},  >> commands.ipynb
  echo '  ' \"outputs\": [],  >> commands.ipynb
  echo '  ' \"source\": [  >> commands.ipynb
  echo '  ' \"%%bash\\n\",  >> commands.ipynb
  cat $file/*.sh | while read line || [[ -n $line ]];
  do
      line=${line//\"/\\\"}
      echo '  ' \"$line\\n\",  >> commands.ipynb
      if [[ "$file" != *"CaseStudy"* && "$line" != "" ]];then
         echo '  ' \"echo\\n\", >> commands.ipynb
         echo '  ' \"\\n\",  >> commands.ipynb
      fi
  done
  echo '  ' \"\\n\"  >> commands.ipynb
  echo '  ' ]  >> commands.ipynb
  echo ' ' },  >> commands.ipynb

  echo ' ' {  >> commands.ipynb
  echo '  ' \"cell_type\": \"code\",  >> commands.ipynb
  echo '  ' \"execution_count\": null,  >> commands.ipynb
  echo '  ' \"metadata\": {},  >> commands.ipynb
  echo '  ' \"outputs\": [],  >> commands.ipynb
  echo '  ' \"source\": [  >> commands.ipynb
  echo '  ' \"cd ..\"  >> commands.ipynb
  echo '  ' ]  >> commands.ipynb
  echo ' ' },  >> commands.ipynb
done

echo -n '
{
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    ""
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.8.5"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 4
}
'  >> commands.ipynb

