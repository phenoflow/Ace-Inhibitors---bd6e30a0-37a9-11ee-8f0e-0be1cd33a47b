cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ace---primary:
    run: ace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  ace-inhibitors-025mg---primary:
    run: ace-inhibitors-025mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ace---primary/output
  ace-inhibitors-dorzolamide---primary:
    run: ace-inhibitors-dorzolamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-025mg---primary/output
  ace-inhibitors-375mg---primary:
    run: ace-inhibitors-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-dorzolamide---primary/output
  ace-inhibitors-tablet---primary:
    run: ace-inhibitors-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-375mg---primary/output
  ace-inhibitors-tartrate---primary:
    run: ace-inhibitors-tartrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-tablet---primary/output
  ace-inhibitors-250mg---primary:
    run: ace-inhibitors-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-tartrate---primary/output
  ace-inhibitors-cobetaloc---primary:
    run: ace-inhibitors-cobetaloc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-250mg---primary/output
  ace-inhibitors-betim---primary:
    run: ace-inhibitors-betim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-cobetaloc---primary/output
  ace-inhibitors-glauopt---primary:
    run: ace-inhibitors-glauopt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-betim---primary/output
  ace-inhibitors-vivacor---primary:
    run: ace-inhibitors-vivacor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-glauopt---primary/output
  ace-inhibitors-glaucol---primary:
    run: ace-inhibitors-glaucol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-vivacor---primary/output
  ace-inhibitors-rapranol---primary:
    run: ace-inhibitors-rapranol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-glaucol---primary/output
  ace-inhibitors-propanix---primary:
    run: ace-inhibitors-propanix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-rapranol---primary/output
  sectral-ace-inhibitors---primary:
    run: sectral-ace-inhibitors---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-propanix---primary/output
  ace-inhibitors-propatard---primary:
    run: ace-inhibitors-propatard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: sectral-ace-inhibitors---primary/output
  ace-inhibitors-160mg---primary:
    run: ace-inhibitors-160mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-propatard---primary/output
  ace-inhibitors-timolol---primary:
    run: ace-inhibitors-timolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-160mg---primary/output
  ace-inhibitors-bipranix---primary:
    run: ace-inhibitors-bipranix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-timolol---primary/output
  ace-inhibitors-arbralene---primary:
    run: ace-inhibitors-arbralene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-bipranix---primary/output
  ace-inhibitors-bedranol---primary:
    run: ace-inhibitors-bedranol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-arbralene---primary/output
  inderal-ace-inhibitors---primary:
    run: inderal-ace-inhibitors---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-bedranol---primary/output
  ace-inhibitors---primary:
    run: ace-inhibitors---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: inderal-ace-inhibitors---primary/output
  ace-inhibitors-congescor---primary:
    run: ace-inhibitors-congescor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: ace-inhibitors---primary/output
  ace-inhibitors-bisoprolol---primary:
    run: ace-inhibitors-bisoprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-congescor---primary/output
  ace-inhibitors-sotalol---primary:
    run: ace-inhibitors-sotalol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-bisoprolol---primary/output
  ace-inhibitors-propranolol---primary:
    run: ace-inhibitors-propranolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-sotalol---primary/output
  ace-inhibitors-cosopt---primary:
    run: ace-inhibitors-cosopt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-propranolol---primary/output
  ace-inhibitors-carvedilol---primary:
    run: ace-inhibitors-carvedilol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-cosopt---primary/output
  ace-inhibitors-alpharma---primary:
    run: ace-inhibitors-alpharma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-carvedilol---primary/output
  ace-inhibitors-corgard---primary:
    run: ace-inhibitors-corgard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-alpharma---primary/output
  corgaretic-ace-inhibitors---primary:
    run: corgaretic-ace-inhibitors---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-corgard---primary/output
  ace-inhibitors-betacardone---primary:
    run: ace-inhibitors-betacardone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: corgaretic-ace-inhibitors---primary/output
  ace-inhibitors-100mg---primary:
    run: ace-inhibitors-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-betacardone---primary/output
  ace-inhibitors-400mg---primary:
    run: ace-inhibitors-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-100mg---primary/output
  ace-inhibitors-apsolox---primary:
    run: ace-inhibitors-apsolox---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-400mg---primary/output
  ace-inhibitors-bioglan---primary:
    run: ace-inhibitors-bioglan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-apsolox---primary/output
  ace-inhibitors-betaprograne---primary:
    run: ace-inhibitors-betaprograne---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-bioglan---primary/output
  ace-inhibitors-lennon---primary:
    run: ace-inhibitors-lennon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-betaprograne---primary/output
  ace-inhibitors-genus---primary:
    run: ace-inhibitors-genus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-lennon---primary/output
  ace-inhibitors-brevibloc---primary:
    run: ace-inhibitors-brevibloc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-genus---primary/output
  ace-inhibitors-esmolol---primary:
    run: ace-inhibitors-esmolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-brevibloc---primary/output
  ace-inhibitors-tenchlor---primary:
    run: ace-inhibitors-tenchlor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-esmolol---primary/output
  ace-inhibitors-soloc---primary:
    run: ace-inhibitors-soloc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-tenchlor---primary/output
  ace-inhibitors-lagap---primary:
    run: ace-inhibitors-lagap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-soloc---primary/output
  ace-inhibitors-200mg---primary:
    run: ace-inhibitors-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-lagap---primary/output
  teoptic-ace-inhibitors---primary:
    run: teoptic-ace-inhibitors---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-200mg---primary/output
  ace-inhibitors-hillcross---primary:
    run: ace-inhibitors-hillcross---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: teoptic-ace-inhibitors---primary/output
  ace-inhibitors-sandoz---primary:
    run: ace-inhibitors-sandoz---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-hillcross---primary/output
  ace-inhibitors-martindale---primary:
    run: ace-inhibitors-martindale---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-sandoz---primary/output
  ace-inhibitors-clopamide---primary:
    run: ace-inhibitors-clopamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-martindale---primary/output
  ace-inhibitors-cyclopenthiazide---primary:
    run: ace-inhibitors-cyclopenthiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-clopamide---primary/output
  ace-inhibitors-levobunolol---primary:
    run: ace-inhibitors-levobunolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-cyclopenthiazide---primary/output
  ace-inhibitors-atenixco---primary:
    run: ace-inhibitors-atenixco---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-levobunolol---primary/output
  ace-inhibitors-mepranix---primary:
    run: ace-inhibitors-mepranix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-atenixco---primary/output
  ace-inhibitors-neolab---primary:
    run: ace-inhibitors-neolab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-mepranix---primary/output
  betoptic-ace-inhibitors---primary:
    run: betoptic-ace-inhibitors---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-neolab---primary/output
  ace-inhibitors-metipranolol---primary:
    run: ace-inhibitors-metipranolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: betoptic-ace-inhibitors---primary/output
  ace-inhibitors-glauline---primary:
    run: ace-inhibitors-glauline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-metipranolol---primary/output
  ace-inhibitors-lopresor---primary:
    run: ace-inhibitors-lopresor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-glauline---primary/output
  ace-inhibitors-oxprenolol---primary:
    run: ace-inhibitors-oxprenolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-lopresor---primary/output
  ace-inhibitors-trasicor---primary:
    run: ace-inhibitors-trasicor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-oxprenolol---primary/output
  ace-inhibitors-sotacor---primary:
    run: ace-inhibitors-sotacor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-trasicor---primary/output
  ace-inhibitors-maleate---primary:
    run: ace-inhibitors-maleate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-sotacor---primary/output
  ace-inhibitors-amiloride---primary:
    run: ace-inhibitors-amiloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-maleate---primary/output
  ace-inhibitors-monocor---primary:
    run: ace-inhibitors-monocor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-amiloride---primary/output
  ace-inhibitors-emcor---primary:
    run: ace-inhibitors-emcor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-monocor---primary/output
  ace-inhibitors-minim---primary:
    run: ace-inhibitors-minim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-emcor---primary/output
  ace-inhibitors-antipressan---primary:
    run: ace-inhibitors-antipressan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-minim---primary/output
  ace-inhibitors-nifedipine---primary:
    run: ace-inhibitors-nifedipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-antipressan---primary/output
  ace-inhibitors-betaxolol---primary:
    run: ace-inhibitors-betaxolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-nifedipine---primary/output
  ace-inhibitors-carteolol---primary:
    run: ace-inhibitors-carteolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-betaxolol---primary/output
  ace-inhibitors-betagan---primary:
    run: ace-inhibitors-betagan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-carteolol---primary/output
  ace-inhibitors-vasaten---primary:
    run: ace-inhibitors-vasaten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-betagan---primary/output
  ace-inhibitors-totamol---primary:
    run: ace-inhibitors-totamol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-vasaten---primary/output
  ace-inhibitors-drops---primary:
    run: ace-inhibitors-drops---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-totamol---primary/output
  ace-inhibitors-timoptol---primary:
    run: ace-inhibitors-timoptol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-drops---primary/output
  ace-inhibitors-dupromex---primary:
    run: ace-inhibitors-dupromex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-timoptol---primary/output
  ace-inhibitors-syprol---primary:
    run: ace-inhibitors-syprol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-dupromex---primary/output
  totaretic-ace-inhibitors---primary:
    run: totaretic-ace-inhibitors---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-syprol---primary/output
  ace-inhibitors-ratiopharm---primary:
    run: ace-inhibitors-ratiopharm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: totaretic-ace-inhibitors---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-ratiopharm---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
