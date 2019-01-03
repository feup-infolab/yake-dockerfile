# yake-dockerfile
Dockerfile for building an image of the [LIAAD/yake](https://github.com/LIAAD/yake) Keyword Extration Library.

Original credits go to the authors below!!

**We did not build YAKE!** but only packaged it into a Docker image. A copy of the original README from the LIAAD [GitHub repository](https://github.com/LIAAD/yake) is shown below. See the original library repository at: https://github.com/LIAAD/yake

## Running Yake via Docker:

```bash
docker run feupinfolab/yake:latest -ti "A text to extract keywords from"
```

(more options available, check below).


Yet Another Keyword Extractor (Yake)
-------------

Unsupervised Approach for Automatic Keyword Extraction using Text Features

* Documentation: https://pypi.python.org/pypi/yake.

Main Features
-------------

* Unsupervised approach
* Multi-Language Support
* Single document

Rationale
-------------

Extracting keywords from texts has become a challenge for individuals and organizations as the information grows in complexity and size. The need to automate this task so that texts can be processed in a timely and adequate manner has led to the emergence of automatic keyword extraction tools. Despite the advances, there is a clear lack of multilingual online tools to automatically extract keywords from single documents. Yake! is a novel feature-based system for multi-lingual keyword extraction, which supports texts of different sizes, domain or languages. Unlike other approaches, Yake! does not rely on dictionaries nor thesauri, neither is trained against any corpora. Instead, it follows an unsupervised approach which builds upon features extracted from the text, making it thus applicable to documents written in different languages without the need for further knowledge. This can be beneficial for a large number of tasks and a plethora of situations where the access to training corpora is either limited or restricted.


Please cite the following works when using YAKE
------------

Campos, R., Mangaravite, V., Pasquali, A., Jorge, A., Nunes, C., & Jatowt, A. (2018).
A Text Feature Based Automatic Keyword Extraction Method for Single Documents
Proceedings of the 40th European Conference on Information Retrieval (ECIR'18), Grenoble, France. March 26 – 29.

Campos, R., Mangaravite, V., Pasquali, A., Jorge, A., Nunes, C., & Jatowt, A. (2018).
YAKE! Collection-independent Automatic Keyword Extractor
Proceedings of the 40th European Conference on Information Retrieval (ECIR'18), Grenoble, France. March 26 – 29

Usage
---------

Installation
************************

```bash
docker pull feupinfolab/yake:latest
```


Command line arguments:
************************

How to use it on your favorite command line::

```bash
	Usage: docker run feupinfolab/yake:latest [OPTIONS]

	Options:
	-ti, --text_input TEXT          Input text, SURROUNDED by single quotes(')
	-i, --input_file TEXT           Input file  [required]
	-l, --language TEXT             Language
	-n, --ngram-size INTEGER        Max size of the ngram.
	-df, --dedup-func [leve|jaro|seqm]
									Deduplication function.
	-dl, --dedup-lim FLOAT          Deduplication limiar.
	-ws, --window-size INTEGER      Window size.
	-t, --top INTEGER               Number of keyphrases to extract
	-v, --verbose
	--help                          Show this message and exit
```
