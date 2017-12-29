cwlVersion: v1.0
class: CommandLineTool
baseCommand: /graphlan/graphlan.py
hints:
  - class: DockerRequirement
    dockerPull: stevetsa/metaphlan:2
inputs:
  dpi:
    type: int
    inputBinding:
      position: 1
      prefix: --dpi
  xmlfile:
    type: File
    inputBinding:
      position: 2
  pngfile:
    type: string
    inputBinding:
      position: 3
outputs:
  graphlanOut:
    type: File
    outputBinding:
      glob: "*.png"
