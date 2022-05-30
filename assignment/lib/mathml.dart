import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';


class Assignment {
 

  static TeXViewWidget quadraticEquation =
      _teXViewWidget(r"""
Latex version  $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$<br>""");


  static TeXViewWidget mathML =
      _teXViewWidget(r"""
Mathml
   
<mrow>
  <mi>x</mi>
  <mo>=</mo>
  <mfrac>
    <mrow>
      <mrow>
        <mo>-</mo>
        <mi>b</mi>
      </mrow>
      <mo>&PlusMinus;</mo>
      <msqrt>
        <mrow>
          <msup>
            <mi>b</mi>
            <mn>2</mn>
          </msup>
          <mo>-</mo>
          <mrow>
            <mn>4</mn>
            <mo>&InvisibleTimes;</mo>
            <mi>a</mi>
            <mo>&InvisibleTimes;</mo>
            <mi>c</mi>
          </mrow>
        </mrow>
      </msqrt>
    </mrow>
    <mrow>
      <mn>2</mn>
      <mo>&InvisibleTimes;</mo>
      <mi>a</mi>
    </mrow>
  </mfrac>
</mrow>
""");


  static TeXViewWidget _teXViewWidget( String body) {
    return TeXViewColumn(
        style: const TeXViewStyle(
            margin: TeXViewMargin.all(10),
            padding: TeXViewPadding.all(10),
            borderRadius: TeXViewBorderRadius.all(10),
            border: TeXViewBorder.all(TeXViewBorderDecoration(
                borderWidth: 2,
                borderStyle: TeXViewBorderStyle.groove,
                borderColor: Colors.green))),
        children: [
      
          TeXViewDocument(body,
              style: const TeXViewStyle(margin: TeXViewMargin.only(top: 10)))
        ]);
  }
}

class TeXViewDocumentExamples extends StatelessWidget {
  final TeXViewRenderingEngine renderingEngine;

  const TeXViewDocumentExamples(
      {Key? key, this.renderingEngine = const TeXViewRenderingEngine.katex()})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Assignment"),
      ),
      body: TeXView(
        renderingEngine: renderingEngine,
        child: TeXViewColumn(children: [
          
          Assignment.mathML,
          Assignment.quadraticEquation,
          
       
        ]),
      
      ),
    );
  }
}
