cwlVersion: v1.0
class: CommandLineTool
baseCommand: /metaphlan/plotting_scripts/metaphlan2graphlan.py
hints:
  - class: DockerRequirement
    dockerPull: stevetsa/metaphlan:2  
inputs:
  profOut:
    type: File
    inputBinding:
      position: 1
  treefile:
    type: string
    inputBinding:
      position: 2
      prefix: --tree_file
  annotfile:
    type: string
    inputBinding:
      position: 3
      prefix: --annot_file
outputs:
  TreeOut:
    type: File
    outputBinding:
      glob: "*.tree.txt"
  AnnotOut:
    type: File
    outputBinding:
      glob: "*.annot.txt"    
