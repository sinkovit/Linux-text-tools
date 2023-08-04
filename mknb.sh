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
    "Demonstration of using Linux tools"
   ]
  },
' > commands.ipynb

for file in 'grep' 'split' 'sort' 'sed' 'head-and-tail' 'paste' 'CaseStudyHPL' 'CaseStudyFASTA' 'CaseStudyBERT'
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
      echo '  ' \"$line\\n\",  >> commands.ipynb
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

