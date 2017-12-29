# Metaphlan-ISBCGC
The goal of this workflow is to create a cladogram (tree) image (.PNG) from a metagenomic sequencing sample (.FASTQ) using MetaPhlAn and GraPhlAn tools.   
https://bitbucket.org/nsegata/metaphlan/wiki/MetaPhlAn_Pipelines_Tutorial
http://huttenhower.sph.harvard.edu/metaphlan


In unix, the commands would be run as below - 
Input file - retrieve the following from SRA - SRS020336.tar.bz2 and save to metaphlan installation root directory

## Step 1. Uncompress the sequencing file<br>
## Step 2. Profile metagenomics sample<br>
tar xjf SRS020336.tar.bz2 --to-stdout | metaphlan/metaphlan.py --bowtie2db bowtie2db/mpa --bt2_ps very-sensitive --input_type multifastq --bowtie2out BM_SRS020336.bt2out > profiled_samples/BM_SRS020336.txt
<br>
## Step 3. Prepare for graphing<br>
metaphlan/plotting_scripts/metaphlan2graphlan.py profiled_samples/BM_SRS020336.txt --tree_file tmp/BM_SRS020336.tree.txt --annot_file tmp/BM_SRS020336.annot.txt
<br>
## Step 4. Annotate graphics<br>
graphlan/graphlan_annotate.py --annot tmp/BM_BM_SRS020336.annot.txt tmp/BM_BM_SRS020336.tree.txt tmp/BM_BM_SRS020336.xml
<br>
## Step 5 Graphing<br>
graphlan/graphlan.py --dpi 200 tmp/BM_BM_SRS020336.xml output_images/BM_SRS020336.png

Set up VM for running cwl -
sudo apt-get install python-setuptools python-dev build-essential python-pip
pip install cwlref-runner
gsutil cp -r gs://metaphlan-inputs .

sudo apt-get install \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual \
    docker.io

sudo docker run hello-world
