cwlVersion: v1.0
class: CommandLineTool
baseCommand: /graphlan/graphlan_annotate.py
hints:
  - class: DockerRequirement
    dockerPull: stevetsa/metaphlan:2  
inputs:
  annotfile2:
    type: File
    inputBinding:
      position: 1
      prefix: --annot
  treefile2:
    type: File
    inputBinding:
      position: 2
  annotOutName:
    type: string
    inputBinding:
      position: 3
outputs:
  annotateOut:
    type: File
    outputBinding:
      glob: "*.xml"
