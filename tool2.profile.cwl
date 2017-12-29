cwlVersion: v1.0
class: CommandLineTool
baseCommand: /metaphlan/metaphlan.py
stdout: $(inputs.outFileName)
hints:
  - class: DockerRequirement
    dockerPull: stevetsa/metaphlan:2  
inputs:
  fileToSearch:
    type: stdin
  bowtie2db:
    type: string
    inputBinding:
      position: 1
      prefix: --bowtie2db
  bowtie2exe:
    type: string
    inputBinding:
      position: 2
      prefix: --bowtie2_exe
  bt2:
    type: string
    inputBinding:
      position: 3
      prefix: --bt2_ps
  inputtype:
    type: string
    inputBinding:
      position: 4
      prefix: --input_type
  bowtie2out:
    type: string
    inputBinding:
      position: 5
      prefix: --bowtie2out
  outFileName:
    type: string      
outputs:
  profileOut:
    type: stdout
