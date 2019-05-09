(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.3' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[     90828,       1658]
NotebookOptionsPosition[     90807,       1646]
NotebookOutlinePosition[     91180,       1662]
CellTagsIndexPosition[     91137,       1659]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{
  RowBox[{"data", " ", "=", " ", 
   RowBox[{"Normal", "[", 
    RowBox[{
     RowBox[{"EntityClass", "[", 
      RowBox[{"\"\<Language\>\"", ",", 
       RowBox[{"\"\<TotalSpeakers\>\"", "\[Rule]", 
        RowBox[{"GreaterThan", "[", "50000000", "]"}]}]}], "]"}], "[", 
     RowBox[{"\"\<TotalSpeakers\>\"", ",", "\"\<EntityAssociation\>\""}], 
     "]"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"data", " ", "=", " ", 
   RowBox[{"data", "/.", "\[VeryThinSpace]", 
    RowBox[{"Rule", "\[Rule]", "List"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"data", " ", "=", " ", 
   RowBox[{"Transpose", "[", " ", "data", "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"TextTranslation", "[", 
    RowBox[{"\"\<Thank you\>\"", ",", "#"}], "]"}], "&"}], "/@", 
  RowBox[{"data", " ", "[", 
   RowBox[{"[", "1", "]"}], "]"}]}]}], "Input",
 CellChangeTimes->{{3.7520349748382688`*^9, 3.7520349977148895`*^9}, {
  3.7520351211438675`*^9, 3.7520352044955*^9}, {3.752035259152089*^9, 
  3.752035279782857*^9}, {3.7520357698111362`*^9, 
  3.752035773492279*^9}},ExpressionUUID->"62e69ee4-cd21-45b2-b325-\
150bc7df5247"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"\:8b1d\:8b1d\"\>", ",", "\<\"Thank you\"\>", 
   ",", "\<\"\:0927\:0928\:094d\:092f\:0935\:093e\:0926\"\>", 
   ",", "\<\"Gracias\"\>", 
   ",", "\<\"\:0421\:043f\:0430\:0441\:0438\:0431\:043e\"\>", 
   ",", "\<\"Obrigado\"\>", ",", "\<\"Terima kasih\"\>", 
   ",", "\<\"\:09a7\:09a8\:09cd\:09af\:09ac\:09be\:09a6\"\>", 
   ",", "\<\"\:0634\:0643\:0631\:0627\"\>", ",", "\<\"terima kasih\"\>", ",", 
   RowBox[{"TextTranslation", "[", 
    RowBox[{"\<\"Thank you\"\>", ",", 
     TemplateBox[{"\"Local Malay\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"LocalMalay\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"LocalMalay\\\"]\"","\"language\""},
      "Entity"]}], "]"}], ",", "\<\"\:3042\:308a\:304c\:3068\:3046\"\>", 
   ",", "\<\"Merci\"\>", ",", "\<\"Danke\"\>", 
   ",", "\<\"\:0634\:06a9\:0631\:064a\:0627\"\>", ",", "\<\"\:8b1d\:8b1d\"\>",
    ",", 
   RowBox[{"TextTranslation", "[", 
    RowBox[{"\<\"Thank you\"\>", ",", 
     TemplateBox[{"\"Javanese\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Javanese\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Javanese\\\"]\"","\"language\""},
      "Entity"]}], "]"}], ",", "\<\"Te\:015fekk\[UDoubleDot]r ederiz\"\>", 
   ",", "\<\"\:0c27\:0c28\:0c4d\:0c2f\:0c35\:0c3e\:0c26\:0c3e\:0c32\:0c41\"\>\
", ",", 
   RowBox[{"TextTranslation", "[", 
    RowBox[{"\<\"Thank you\"\>", ",", 
     TemplateBox[{"\"Marathi\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Marathi\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Marathi\\\"]\"","\"language\""},
      "Entity"]}], "]"}], ",", "\<\"C\:1ea3m \:01a1n b\:1ea1n\"\>", 
   ",", "\<\"\:ac10\:c0ac\:d569\:b2c8\:b2e4\"\>", 
   ",", "\<\"\:0ba8\:0ba9\:0bcd\:0bb1\:0bbf\"\>", 
   ",", "\<\"\:0e02\:0e2d\:0e1a\:0e04\:0e38\:0e13\"\>", ",", 
   RowBox[{"TextTranslation", "[", 
    RowBox[{"\<\"Thank you\"\>", ",", 
     TemplateBox[{"\"Western Panjabi\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"PanjabiWestern\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"PanjabiWestern\\\"]\"","\"language\""},
      "Entity"]}], "]"}], ",", "\<\"Grazie\"\>", 
   ",", "\<\"\:8b1d\:8b1d\"\>"}], "}"}]], "Output",
 CellChangeTimes->{3.752035177000946*^9, 3.7520352428888865`*^9, 
  3.752035307870319*^9, 3.7520353945604258`*^9, 3.7520354693283443`*^9},
 CellLabel->"Out[34]=",ExpressionUUID->"8bbdefdb-117a-4ce5-949a-def5e6a6f4a8"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Transpose", "[", "data", "]"}]], "Input",
 CellChangeTimes->{{3.7520361739759026`*^9, 3.752036176767466*^9}},
 CellLabel->"In[66]:=",ExpressionUUID->"14e90666-411d-4b9c-ab69-ff0c9d72a645"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Mandarin\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"ChineseMandarin\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"ChineseMandarin\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"1.10716223`2.*^9","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"English\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"English\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"English\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"7.6`2.*^8","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Hindi\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Hindi\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Hindi\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"4.9`2.*^8","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Spanish\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Spanish\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Spanish\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"4.17`2.*^8","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Russian\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Russian\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Russian\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"2.77`2.*^8","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Portuguese\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Portuguese\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Portuguese\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"2.4`2.*^8","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Indonesian\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Indonesian\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Indonesian\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"2.4`2.*^8","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Bengali\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Bengali\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Bengali\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"2.3`2.*^8","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Arabic\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Arabic\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Arabic\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"2.21`2.*^8","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Malay\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Malay\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Malay\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"1.7`2.*^8","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Local Malay\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"LocalMalay\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"LocalMalay\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"1.7`2.*^8","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Japanese\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Japanese\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Japanese\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"1.3`2.*^8","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"French\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"French\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"French\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"1.28`2.*^8","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"German\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"German\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"German\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"1.27`2.*^8","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Urdu\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Urdu\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Urdu\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"1.04`2.*^8","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Wu Chinese\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"ChineseWu\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"ChineseWu\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"7.7175`2.*^7","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Javanese\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Javanese\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Javanese\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"7.55083`2.*^7","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Turkish\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Turkish\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Turkish\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"7.`2.*^7","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Telugu\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Telugu\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Telugu\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"6.9688278`2.*^7","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Marathi\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Marathi\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Marathi\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"6.8049787`2.*^7","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Vietnamese\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Vietnamese\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Vietnamese\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"6.7439139`2.*^7","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Korean\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Korean\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Korean\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"6.701969`2.*^7","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Tamil\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Tamil\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Tamil\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"6.60202`2.*^7","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Thai\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Thai\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Thai\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"6.3`2.*^7","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Western Panjabi\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"PanjabiWestern\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"PanjabiWestern\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"6.0812093`2.*^7","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Italian\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"Italian\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"Italian\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"6.`2.*^7","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"\"Cantonese\"",RowBox[{"Entity", "[", 
         RowBox[{"\"Language\"", ",", "\"ChineseYue\""}], "]"}],
       "\"Entity[\\\"Language\\\", \\\"ChineseYue\\\"]\"","\"language\""},
      "Entity"], ",", 
     TemplateBox[{"5.4810598`2.*^7","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{3.7520361772521763`*^9},
 CellLabel->"Out[66]=",ExpressionUUID->"6caca808-8d37-4e55-833d-0bf84ea682e2"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Speakers", "=", " ", 
   RowBox[{"{", 
    RowBox[{
     TemplateBox[{"1.10716223`2.*^9","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"7.6`2.*^8","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"4.9`2.*^8","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"4.17`2.*^8","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"2.77`2.*^8","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"2.4`2.*^8","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"2.4`2.*^8","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"2.3`2.*^8","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"2.21`2.*^8","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"1.7`2.*^8","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"1.3`2.*^8","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"1.28`2.*^8","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"1.27`2.*^8","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"1.04`2.*^8","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"7.7175`2.*^7","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"7.`2.*^7","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"6.9688278`2.*^7","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"6.7439139`2.*^7","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"6.701969`2.*^7","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"6.60202`2.*^7","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"6.3`2.*^7","\"people\"","people","\"People\""},
      "Quantity"], ",", 
     TemplateBox[{"6.`2.*^7","\"people\"","people","\"People\""},
      "Quantity"]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Words", "=", 
   RowBox[{"{", 
    RowBox[{
    "\"\<\:8c22\:8c22\>\"", ",", "\"\<Thank you\>\"", ",", 
     "\"\<\:0927\:0928\:094d\:092f\:0935\:093e\:0926\>\"", ",", 
     "\"\<Gracias\>\"", ",", 
     "\"\<\:0421\:043f\:0430\:0441\:0438\:0431\:043e\>\"", ",", 
     "\"\<Obrigado\>\"", ",", "\"\<Terima kasih\>\"", ",", 
     "\"\<\:09a7\:09a8\:09cd\:09af\:09ac\:09be\:09a6\>\"", ",", 
     "\"\<\:0634\:0643\:0631\:0627\>\"", ",", "\"\<terima kasih\>\"", ",", 
     "\"\<\:3042\:308a\:304c\:3068\:3046\>\"", ",", "\"\<Merci\>\"", ",", 
     "\"\<Danke\>\"", ",", "\"\<\:0634\:06a9\:0631\:064a\:0627\>\"", ",", 
     "\"\<\:8b1d\:8b1d\>\"", ",", "\"\<Te\:015fekk\[UDoubleDot]r ederiz\>\"", 
     ",", "\"\<\:0c27\:0c28\:0c4d\:0c2f\:0c35\:0c3e\:0c26\:0c3e\:0c32\:0c41\>\
\"", ",", "\"\<C\:1ea3m \:01a1n b\:1ea1n\>\"", ",", 
     "\"\<\:ac10\:c0ac\:d569\:b2c8\:b2e4\>\"", ",", 
     "\"\<\:0ba8\:0ba9\:0bcd\:0bb1\:0bbf\>\"", ",", 
     "\"\<\:0e02\:0e2d\:0e1a\:0e04\:0e38\:0e13\>\"", ",", "\"\<Grazie\>\""}], 
    "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"WordCloud", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"QuantityMagnitude", "[", "Speakers", "]"}], "\[Rule]", " ", 
    "Words"}], ",", 
   RowBox[{"WordOrientation", "\[Rule]", "\"\<HorizontalVertical\>\""}], ",", 
   RowBox[{"RandomSeeding", "\[Rule]", "\"\<yingkailiu\>\""}]}], 
  "]"}]}], "Input",
 CellChangeTimes->{{3.7520355978789415`*^9, 3.7520356209252825`*^9}, {
   3.752035699635989*^9, 3.7520357606566353`*^9}, {3.7520358003114843`*^9, 
   3.7520358497149954`*^9}, 3.7520358878046284`*^9, {3.752036027556242*^9, 
   3.7520360370789957`*^9}, {3.752036112449176*^9, 3.7520361559760723`*^9}, {
   3.7520361966982985`*^9, 3.752036202108818*^9}, {3.7520362383853283`*^9, 
   3.7520362629885225`*^9}, {3.7520363739790974`*^9, 3.752036468315841*^9}},
 CellLabel->"In[1]:=",ExpressionUUID->"da84fbf2-c135-4f17-9020-0bdd4c2d7e03"],

Cell[BoxData[
 GraphicsBox[{InsetBox[
    StyleBox["\<\"Thank you\"\>",
     StripOnInput->False,
     FontSize->Scaled[0.19573593158468566`],
     FontColor->RGBColor[0.880722, 0.611041, 0.142051]], {0, 0}, Center, 
    Automatic], InsetBox[
    StyleBox["\<\"\:8c22\:8c22\"\>",
     StripOnInput->False,
     FontSize->Scaled[0.2734375],
     FontColor->RGBColor[0.368417, 0.506779, 0.709798]], {-0.5, 43.5}, Center,
     Automatic], InsetBox[
    StyleBox["\<\"Terima kasih\"\>",
     StripOnInput->False,
     FontSize->Scaled[0.11739921579234176`],
     FontColor->RGBColor[0.528488, 0.470624, 0.701351]], {-0.5, -35.5}, 
    Center, Automatic], InsetBox[
    StyleBox[
     RotationBox["\<\"\:0927\:0928\:094d\:092f\:0935\:093e\:0926\"\>",
      BoxRotation->1.5707963267948966`],
     StripOnInput->False,
     FontSize->Scaled[0.1353047508305918],
     FontColor->RGBColor[0.560181, 0.691569, 0.194885]], {96.5, -40.5}, 
    Center, Automatic], InsetBox[
    StyleBox[
     RotationBox["\<\"Gracias\"\>",
      BoxRotation->1.5707963267948966`],
     StripOnInput->False,
     FontSize->Scaled[0.11896595010818864`],
     FontColor->RGBColor[0.922526, 0.385626, 0.209179]], {123.5, 3.5}, Center,
     Automatic], InsetBox[
    StyleBox[
     RotationBox["\<\"Obrigado\"\>",
      BoxRotation->1.5707963267948966`],
     StripOnInput->False,
     FontSize->Scaled[0.07934995383606894],
     FontColor->RGBColor[0.363898, 0.618501, 0.782349]], {77.5, 53.5}, Center,
     Automatic], InsetBox[
    StyleBox["\<\"\:0421\:043f\:0430\:0441\:0438\:0431\:043e\"\>",
     StripOnInput->False,
     FontSize->Scaled[0.08763126379126088],
     FontColor->RGBColor[0.772079, 0.431554, 0.102387]], {-0.5, -57.5}, 
    Center, Automatic], InsetBox[
    StyleBox["\<\"\:09a7\:09a8\:09cd\:09af\:09ac\:09be\:09a6\"\>",
     StripOnInput->False,
     FontSize->Scaled[0.07711176195628733],
     FontColor->RGBColor[1, 0.75, 0]], {-11.5, -69.5}, Center, Automatic], 
   InsetBox[
    StyleBox[
     RotationBox["\<\"Te\:015fekk\[UDoubleDot]r ederiz\"\>",
      BoxRotation->1.5707963267948966`],
     StripOnInput->False,
     FontSize->Scaled[0.04130069187978161],
     FontColor->RGBColor[0.28026441037696703`, 0.715, 0.4292089322474965]], {-73.5, 60.5},
     Center, Automatic], InsetBox[
    StyleBox["\<\"\:0c27\:0c28\:0c4d\:0c2f\:0c35\:0c3e\:0c26\:0c3e\:0c32\:0c41\
\"\>",
     StripOnInput->False,
     FontSize->Scaled[0.04123092251486668],
     FontColor->RGBColor[
      0.838355547812947, 0.44746667828057946`, 0.0208888695323676]], {-62.5, -52.5},
     Center, Automatic], InsetBox[
    StyleBox["\<\"\:3042\:308a\:304c\:3068\:3046\"\>",
     StripOnInput->False,
     FontSize->Scaled[0.05472984315847125],
     FontColor->RGBColor[0.571589, 0.586483, 0.]], {37.5, -75.5}, Center, 
    Automatic], InsetBox[
    StyleBox["\<\"C\:1ea3m \:01a1n b\:1ea1n\"\>",
     StripOnInput->False,
     FontSize->Scaled[0.040727522050236664`],
     FontColor->RGBColor[
      0.5833680111493557, 0.4126186601628758, 0.8290799721266107]], {-0.5, 83.5},
     Center, Automatic], InsetBox[
    StyleBox["\<\"\:0634\:0643\:0631\:0627\"\>",
     StripOnInput->False,
     FontSize->Scaled[0.07509738926448388],
     FontColor->RGBColor[0.647624, 0.37816, 0.614037]], {66.5, -56.5}, Center,
     Automatic], InsetBox[
    StyleBox["\<\"\:ac10\:c0ac\:d569\:b2c8\:b2e4\"\>",
     StripOnInput->False,
     FontSize->Scaled[0.040633641315658414`],
     FontColor->RGBColor[0.8996399512215667, 0.7463488834690629, 0.]], {-0.5, -91.5},
     Center, Automatic], InsetBox[
    StyleBox[
     RotationBox["\<\"\:0634\:06a9\:0631\:064a\:0627\"\>",
      BoxRotation->1.5707963267948966`],
     StripOnInput->False,
     FontSize->Scaled[0.04891054427103907],
     FontColor->RGBColor[
      0.9728288904374106, 0.621644452187053, 0.07336199581899142]], {30.5, -1.5},
     Center, Automatic], InsetBox[
    StyleBox["\<\"\:0ba8\:0ba9\:0bcd\:0bb1\:0bbf\"\>",
     StripOnInput->False,
     FontSize->Scaled[0.04040993627546612],
     FontColor->RGBColor[
      0.8439466852489265, 0.3467106629502147, 0.3309221912517893]], {-60.5, -65.5},
     Center, Automatic], InsetBox[
    StyleBox["\<\"\:0e02\:0e2d\:0e1a\:0e04\:0e38\:0e13\"\>",
     StripOnInput->False,
     FontSize->Scaled[0.03973395756393448],
     FontColor->RGBColor[
      0.28240003484173815`, 0.6090799721266095, 0.7538800418100857]], {-41.5, -83.5},
     Center, Automatic], InsetBox[
    StyleBox["\<\"Danke\"\>",
     StripOnInput->False,
     FontSize->Scaled[0.05405838559453677],
     FontColor->RGBColor[0.40082222609352647`, 0.5220066643438841, 0.85]], {5.5, 94.5},
     Center, Automatic], InsetBox[
    StyleBox["\<\"Merci\"\>",
     StripOnInput->False,
     FontSize->Scaled[0.05428220478251493],
     FontColor->RGBColor[0.915, 0.3325, 0.2125]], {-49.5, 84.5}, Center, 
    Automatic], InsetBox[
    StyleBox[
     RotationBox["\<\"\:8b1d\:8b1d\"\>",
      BoxRotation->1.5707963267948966`],
     StripOnInput->False,
     FontSize->Scaled[0.04290659455352491],
     FontColor->RGBColor[0.736782672705901, 0.358, 0.5030266573755369]], {92.5, 23.5},
     Center, Automatic], InsetBox[
    StyleBox[
     RotationBox["\<\"Grazie\"\>",
      BoxRotation->1.5707963267948966`],
     StripOnInput->False,
     FontSize->Scaled[0.0390625],
     FontColor->RGBColor[
      0.9324333565611593, 0.5282889043741062, 0.0921900209050434]], {-88.5, 36.5},
     Center, Automatic]},
  DefaultBaseStyle->{"Graphics", FontFamily -> "Helvetica"},
  Method->{
   "DefaultBoundaryStyle" -> Automatic, "DefaultPlotStyle" -> Automatic},
  PlotRange->{{-119., 137.}, {-106., 101.}}]], "Output",
 CellChangeTimes->{{3.7520358223467364`*^9, 3.7520358515213823`*^9}, 
   3.7520358883891706`*^9, {3.7520360283780437`*^9, 3.7520360386188765`*^9}, {
   3.752036089596754*^9, 3.752036114930298*^9}, 3.752036158000798*^9, {
   3.752036213180951*^9, 3.7520362446246634`*^9}, {3.75203638148102*^9, 
   3.7520364696103334`*^9}, 3.7521342204614615`*^9},
 CellLabel->"Out[3]=",ImageCache->GraphicsData["CompressedBitmap", "\<\
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
DNrrwYagYMQ+YGE+qe4R1gMbP2IZcZkaDKqWFzEJrHvPyZqsASjwXy85Bpse
wAtCJYtIGhziz00j3nmFvZGUcZzMlx/75qeJBW5zmWt1snBu8ra9avq6kmBf
DtqhGygO7J92zZ9VupvAPmh+1xTYr9IgNy3Yt6iE4rG/tO2GqN2btUDYAmCc
I4W0u/DZtK/dxblAsbgR0fhRxBcYPcjGr6XHnxDOysMC/Q38OTLAaoBm+Xlq
2QRbbTJcngDTxVnkb6CVcIEvrZPX2LpkT4yVLT1GSJWGOLIyHFI/b/5PbXWP
PZY8+9i3k32fupwRqxG47zHaPGq2zb9bpPYwmo1VYlpwZiA00/3ptawpy6ax
ML8zbhppe2QCObk6tcAMQTNsZyXt41NuOOZvdtHNMBbp/8zSJPYZRia4l3AZ
QuZNq4wrnKFnq3WZf/1BSTgeQ+2EldAA7dzF/LUsPI8l+/6SYGgsXHdkrRul
+kOC6Ke+vUDSLO381dvZU/k6J4o60a5PUjMdDMk8IpaLurIGAbqg086S2odf
I7R33Lwa8G8TRqrQ9pBJHbQHwvcx00VROpdT84WSODsatENXix3OPu1mkjpc
kY5/9ubLCV7eiy6s0R03P9Ykyoqt2/aktu1/f4wOCqQv/Z+v0jo126lRtU08
rXr6YysR2Y9NJ/544GXosX+f4KzCPSBOIxjYuhPdg2UE7Jv1sjIRj4IHccu0
G28S06/OZEj5ijJJm/XAoa/GQ/kin3Rf3y+iKWtLYv8o0K4JjNMPtYx9ymbj
zyQeGwJ4FnzacLCGQUOLSKATdBdNd+pTaEztWVVIgdwyPvXtHCmQCQkZ1dpO
9FPAdwiovgLHQVnDWb4yTkhrZ/pVS0ENjBtGRO33kXlifr+0JOaXUbtxX3IE
1ZKZPOZTMKMjqPdfCGU7zeh58bEdX7g6dlh/hYHj+KcuDwwbD9U2xMBOuz/9
sSNEIAP8zKQVAuDtcihC3IzmqCB/ekY3FwtBwXDsEBEpNoEQPNTa9KsWgjqY
X3CiTI8h9EQJIbgwuW/XaDKmfpaa3zX1e3WmoJJW/GOu3Sxu5w2hd05eMEIJ
oKbjn2LbyFGgN/hMf0L/1t2xQAlwqnbVCkPYCRQGvyN4bg3KjZtihDjR07so
kF2SttULsJ97IOWk/MzdplKTrBrhDdnOzRjFlc3vlwA0v1ao9MoRibZ+1RyD
0hv1Ggx1B5yUwZMAKyWZLCRD+CFI+tq+oOCHxtTOi0NzW7BwWLJGK6A9GzQL
1e+aVzITIhAzKTzOkqNEZlM18PjQIVRrsHM91XngNQJUWZ4+5jb5vsB7Yfkf
oIoAmJrEFAHQG+kIgE18BXjPWJAu4ozoIcDVZW1hLDDVHcbQKFVjrA+Myxpd
etuqxljOOSvDSdZvIgS87+bLG6ZN00MmBGcGWYGBiJFVbj5NR7b0bp9C1ayS
fKoB+g9MFl01HDNB14YpuTBnuKphNgCWWcuDGbIIK4CZREaG23S0SWUaqGZX
BSGCHZ/6dq6Kmow6mwLQgfSVhzaIaJVPG0YpMGWBVnDMmF9yuKqBJosGWytV
n/DGzB9XVYirhsCV4yrve/UgFKp4lXOc9rcxAy7SiUruwQUHhXIoamVTnMnc
gZUCgwsTOy2ZkS1eFk2I+4Kri0oOVzWazG/0NFAF6uhTV2lO2n0sDC0ik17x
iSbd/rmyVbiEx4Z8uKSL2Oqfi/3lwrLFKSfhOxch+5aLU5Z2eh5mrDQCDTDh
4tUcixabUcZzbRnI+iXnxJgXSanCF/EY8BC2gJlaHhask6Es7wogVbYW2+KS
wzVj/eUZ3ZOBlPSP3bB5dbJB/ZxrftdMpbBWYBZuNFyYQJ7qnG7qTUIrxOus
IFjodRIGUmhhZewxiw4CEvZNICD15e1V9js7V/nMCa8s2HtZEZDQviNmURZI
DdCf3+9APnX7QPLRhi+1DBquDyBDZC7zq8nMEf4p9TeOE4fbYx5owj2oxlSS
mRNvioWwc0Jks4ix4LaaUky9gJh8ZGsPM6i+KUpzixYSLThJBtNPX7KaMszU
AiAMuw1LxkEp813ayYZPn9I5sY8ZSWegqX+P33wVb3vWWvKJW/3m9zy7SU74
MVhLvdmnIAYBKTUWm0zyVKc32lQ2ThQ8OawRtYuQ5kEo+jRoZ36fPjVsYCio
JZM89kv7wqUqD5GzJUViJ2LWhq17J4vV8A3RE9kARYREMbUCov0ZtVvfTJ5Z
bz87gTXm7yT77nhfsvWj5ydbPrqgntz7noXq43vNP9XHd2xM9v3MvV+pMbk9
eea71yQ/Xvs+9WfV5D0LEvuVhvp9vvls61r19++qdhPiplPu98KhnvnZxI2t
MfJ/MoOsDGhm1B1ZDXM0htW50/vQLb59bkLTyZRkmmlTB3goTKbxVOcAiIhp
I+5c4to986VZii5zkh8rDp3InB1ItipaaUr1m981Q2dDqwnp3d+e/PijC5gT
tt37kn1uXC7r+7NrDO0d5W27j15j+tItqHyO5tVW19+wa6d5pKBgWiwA7YbA
/P6pNWZuTUul9K3nJG4IRw6n5SGdLyj+TqL4+oHkx/84y1Ckh2b/sZHkGdfu
eMCFQblKhXLd+yDgQpOodsd2nsu0klzw7TYydWdQf2s3crs5gAuo3RcmxwXa
HjT+c7gwF1AX+cYHxIp+vPZ8M8f5AV62B/jbt9auRlJo63cnWqYknYifueN8
7m+Wk5Ita307/aPbENfuVdSjz4fAWLMiYyEU6DX++GetzX2Eufs+MK6XxZli
3H2OtrPluA6lxzELDyQ/v39L8r3PfCW5bfVXasmX3nqdavql1V9JvnnrjuTn
qtF7uMv/kfwTOFBtCQHzwww4zHbmMRNYpvPkTub8j4FV56LkQ2D9iyLSUhVm
6OgpMTOHW3s+qvGaYJjB3K87tqWGkXDpjcCgaNrDsXHFtKeDcecBZcWZ2gYu
dyuoXKfE2GLlts9YnOgW/xe3uzr5XAYrb0juCbFyO1sE3xYHHGsV+arUGEeh
x+RE5rtf8BKw4JGkWnz0gnbzmYBeE9fBXBA45nE7D45ewKQ+MOfhknMeKjnu
CBh3gdhRaNxl1G73DqNHNCyGSZG8VSuSA6bFpZMDRxg4sC54clrKAE9OPuoJ
gOPLADeGK0ZGE1DvKEBl3g2VZqNxF5Tsrw/0VxYFgyXHHQLjkuaVKoJ8NXo3
+aZSD5r/M3g7uTt5dLdt92fVqQgukQxzKZ3pfvPl5AKWWcfHAW4PEK0+er47
6mzXZxB2kOh/fleZLHeYLWgQYGgI9FoJhgSPesXuo60WM0vpENKTVpu/MQPP
H4naJhvZkmUkqU3px+bstZ2dfaY7vWjF/X7AeZ/w5RGC2iHbCa16IHd+dWcf
platp2hNSd0tH42EikKqNljyd+2SQyputMt+z4IBwMMFDnxmO3yrxbv9UZbU
Z5RFdb/aKncf8D3qf+5IHr3ViEef0I/fc5JxCa+7lGX+I9dc6kf2IQgHzXGx
tYvjmWePN8v7AXuIllWDXPbHByZxcJEmteOLP4AJXvdH+pOmMh8HxIHJm+he
ocbgjYS/LLzh/MRBsi9Y7/m5234/GFfajmi9mXZivQsIsQqt3yQgy3fNDigQ
W8z3OhR/8/4DPJ13tYZivj9rfGoWyf7+qLkuZVocH1ulQLF3bvjjch9ACeJC
OyhGKEHH/kDK0mgS8+sD4yKpKOtuqIN2A2AdgyXXi1CHpAz114z0B7WAWAda
by9oxzVPBFybAK7vbA2u5h+xOci1k5tWat5egDG09mqw6DfQBmg3LTI/hEU5
vwageVkHJMLiIFjvQMn1Ivqh9SLTGGEMHer86R6vl8ZGO8hJ1E4fkJxp3GAs
+vW+ow0sSh4i+ZpTst2UYVG0Q9iZDsZFDjjEmxi2UTu5jprg4Y/BYX2rs4Tq
gK9l8Yl0OZILJI9obb2AVoim08DakJfqRa7dz2/9CpuxNWCglsUnJzOO6/cF
7RttDZduYa4njdurRn8ncIyMfoTPeYBGSIaRzpoqHMv+kEctpmPkOpCTKOYE
l3JRhOMf/8zSFeEE7eUxHCPcQZoW4K7sPjUjQnvZ7mRqJ45k3qO9hb2Uby+J
Yw4r6XcGN19ortEN8hW61QrLO8396SsAjqEMC1mfH6FREc2nyjaQ/THNhesB
YQfpIoRPxEM0v2IcT5g5NdKftYDj3ggNIO4ADeTaGpF2kqYzY7QS2DiF+tu9
JYPj2271tuvbSuKY7FB661W3mE71L/RDma4a24cFjpGTCMnwAkBz1C6Gk6rO
W4g3M8A6EI6bkXZQLkQ7pLfzcZwJHCHoIZOhbPwhPu24aU5khduSGHdWyXER
lHsY0Hcnj7YIZV6HU8m6xWyG8iiXs/grBGUkxmJNi8DaEaSqhjJygMV4iMaF
UEbjCl7Pcqsx/VHejfYoO2foMzliJnN8CMY0Fpo3wmgMy9gkSs+72HRCx0wk
+rNKtjuV2inz4kspLEu1/NaSWCZTcb+4oT8XFMn8EMByEVYWAZojeZ8qLENZ
E/kHMyI8hFgW/aFxl5XF6YTN7YjRoixO4TY+CR3pt4r4loKO8MjUOs1p8kc/
I6MS6uczO0qbvsRvWSlwQX6lQPOP6DFX0GUJoB+iC9KL1URkPZ3ZdWiCQNuD
/spis4gf+dhsZrDp5ha1UCYReG5H7dVi4wrx4dNSgaiexrPckXwzCJwZc6Cs
JUDZCRKhiwBCP4AQWnCoWRJpJzlbNUJ7wbj9Ailb1r7PRj/9Do2S2mJgLTIe
8sEaKqMeMNUaaNc6auN2+uzIOqA/pGDcOSXbka/357fezT7bo52ilQYBGbVl
Ycw+ZFEDcwmAMXrUHZ8jPe2XAppKHmk4aaVXtY8B9TeNOPpRgvFGCuIzr9rB
sJxnWQzXQH81sB7k+2sVw3J+syPrhRhGGlW0mwPGRRraY/gr7A/ztTEPJN+7
3GL4GPO7blMZfCZoTTS1aQxf4ZCabqazHh7dfcDb3S4fTCcL1sCZD5XlRCLC
IVPxTs4Atb57dbJhq3Up7x/fyRn59p/JmPF4XEhOO1n87f1CoMo6hJYymwlY
Xoie8bGYquVI4ng2t7bpP8Zo+e77kIt5qsQFTVv2Vy+5PLQ1tCwuyHVYsbiQ
etdqnxJhf/6ZG1jlr+CA3ldcaNmHnAdJlFZTBtwBLRPNNsTBR5/9UyF94tio
xUE+8WuOl6kqiPJ4CQUBmfCChHQUrjo1X0JwyWGANKe4CWjVABReWJCue4vF
7gIMvX+5iVF9lggAkueuEtgKQ4fgKD13Pqiu1Lez7WXdQmp3OYJtgQO+atj6
4Hv2VsLhgC1qV/roVtJrg2BbdMSbcthabYxge24bEB0A7ZpSs7oSmd4J7Q2S
JjAxLgMQLXJa0vskVUFUpm/vcxmyCw8DRFFMDJ0PpwqiHdes1uFG0JP2QiUQ
hU8mXMjwY+eOgCh6kwZBtOhYWTVE2d9mEo9tnjm6hFQ1RFF/6PjXU3IdyB8Y
c2F0BqIpd4U7Bh7l+nj0v15XCU69QeeNVPTkAu8oAM9Slb5P4DTm4JTrrRqn
XPviZ+5ygLvD7m7LT49Atsiz0Spks1NtBksyP7YNOsdWgtSqnW1FSHUoXMbb
i3Qf27/Nob+JaDNFPph0uw/wHSW2Z1ffbdLcnQrndnSKq5t2fXzCo0Sin/P8
zPj+lmRJ4ShQznShemzz6Swc6N1UJxwfom4fvz3Z+8Vzku2X1ZXueviyhvrs
4Y+rf3/x9uTZxyeSv4/JT8ZRX538LGTO0eWaa0x6pf7OQIvCUy6+EgoPMsFq
Tngk+toQHjmtSjzVk4ivkPDIbE7K4mThAYLFdX0zcRnzXe+MOsBJzCi5js9i
IONDJjvTrmqjlHYKLQtQwfOSfLu84IVtJ0D8btXjY0pQxoywHMufXWUESotT
g4TqsnOSnz5ou/g7sAkfDqGS4LdFVc6H9yHaD6RjYUIBdzluOjGktCSBhI+i
2FANtGsnkB6TJO8K9uIgpGm2+2o6Bq/zRLi6eiCE/NUBtw0FX/3MDjpQtSMv
RRvJ/Eg7aY39hZWX32eFfnvyUycbD3/8KnPzcKVbxbNfO8fJyZivG9wwIjb+
tUucSF1irvN2SoSOicBhMnlVZUUIRaNrvOr83KryIuT7aD0XpZrkgTIiFP6N
0U3mdiaNxW42/AhyytbTewy9ee97NiP6Uncksy2ZbX4HjL/RTVIEn7vfPJqW
Itp1xr/oJEiZaeGuc0my93HhUXE70favjXVcZNBuMpmsWh+pjosMSn+rUWua
X2umG7pkNBO0Q5JedbYsSUsIeSstnJOCMmmF/TUjV6pMP4NIbNzXM2JjP/di
Q4Zh22KDjDDOJEfGmtikUmJjN5iGMcS4qpESkZ+aE89VyfjjY16pjSV7P95Z
ybHU6LXpO9+1FQbMIeij5zO0Ygmuk7970euklQrz2aoHrsgFzBqLSWBuELjF
zQrdl4zl7MO8jJL3LorEeQSKnzW1uBStOB2hOxn+7tMB1c9XctuRlSflUP2d
3PUkgvorVNjGS/Qk5S/nwbC0/KF2+fJnt6NzzBbFl661B8IJmnwPptPCF/Mc
okz7sgIID1UFZbYmcxmV+kOXzIKwdYtCiA6M00E7ZOFVcokvc+jKPVhxYjty
Q4i7qtNi7T6zg4ejPW8idOWRHJIq0FZlndcrHCRu66xGGH27qDCKdmlh1Ccx
dwLzoBvjWjBkUz/7oNogv3iV+1wJprY9v3h7j+xGmZh6T+2UrEYDpqJdWdkq
m+PF8yuQ6VgMHskqjNWvfV/LEaVeMMa02NqA06aqi+NlZRXcY5Qm60jJdhzL
JllVcuwfsAnOdGSzppwoyzsrpq+XIvngJcn2j4ce+p9+7faglrduZ7wk6XbW
mSIwrcXeiDAbmEbEP+6OlObH958+Suq/2/6bpg/i74Sa48N2b68Tqx+/3ZjW
3K2dDr2f+Gz6z5f5uMPMyMxMm9TKYxSaw2zXFNLKTPXx8XNsp3Ub7vj4Jab5
+OMivzNOT8/OwxtZjOUvFdUMRroudlH/XlE8yOdaxXViWV2HagqiIkNIr0Vr
GaJL8gVFQfL1le0vU7BFzG+EZ5kKhVhlFLNBZIhjSLR71BnvdRBUD/KyndGf
0Wt2aCsf6QCO/Urryg0dyCet3F4nhGzvx2WkpEFKxFLGKZ0mC+Al/NagN7F8
H/R3+a7s+BfPyURiqH9+pvXBS1i5bWdbZ8L3rVQOA1u0pd/6oELt1XjNJBv0
GSlYstYrdslWPzfBdMkullpxMBhrLNSMKBAlSOgrKndIhxXYICOyXWZ+cUcD
ktV2CqAhHYZqeKIyiEiH+XagAFpBJfBYCejJFEBjHZbOhbCKZLGTtIybUNlU
3h7bwaVcA721G9lt9uwV6DJ3zsJKy7avRmmV9CJmldZrcxTO3gfJc9HP+RRk
q+x98KpAsSgDI6G41rNO0mUojJ9s+hr1cYl/pLLu/f5W2H2E7HY/Ixch47OE
t8sccTUrfBCOrCn9F6kGtS7h4ewqg4CcXOTjIg0nShz5PT2EjAVeot2vCV6S
HcMfNfwYZJpp4u598HYTi+dXHnVcXjFAM6Rm2vW5ccLdhRigPo/xhmI1hzvn
EdWVl1owXZRV1r1HWjBaVFTcbW6n6GlMW8r1xrQlSge2ru8s7bdG5ozKFFZS
CDXjCcDZZEvg36xJR67dn+8md69xBfvLE95LRc6Ln98KTrn6ay4pjTWoPGi7
k3FZDRpLApDBfa5MhZJrsn7g12Lt1iChM6qqwT/aqvJvQXiZV5/XwMfK0uI3
zbgnozkIoTJs6rNOnRJiE0983Up+jWCZmp/7cyO9KvvxUGYuwWLTnWk93ATz
5L35caEs/fl8gPk1Fqhv0pmyqxxaEhORfim6EbMEyILfftO1E/xVxH3fNaXH
aUYU4XJ1uVFF8OJK3xuzlb6328TBFoqRI8WFXsjoAwuPKq470sfIlqYt9W2b
BcpRPerpRI90mhGrr5TXbLcrJhCqGXOz962pu19OfVFpcXlDckWL6ghlSaBs
Cpi7lM2mOA8rETqdSNHh915DzcB3iNmSEDKeEbQmbt0XjGetNzZhnE7RqhAe
eF17/5gjaQkj/oOxFWY0Vk4nQ3njPo5Ptewtu8yfNBuYfnwALSieUVb1oAoX
iwDeh8C4C4ColY10I+dTVEMIs0NqCFJu82NzBo9rZKuKYrcP5c7oZHWyK1hd
C/OEnxxY7QWYq6prgXc2SKsCXJSvMQ/0h9Km0gIcClTg6nYg9A/CB9hmAQ5x
mbOlewGBCoM60S6fHMDXMjM2zUMVYMV9MDPj1OL0HOwmn/66nsBQegl2wYwO
mYfpRsyhETMFRWMFuMsKKTp/LARCj7bdeUAw8tOLc7xJmRdSygpp3c/P/m0e
kD+kCxYEMi6deVmvit4YSdbk37xMevv/glblD6QjSnuebpHAdMRsEnxG/izI
Z2AxydksfcqYR2SOSMj3dckt22RM5fk0xCH/i7cTJVgsVNNBvIyZqaahUAY7
+8y0tFvJ6cWEiLtdPWBbFSgZqlgA2qFiZfKlN0Ixci8igUIP6CGHA8rs5ORl
0Y4EbjaYU9nX52Y6qUpnAmupIhMUSZV8me6NJaWK6A6lRexqc0B/DdBfXKoI
jlLJ+1dlA41dTzWV512J5mbwmd1L5GYWhjlq7AkLQEKQn6QghcpgZmZBwES2
a0fuuFiBNnPjxRyN8NN+SLLQ83dzxVErnYUIn9xEgYqSklUU0ED2acE1tZny
pIheAr0DvATq2uGbKtZFxWnowuxk4RLJjH/YonChi49yy6Krc/LMh0zGVrcs
Iw01N5XAiHowiPVJfU/slTCVoUjKabTterMJEiLvgtYfFZoW5Es2zawzu1GZ
j9m9V1AN2Se8ehjSu8j+MfDt0PJDYucfX/FxPylO5PGeLcal1zz9O8Z4g4yJ
XSyPsaiqaw/or0esg8adxvPLvsdc9G6zv3aZzqEyMkgiKPc35EnmBEQTs7Of
c8HikqV5oIsF1JHPKz5BluRlKbEM9f4M/LHM/CG7ivcoEXPvw7BmkRShsYVA
dLMnMNM2R1dMVuKClfmnHuKRcZa4gjMZQiqSOPlyOD2OOE2MSyjk+f3Ml4gZ
FhK3L+KsaDXbuSjDkxwnKCtaxn8Gwfz4HXojcbbPofR6f0YOidwCtGjTa7BF
6c9pXP1TPHtL/tVWJQ9akcLajFUckk5QJ3mvTQFfbx7chbDtmo4Sz35NBhk4
qs13FEL0k6iZrclZj/xoYAj9HiJ1EELnfJy0TevnmTEiC3qq8e4bTDXY1Huk
NnHJPQN43r145Yywgr2EEsSKzNiXE4TowVZT/cZUE3Ht7U3QLa5oqn2Zla7L
1Y1kmwtE9jt1Fkm642OCMi8HOz7fFsg8Y2IfuuVe37Oghnr92fajXGsb4nHz
fo+fAz0oYB5rnViYJ3PW8YFkTmb104t9slpp+naN3A35JaCSpUXlaa8B5IpV
KZI/sfNdLuUvg+FpGbCZPUnmsmYiC71WOFxSrrRNNYTJyJCHwnQSP4E+fdjL
cd1MT3UZ3uFJdzmQkrQJsQqKFJh/c6qaSC+mE6D02yAXEe3jRemd6C0atNHe
Ajbk4PqM6+8/EWhxChWDNu9tk4xp5ttxOpW4ikJUNi8Ku42GI2wly0jDE5MA
MrXbv9W/OUHVFeUJzAH5dSluaA5NA5/NdVjK8a17CBssEBrJpPM7XCay3uOA
Iju2qT5j0qyry4H8+CPpabXUac2pCHnDVO6eWW+ksQK9gRpIeWZLsXOJbRXZ
V3mL37j02I6XhvwjUvkgOnwcK2t4rWOlG0J6DGpsJnklTFWWUPWXlTzNkuXR
UR0xgWt2242P8hNXfUCRv1/iOhUxcSzlG9KBL8AqM1LVqQCM5W2/BQ/pw8fd
tStKenOfE9BlYgyDDXkCax4ynM6SzsmzXeeEh8p2zSkx1LUWC+9FRN1IH4PQ
B9mDkGmODjitvvEo9f2toF0N6Ps8rGsX1vHub4H7a7VN5GKQonfYtG/Z5cey
MhdRnEKAuwrlI+Z3CFxp2dMJgLyCpqr5VlvReYBPCqg/Tyf7xrG7fdQIs45c
Ome//FsqRXO2+JtM39QACD3GMiM1PB9wLt1EmC7qcyBCV1canz5tLF1uJjt/
maur51i2fxYtmUJ6mc2aJWMppeubUBpT6RuSpF+8fSkAbezB3iJhuQ0YMyjj
9E1uqunQpBcCYOhY09tiuTeQEVvs33atP28CJY8yCV4rZCCFz/PdMCEGG/7e
l8CWrR9kb0z4m1w+DXiGaGdvVoTnP7p90ec0d+AOErc2pOb2/g/dp8VZcKZ0
36tzz75Pc4tDV6VIY6c3xE6w3LFgubFllBzS3/vzFEaGudwJggTEj4tUqCYL
8/ZwB0XFXGLPo0OEC/W9IcmaPnXQ339EqtyFCakygfybt9X5iYvQVl9tbfia
/CxtvwuV3yLcf1vAiUph9QcuituFwVAL1CZZ0DIoHl4OCNtJS5svwgg1N1f0
F4JAnM7UzyLQTgZDMlc2hauFb5AGSbK8TpxDa79+NECKvAdNsQPpeaSYF6ds
CU/HBtCfPCiSZ/SNDHTom+dyF8KpwZ7C1b6kKB0UIfhEO2QzRAD0u8Qgdx0i
OOhfdo67PjEmIoHeSJM6c6+7YUblT8L7uZYDHEEWoJlNYHB9SDBI0CwA7WYR
JIx2YRCEhyT+eDmNLjxYfYD/nF0kPMXoXulXwR7cy/qH3nTZSBnN2uf2hlwo
GFvxRKAjegEUlpGoOqcxb5fBzstVZtHxP4KI3wNcQpmbM3i7GAuOzOOc2Gba
Xs/kTF/ntf49+xSZSPp2ec6uDOUg0OV3gL1hLsnfR52nk94hVX29gskOffUn
Mdn9TbX+FNm1el7IGtL7DeUdCmvF8DZwQmtk/92MEeFOjDJNKajKMZCg85v+
i/dJZFhAmmoZoOvXeMY+2rhQ7JHUbhXRE7u0XsTdeDoNpjSVptcc2S4okhxa
gCe1RkgrZIMpQmavDkuikdZCGdSUmclbZ0hUqf6XAKLeCcC6ELQ7m6eQAqmM
BIko0SAwHnxBRd8HMjImRdEcl0A93Gy/eDu7uY19KK9dS9daSENNGxemX5Rk
jbJvsKr1AEZ5bGe7YeTxRB1NTgfk6wdkoawB+XUEyBMB+XzA7UJ1rLY/rzC/
a+p3DklpOz0nyAyW2546Us5F2HR0/QLYqyhFfMsdPj/gHgbrRiY0EVA6Q15G
LBUAUis/U0gqOeR6IwSE9c2MryMff8hx9yVLrDelJTBNmKz/bS0gDCUuyXDv
vwkEmmswOc9GnE3txCWVlzCsrJ67LUfaqKA8Ovme0hol/igtR/a2BWXnssgp
VfdFZvl2uuATBO63ujDg/W52dBGI6ghqSszIlTGLhe+5HJGz3YZgsZHZGXl6
u/Wf7zbv+502mYVTYodV5qPM/+0cQNzqtv9GyhzYutbl+Klv7CBs/MwnB6FK
fquY5zu4ysYqFhC3Z9kV/nZrqzH/ML9+0MEvXp18LvPFNyT3tPvFvyAS7X40
OcQ/oz3Jsw+M1sy/1O8Jr3NOmOxAl7qBdJfPPrA2Gb/2yuTAFRcNJ/vefpZi
/b63X6T+eaX6eK3686NmzJWTHetihrAa6zbV6RVnKT2hB6rZgdQgz6hBjpks
n97B7ewAB1TXS90AehXPqoF1i6WTHYDeklWsMLPXXR8jVjDuSLR4sgP8nzSA
ZoUb4Fg5wG2jZgBrRiffYukdT/Z9f3dy7033J+vXjCbXqZ9m8pEP3tpj/rOW
rFd/uFc12LeHzlz2S1u//yPzpevMl25Vn6ov6d+uE/m9v5nk9051im1ij5jk
TbbddR+81X5Vz9Z9pP981+5kq24+MXFpScq9BVDuRKKc4r0Glm5hc6ySj3O3
48m9agF6Dr3md83M5N49tlu2w/foiZsJK41u2123Ri9y3LTgWwd7fmTa0JrS
/VGK19abbJug3U27WaB9PtLuZP0Hw/ldd9c4t5tdQbv13/eKZLqgy9a77jdr
mQ7Wy8mmd43yOlB/K0vOj88x37+f++sD9BuseH7sngb81WDWSNR7GW2/VfFt
rlhHBn+iP/QSHoL/nwjV98y1Fxngn0KqT+nVQ8G4peFPVvo+Je/rXbs5oh2R
h9l3hMN/RNBl600WOrPFOq67ya63N0a/NT9i8+fYlufn++sH7fornh+J+77v
32/0uG4xl8a96UdKCYeH4m6F/x8L7a93fQ3808S++cxuqWZKw59v5e7x8F8g
4e+0zSzR7kiG/zBYxzwg7g3QDo3bKvyltmbtL+DaX/H8RpIsfxcK+KdvIHUr
/C8k+N9mNb/+OdPBf9wZPh6npeF/rGhH2mYJYMsMQO4jEf5ccU4YIQvlOpy4
U0BOwhWt97iS80PqAxk//RXPbwS0WwzU2/SK+VYN/C9Mbti8Otmgfs41v2vq
9/VgDGUQufPAS8ggus2LxMzWRCKwZ127ZaAd29FHuEjQuBJyVgU02NigtnoN
SGuXFYOZgAfICOqrYE7DTHcP/WVgrJGkWv60A30UXfDxHw/zWdJ5c+2Vyfht
2nkzatwffcbTU7f/9v6e2UAyZrQmGZx0scdT4GjQjkMbR7hkDIB1WATVFdLu
d+swNOsD025VKIpMo772pjMEqH00mM5wxVypWh4897w8TA8caGuNHMwS7YzL
SJ2ZZwAhmN6aECwHQrA8svMe6ULQD9pJoV+v/QYCsfK7ZSUAWZfIOuprYy68
zQkpWw7aITHpRvg/e+1ZfBAYTvuPd/sLudaRbQ8NI3xg8Oud1hr8jwHLXsnt
7k+2prTICwX+EjYngXUcX3Lc6YDOUQuoYNxBQOcVoF23w5q0tTzfDgHnPie8
KliTF3QIuIFahPXRoN0w7a1as2hPmTor7dsz7ustmX+aQMn6NaMjYMceAsw5
EoUA6d0hR53rOA5kgjlMHf1PtUVuvctQx3swvYpoVWRK20eVztID2CODerXh
A0aGvzRByLChsOv4K+GEiZ3dKpN8WtvtXa6DQCZ9IrePmfp2PjIxMjmZlHwf
pGUre3crCBgZL7cgtyQPUpVHtDSKw3G/WAe5SGkL1gAnR8b0JIvwsnI4DbSL
+bCqmt9AQX/GIbBHWtw20KdbDAD6DVTM36rFboZoN54SuwPXjrI4kaPqkMuD
0C0GwAFnuDWxOwosm8j4ERF/nSb623pXSG7Jvhea2Mn59cn1ZvyCHtbIOGhV
7NC4KHBY1fxkIDJtqep21B/BlVRv3vZ8pIidtED7U5k/Ad/ErtgPLNBJip0k
T79YDpGRN2VBbnSAQM6rI1HsUJw7gPVEeICQMERGV1mxGxF0jlmdSEzamR8K
gPYBHKCIEsJVN4ldUAp312gypn7ONb9r6revNcgqCoqYzvKz7fxNIL9Tcrtr
fSWCodZEcRkgLYuYWCJDGGk+ZMC8YEQxawDKdrPBeslwn4woDkfGRVCvan5o
R0UpNiizDa0D9dd5UfQ5BlS3V7oW+6TYuXYvEv2lxU66FgcnJ3bQgBHLoWUj
fwD0XL9QxA5qeq9mGA57gOEu1tGq2BUZnki9tTM/5MeJ9lcA/24XOy5CL3a7
PrDbnRJrJ9wsLYrdUrBsZOggMUHa8H8LsRPrRXnh/WAdZcWOncYFhic6V7cz
PxReRvOj/mDqUcHu2Y1iJ3e7XnCO4ytYD1wZbTdZsQNsljCcH2EL9Lr9byJ2
XL4eRQUmIXZovcjIRDGdduaHAn2eb363Q/2hdt0udn8g2o2ndjHptaTbyFA8
r01Xo2tZ7OAuJpaz0BHTtnP3ltbcb649mbtL33f3l9TPCyXM16roQVFpQ/SK
DM1WRa9ofsiji3ayF5zooZ1MGJBnABHtBefAFkVvCWiHdjwu4/BCESd4jvHr
4HKj4CLbZMQJxctiCbJVza+ffu/x4W+THBHeBjVz5fLBEDNHjkj9PrfzyYh9
wBVCpSFkcKEX7Hr9kxSpAo14Gmh3JIoU0tiIfbwDAI/cZEQq7uTPZj5XNT+q
AAJFr6vOWvG6ACwmwnWBdp4XC7HL7Dyi3WTFpMBB+0ITE3T2QEd5qD7aEJOi
cadVPD9fQ8zfYpOh6iNOTICBJneTs1w7eTZqApfEJMWk6Eb9C01MZDsZ5yPY
zI30NxkxQZ42ZKBNr3h+nI6/x4qJHnsQzO9IERMMf38+8ZWnsruOFKe+yYkJ
JI+wXbme2hEuJggOYf6dTQaaE6PfJMQknvnh6Tez4vktN79dgrepgmNEZaQk
aQ6vpPxLcnNGUt6XbHHtuEipOJ6gY8dLIu2ks61FSVkcaycU3QtNUmQ7e4ug
4Wom/UhmoQcplJOVGJnax6/VFdhVM6donstIcuhahJWcGXKqKQR368GeJUfs
HcjEeplrJw/2TXBi+Y3klLpqK5E7k2YpK44Z17v2L030xUhUIDxoG0EVRZBV
hiqZVDTVRaLdPic/cwFVjxjhEecYZKCR8BQJ2aSFJ24Pv1CEB8VP5pvf9orS
dYTGPeO1NoSmH5AG9YeECxVXa3OKPjC+W33VZmDOB/LaTbesYsICdxBhe71M
9Jf2jcnTTG/7wnIaWDY6tB7JwiLpskQg0dxO2pNbRQEJxgAgAz16VGSKITS1
MB1flc8XN1wIptNN139jQoCO9PKgcnbJdr8RgqgQDAm6kMP0+JJotx6jRrBe
+jtyus4vOZasDUR1PxcD2nZTfZJWoSz1NEG5SO//BspRKHOFM3EJ49iSUB4K
1jtu1oisnEUlx/BX60A1PVAbplsh7DFkHzrc727omN/u8UPdwtd3ybqNENTh
eeA3UC8L9eDGrdvsV4L5IajPB+MuLtkfh+sE/AnWMg6Bot/dBGu/E+l3Pa9P
Ntx9oXvXs26LDd69Orlvq3kHdDlANjqZ8uMH6AQr3D+/QXYU2TMEXWjvX14S
2VwdVtgcy0r25xVxtjymLI7c7dVhqT/5su10aqdQvsGiWtzt92dI5JiZclj7
di9kWNt2zh9+l3u44YO3LiuJ7LlgycvLd4kMZT4bukIO+8RquhXcTG0B7jmJ
f5ecnm1eIvorBe6CdhWCG2YdgKQW2Y6SX9phi2xXNbit8DWTdLUjl+q5oEWQ
yykc13rXXNhZ+FvmS7C7ojNVUHUqwU7X+vfvWp3c4NrNE9fmN7hr8otFfx0A
O8qBOPUFDHa7cTb4hRvKa9bBnpklkc6vamQSc8v3iy79ydccqDjPwgroOZUw
J2fP2OYLzV/1z0I2WK5nnb5Q9BeD7yLZ7gr9otVFqp3+7d6FSonXFImD1D6n
gHbokh4idyXiAGKWVYmDfTaAaiDuJktkuKQk+KF3M1mRE/2l5YdBUR4WoDX3
Oz86vv/VjqKpWjDopCEFY7FsN27bLRD9lRaMSLspFgyZeY0s+cXRdtn7IIdF
gMS4McEou+9IAeKnPZ0Zr1/mmdylcUt/VEfh5SXHQPUbptEYa/xTbcdUQVOh
lKoWHfK+7t/qRWeprDg0nnYDIah73063iE6B6cTO6ZL38YuS6Q+r6JTco+R6
Ty4Jm3zRqQtVYfog6ZEa5BUtojOvSum9buM5tmKyVi097Fwev54PHoN0yr57
dbJh6/UmAlCnOMBW/TLLhabtIJAyvrtR4EFtWcpgrlD7UlZgGS0qyb6olIGq
HJOBA7o0OyuyDiiNBVqlfSlrBPRLb1Tyby8vOVa8IqV/zOiENmiLMFK1qPkn
CHcm9zmHVj87tK5nG4/7G99p7MEbRDvk/S0Kw5U9TDGWULhu8t7fqOktRGNh
hC1F9b3QuFWImoRr2cqLVYiaHDdf1JopUYtubOeUHA4lszM5RNTvxArIK8kx
J3eZ7UmbNAt7hauBpE1Kpd7ctLT1UbvNPkhN0laUgtQl0lb0QhxPs+CEhk4J
iH3tPKOL0q1jL+dBqQR3fLOZ5v0J+ZbJ65Z6s9rMdWGE1uUkM2zXA/pDtXvn
TcEcy5r/dDJti38wQzF+Yi8rzr5qhd88SZxv2OpryHJIWUSNqN2GXVl1U5SG
1ao4V5zWtTRCRklu8gsVbbIxcUb+rbbgINaBxDQq9gXijK6cx0LFRSJaVpRr
JUV5TsXzi5d583b+HGrt6CfrV93r6lcZ1bKnvXQ0xGO05kpEftdq3sGbQOT9
GcirhqbY6feneFJ0PaWsyPvM1fgty8mKfEG9pFiVhKI6rahcdTsij/yLsfu5
ch2oXat2f9nqEZMR+XpJkY/Z/ZOZX1TkQRnqIkdgOxdiEH9R/ki+5VVe3Mc2
n87i3gCGuD8oZMVdqgXmR8Ets9bFvdKLOMuoHaoJVNbxV/DuChI7IuNk4ICe
10FVKwYADGeUpAuq6o7Wi+rSIhiWFfeGbJcWd0GXsp63svMrK+5lQ1LtiDvi
70wwP8Q3319c3IdAuwZox+pSOKgbYHefLfpLi6fcjctGUHm90FqY9CXVZaBd
7LqxTdLON9Rj4o52iXbgIGHN4i7U1iDoD7WLqa2iEmrITYSso7Li3mxR3Kua
H3KzoQMCunaO1lGFuBdVV4luN2XFXRjzDbBr04FIuu2onTy/y2eeM6VLhBi3
Ku7w/C7atSjunHkNz72+hMdM0F/ZMtTI29tOcu+gnJ9rNwLaUT6OFBPUrmwV
e+TeixmZki4ngHGRmPSWFHe027UzP/ScKFIfPK64c4P6a+di7yDojx9bLfv6
QElxl2IcPAOVyWfyxjwy+onOqJCqNL7jSR5ejL0VWmnlo6NAu+ANTBeq9OT+
URaGBaWviX3UV97uVBYOwW1I12d4Udi2mybgsDWtjtB64bjxM7R/EX43CPV6
GJYV96DUX2R+6FDSzvxovXDXFkE0KXax4jPtiLvkL73BKm/PUn9xvpUTd3l2
rwMjnc7aWC2Aux8FhWNbFndQYVMeDloUd34+HOzG8s1UL8a7zc2dPKN6GPQ3
BGBDuxg9oashGq1qXwCRER7Di3a/mDNSZTS/BoAXJ0d9P0sXWI8AwVDQb0Tw
g+71ocNGWbWAjG/06OaMiucXs3pkf8OS9qknjdH20A7P5bgDYNxBwLeyasG3
y+7u0uhfGO3PWwv+UJwtuy7FeJ7or4xaqLigLmXMSu3PL9KvgS/SU7jXFXMZ
BkRHymFYjE4lYzhEJfJ/e8CeQiffyYCH2l23Jr2/+fI1W+0K5XSsuTPqtyQt
a062fI6Jvc6il0Ku931iKX47A3pTMIYJfpMluHu1xbr3GomMsd/ruh4GvDwR
rD4e1IqrlOlTN1V08bOfdfSoo6yP/zUc9uzDDbuJwjECTwYr0wkXPAUzfMBb
h4thMDTyE7aqa6TjgDI6kamCwgfoxCF1SFldgx63Rf21qGuWA84sB/jkLQq4
l6UUTweapwHGaFlT3OVPEosFImgd6m9LQZdo2lyCRSizsmJaFNzKiGnBuEgp
I/K3I0DHg/5al4r4zkoXcaBhDs7hRY9RzhXjlpEKKGXiHD5JqZDtjhGGNHXL
2e9AKvT5mr47HbCqKqmgOS4mVS2+G/4tx2UjrIyVPHcvvWVFIzikZIzdbHn6
onFHQLujgYKvpiqSP6QsAXP2BkI74gIqJQlvNjrvUjQAPq18LYppx8VlGmiH
3h1qUVxWgHZHAXFBWrEpWe8+nw7Y3L64yPs75m8LwTA94OsLkyzayfSX6FwO
pnMS6A9JjzyytSo9aNzpgFzLAOuqK76Ur2n88bZi6REh3Zj0yM2mX0gPbTYo
9BuTHrjZiM2rxQfuVop2VFFoaQRyudKj/qphMSP1mf4ha3ny0pO6l+PmsACM
5U9s2TpiKFcTKnjR7kVgTkiERsC4ZUUIjYucuksF/2jNSNRaE6HMzcJFkf2w
cikqWSRK7kEsRVf4d8bL3mcdAe2QE6ZFKaKigtIVvjDg1ng4zYwU1QW5zVjT
ASjaFyRw68a6YecBTPvq8j4AMRdMi5P4hMd0GWh3MpgWkqVpctwyslQw7izB
RdJxaKtov2Iavj84HyDBu1I6I1BSAAZJAMS2NAO0iwkUfpHctxtsTaA4A0Y4
c7kc5E0g0ygjUI1Af9F408BY7UtV/o0ZgtssAIE+0G42gO880G4x6O9UMD8k
XtMFbcuIV9G4nCQolN8C5pV3S6CsnHbq+/hy5X5cT7/7M2J9uEWN6CIttkEW
jYusuO0OVUFM1NhKF3FAdB5rUdToiL1PaHlJRoqpsebIiFozJWosbiOAG1VL
G7tiRTbCdDD9wVg7gWb5ngkVmJUKnBB9OpgfQikynJG0zSg57kLQTlbTovVW
XSFRGtakkWdI+rnwqbTEDqe0UTRdbkTDtLEpS/GZBx4NpahA2oZAuz4hvRRe
G2pN2vg8scdHW6elybhH5BZFzluZzcb1x9FWA3/LwkoCZiD1VIoTB19EVHZa
rJ2ADSUf7ROPQswC/Z0J5ofginLgZPSbXC6zSo67LFjHaEbNUGHSqms1Shuc
xI4jTa5+hB5XOuGm3M0B61P7qPZ0duqlD1R5YqfE6YHR5NkHdHRV/1bfvSLu
dGxR7E5lYtL7iK4M7RpKAmmIh7BcqJHF1b+r6ErX1hJ7ZjM3FCksODHxYtGa
35JbM9oIWt9Pnc/Gres0nQ+O+m8EBXlSxeVuur9HN2wy1kbDm5M2KPvSkoCD
9evKDXGsI7L92o+Ca99ZIvPjSckZJafW56a2z5VWdX3XIf+sWMgcq8PpO0eZ
2yNg9xgE7ZaBdsOtwd38fn1Jst5cst3JU0RLGLZD9TR3j7JaoJ1dej6jtBSq
44VIS2+1xlORfTuvrodyzxAhLZfmHv9fWLScSRpwfNRWDLvblDGSkecb7raQ
paubMkeDqnMduu1KdvwPgDBXjMSyXbeSeAEgHZcz1JWgHQyngYg9WVNapJ+5
9qKUcR03wpcA0Z92BNGIXdCiyMcMoPYoP/eQUHuoxg6i0WKwhUw/gmjEhzRh
fc5iGq02D/roFpSsKHFUB+78GI1kuyOJRiiLZm5AI9tuufndSA49sNaUmbZW
tcUFCocsAtvBjCOQLjJHbr5rJ59eoLyBQ7sfZVlCzoGFQC/NnEJ6nOf4NTHx
SHJwx2eTJ+/6QLJr3QXqZ4XC9qOfW6H+9ujnLjCf7VV/e3LHncnBAxPJn1ZM
R7RdLpS63FX19ydyZVJce2Uyrn4Wmt81Ds9NNc1e7dodPHCnopeijaLSiKFV
zdLqLkujP5kqGgk9ZSpfXzyFi30VtTvwWbNQvcyZbrG77vps8vQB2+7NU7VY
cfaRi70MLPZssNh3uXZFLpKvt0qPHR8wVNA/s5keivGu3StLjlvWNVPW7uR7
dQIktOGTIal/+rqUlnNIkNZ9gLF1bqdpKdpN49POhd4QV8bVfZsv7CqaHtxy
AdN0rlBOTzqavqJDNCVDU26Yw8BopwjA/l2pYhZdQt+n71rB9J0H6PvyDtNX
yv8QMNR88ZadBrvcXxfSdz6g7zkdoi8fAsTzQ/0Cv/SQHF2ck/6mni6g7yu5
3SPJk+ssfRcyfZXOde1WdYi+yxm/o4zLJqCvNbzr5vBP9O0m6t6Z7HXoXcQ7
2mfZOji7Q9S1TvOmeQZRV6n3Pzs1VTk5QBC1Wygq7M/FZG9teYTbvaxDFKV9
lHDoadCVJJMqtFMkI3NOq0b67jstycw/zC8OXQvbcAmQpI+WHPRLeQNIQ2kp
ANZH2h1A7mRLgaYtO8DbRTtyF5wF3AV9eCK9fiLmLP9Zd5Z/xJxVbWKL8wOo
z542vgB7tp0JqPJfD8+ka2YyNCg5TLSjYq/bu6YBik755AjBB7d8gCVsBFDp
v0z1RJCoDwOKTPlEkJtgGFDk73kA+2h68GCK3YTamwg5Z6TeGAIUeXKyA/wW
EGsaYO+OCV7pgXYHkKQcAprPD+BdYQ3nCpMJDSeXGfQ1YFWDYM94Wgz6rPOB
25BeI9lnnhW0Exm/dq3JsljqMiyefcD7PXMHhyu+604m6S+o3e61vMI+dsPr
HMe1JvPq0O6JU9NjnBddoMfFuGuHbr7o/snJeEbeAAh4UgKeBAP4SIu/ZPBi
McAh6vvJO5Lnn7R/5/GEqRmDCR7PR3bOEuMd5N1gW/L86HnJr66fqX7OS57b
uS15Leu+C6JIeYLmV/Bqw0vEuL/idX46ee7mWWbcuvt98OZ3J8+Nfjp5fucd
+qeW/PrJbYn+7UWOn3ItwNE+KTmRl5deCqd2R3LoO2oqN5+n9h49tUbyK/Xf
B9XPc6PvTg6p6ek5vZjH8OcspIf2xcgkgiJyLs9z39sMFX6t5lQzhKnZuY3a
nxr9NvOT5KwxOz2WQ5YilbbXtUNFQGQQWc7V/OJIh5rs82qCB6+fZaagJ3Lw
O9v4i6eVVH17SjLwZemJ2NBt0wBMT8ICW/+8O3l+YuL0KNM8tv348bTO/PEn
7kiey47PuUkFOuTx1sa3KqfuDLs7TZBn710X9OioTq/pvmmMQhP4MX9j49D0
M8iz/oKjGv2cp8XYZ1TFNdFvp6exJTUN81+qgZnDls+qRsY4/R0aXk6fpvu5
FQ1agQtT7VpnV/C0DVWdEaVVBissjwfuTJ7W5t068knXXXBH0+YRvSjzvSbT
5iMpRL1Y04biVUXWAmlzG1OSw9Zs7G3LncYdzsaBi9dpOszidh+gqSWnAAlB
VQCdqL4YTBPZkS+JAFQKCJWXQhpF9rdMLOdpZ0zzUdUtWy9nJoDYMBh3Rovz
Q2yRkJ1Tsr9jwfymg/Uujss/O2X1Pr/TfuWk2FTFpsZRSYeKwPXkgKsR9Iqg
XcrB6hCkWwwDFtI+L5GL7mRFNrBOIY2fMXRBW93iaLDsaWDcYUDuTiNN9jcd
sKUAaTa80rDmDFl4N386+fWELIOBhM2T9Fxup4TX+Qo8SZXwOl30UtnOCfmS
VDvdYhCwMoa4ogLEHUbcohR5dIuVYNlDoh0ZHUi3zWxxflUhbiVox7pNSMSS
coh7flT+aaYyQj3iJEnJnyI5zy/zCSFeKaZM28WZgqQHd3wghUwv7P1g3Bji
iopivqSziKPcZa3ayXw+HiCOr0cgr5FASKcQ54usxHfTpWUQl2vsHy9A8mTa
myhwfbZoR3J8AgCdP7zcyRvrCtdOb75EhV7AzSjowDMN0nDtMOgWgHYnCVmj
JI4+0G4YLLvToCvaWAtAR2Uqf/0du6lqt8XzT05wvVUhctPALCgmI0X4RUBz
nQyoeSzorwnaIbChgi91ATa6PvyyzoLN305/hMc+lWXMZ181RLvsnur7m9Xi
/KoC23LQDu2py8pouJpxAD3vHE8nAVJS19KHcBZQa6cBdXUCIOWJoL86GDeG
NFmqqIf2UuP/tPvpqs4ibW5AHtvudNmfE0T/5hkwlgUnO4W0YwD70F7Kd8i0
PzFg6VAe+uzaFPTIVesOEOj8MAMsgV2kYsM8AyzhOLAE0om7BIlrgLUIgdPd
4syJ9YqLzM3RQxMTr+gOwMlxzwSqje9gA+NNrrLTgEP6R85vnlPUv975bnZO
G4fikwS8vijw1DkCuZCPB9OcAaZ5pmhHZDwLqDVvi3rwnSLkO82WIvC9sbMo
mwPa2WU3AmtN/+g2I2Cs2S3OqSpkcWqjQD7aNMlIeP475zFyLFSaycHRO4KQ
kUNYD0VypGZz4OvhDvzfjgdLmwmmQgGFg2JpLwVCvRz0dyqxRfRHbEEC32Fk
zQbcsUutm/7o8KnmNQJA0ClQ+RzvsvujD002CBkivmbR0pdC0oQ/D+gQJj4P
zALDngaofzZQP0eD5Z7uqC/VmeoHYce76B41V5S8GHUMT7MAY+Y6kTAhHh0R
2WGzlQ5OkMnfMFGiIMK07gIfSblL+43yjbROg7Boz7QuxbqNo+78NAV6e030
uWnPmgJzNj48gU4Es0Hvp4B25wCsLWPOePuOLRWHtTwlRduuuR947UXmBNDg
rICLXIrFo477HQefbCfDbE+7rDROmD3wCEcLj06RopPAYlYVbJn/BxC2OaDd
yWDceaRmtHvChCmNAGbl0WcUzgddLwVL58CrCQVSQPgReo7BJi/qOK0JeaXN
vDwMcihIKzuXlzRdfPasu0svy6eNB+06hksUB0W38RgfwlG+FJCiU7j0L7fH
d12qMihNNo61CkzPAd99EWg3W8yF6DVNzIXCU3RjSsrwYtDfLNEf+YFHUrQP
r4dqGbkgoIvkh/XgN5OJ3R6G4go1e+ke8H/iQi8id2ykO1CKtjNpCi6QlHco
XQyo0nGUAi8d2jhtoMHuwceBuSBUIWcJQhXRQIbt0Sa+CIw7A/Q3U9CeQmSL
QH9U00gWhqiBKASlC1BSqCzNZRWobNcxaM4Qy84qHt+fF3bvm1oA2pWFUtXQ
XAJggzZ2X6Z1W3JIHVG0qwQlq8wDczkRzNlvNt4epPP2QeFKmQnmvBCM6/2C
H8huXkIhE+0lNNlFK+pxoHREyiuQGSqzctt1HpqiPxQiWgbIjW6gdhqasj90
S4N8I/ZkbLUmyjVAazsBtJNQykLOi/tMsLYFoD8pTtSOK7wJtUDzk9AkWsmN
GiUMUCReht1mA+3aJdCU7YilcjNjZ4owkeaC/joFzcURNkv2cR7wzndbp43S
mivBXOYDGvhoRTz6sQTQdAbobz4YF6UpSKiTMTUXrA291oYeJeCXP0XOy1yQ
vz/QWWhOF8vOZHEIch8j2ZI+4XYBNBfJ+UU2dJvOXPdJLTbmxgFlIXkLwHSQ
WcrRYeDjOYgUIgzI+2kj8iO0I/OVvX4CdfIhG2rny9n75Jj5uSjuAnR68qCQ
CooyzQb9dRqdRXv6mYROEbh7biejE94ZWvdZ9smiIzGbBMCFJaO/5AGHiBXt
5oIlI5YsA3OeBebHBymRzzAA9CQhVurd+bzVZ1617DhiEXkEcvxTTuDcOgmE
VY3YhaAd2uoRYn81egdKmwiy7l23KBMfWQpox0ZSgQz+uaAdum18FBh3Jliy
PwP7uyGDALG93C5bnw48Bd+NiJXkQX5DdBboFGKlNyzjmhCwsXRuhGmtLnUf
hcgDpeo+R3RcAb6LtvKVgC8I3rPBekbAuEeDdjHY4hdOvAJl2KKXS8TbDJxI
s9tfZc5X3B2HN8qblf0dD9qhc0en4Y21nV/vWQRvd/aSeT9HgzlZO6IuxjIw
QoEflGWBEOkdZOBMgRJhgHUnNQ9vJkKyZoD5obd5CJHy7rk3fr0Cl88WEHI5
CxY9QSy8C12NcN8OJex3E8LnAzYjk8PSWSf1Wp9sCuU+IyV9nbYeTEtNG13a
OAZ8fRqYxXFgtsinMwu0Q/qnbP48esdaqmcCOV9SQa/AIysFqHvp3e3tDpAX
jYsSg6YDNncK5DIDP2alsBpPX74ZvQMmKxHCJfTU3xHSUIYpOqIg1iB1H0W4
6A8ZSAjhPqCcVc8HwLMH+B6jV8/kiUOvHko7vJsRXhBWQvZjpxFeZKi8xCEc
XWjMN1SawVj2xyhqVC0JJSciXwUKIiOdj+5WoTy42Am26C5HrzBEqB1dcS26
I95fsr8uQXqRwXIiGLebkM6usAKFZnV5M2WS86kTRX0Q2XrA9AfB9FF/I4Bs
KK8RtUPpKEjaUPAxhvqi++f+Yne8Bkd/pF3W0jlyUF9wr7ZTqJ8D5pdvwaC7
d+aSytExsoluYhdDinKAkfXj34gHIQVwebvovi1y5CLU++vIcTSj10+QdESt
n+5DPdwyRX9llVHHUQ+zS9LuF58w5O80hPeslgEpQvBC19WQmKCMUARrdPE5
Vi0D8zd7uRD5hIpu40ffTRYmDII1F9VFdd8y3syugj9ycSFTp5vgj1x1yNSh
AtlcqS682uo9b1np0Cdb6qasSVQDqEftloLpIzacDMZF7WbEyAuko6gwCyqQ
ggx89Ko4asfSgaSoC6WjYC9G57NulI6iIznB4dfiZqW/HqnMIldQ0tcx884f
KSZ0wRwdk9HmgGoLoFyBJWC9aHPw1fHAZgOKfGEx8ThAvtSYmCCbR3pyhku2
Q686drWYlHVjxNnSKTFBV+qRDUXjmqvtDv50AflXN7/biAmJwK9tAbY6MLF8
YDRbWkKiiktQFJhYKAcLOehOLdmuZekA2q9sJUF5whgu2e4IkQ5ExtgmAufX
BdKB7qYhE4ulXJQeNNKhhIPrAhsxeVL43OHgnoio4E80AxioGGkgnQrGjRUc
LS8D2XGLZIDvx4LrNkUVkKOn8e45ZcfuPki2oP66UQaKDKlTHGh/bYuZm6PG
c6N/aHaL0KCy5SpQ1U+k4lG5ryFAR5RtjOB4asl2KPaD6IjqZqAtrSy84+3i
Tzt3sxgUJJ6g6y/dJAbxq0x+vWcwaGGdH5Sxh9DSBO3Q9BdF+kNFN4o2icOL
euBjKkAzox6dorsnnIZcdQj1qLRTN6EeHXNQ5T0L67p5usG9ZqGVfF85YSii
Zi+YRfTCCaKmWP3pYFxE9VaFoSguEQX5JByuMWHooiwKZEWja2Ex3dhNwgCF
GiXVpE8DSVhxy7+zAKXDR7FAwU9BDlSFFhlIC0E71N/pgBxVSAfqry3pKHC4
DkXadVEWHarLE9z7dZUl0KWhbpAOYuE0MD+05bF0CE+Srzr2afYiNUg60tl2
tk2MHBJVfaAdYkNMOqQUnR5jgyBbN0qH3BNQ/hI6lXc4kRqVTPN3snztj+Vd
JB3IqTIM1oEMqeUQ9e82pdHUv/mpKxGY43cu06lMqk30kC3I3A+mh1C4IAID
eNu84FjSaSlB0QjsbwXHl+65UIOqCaVfeHraPl2yrIsEBQVMhsCSkZG1nOke
3jjgaIMVoMDuejIUGBnyoyxXlDqEyDMQ44xoxxcoCl5CQQ+OVSIwBdtjXGBQ
LaT4dlH2SNJhgUE1gxc4gQkfW3sElfjplMAgewq9fJJvd6VRb08jPW7XSUuE
s7XqtCmlb/ekTLEC5YxmipjTuszE2x0OmUFpg9HNA3hyi2Srw9foUZKpLcDo
Hyrce5csmDnhrbfOy05YrS91OChllekTSXhS15tNjfuIZxf2UB8pM03vOmXN
tKFIOzlfVMIEQaTzEpRNvC2dDIIyD1G7zGWMjr+HIAv2rHC7zqMkPXbXGYlQ
8nBLTlBrcYd0muTsThlfWBr18kkEnI3+3M5tLDApB0BQ76+APEMx8ohplhUY
9PYpAvi0kuSuQmBKJxmCdkX5Jh0WmIAtTmCOFwKzi1/1neiPUPJwC4ysFElc
bMilpAUmY6bl2looDbHmfGihl8zmZKFsV7TcYTC92E1CKCiCLJ0SlOjTreCq
RpGbDF3ZRjtQh0vGIZP5RWQYrHO7ikRhF0gJqpVWA/2hpBneVsDeYLemPnC1
zz5n/9x39HMV21DpBYTkkcgS5ZSCzb2LJUO6vGL1O8ttDXmnm66p84kKcp8i
+jM1+A/E36A63JJhXXcNLirOP6oNqg6y0klDeHy3RlYf/Js+dmyDN1xQzGMk
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
puxZ/lyTffuZVQl1OZZ9+zr3aMp+d7JnbznMnDqId0PFK84/czj79i3XZKeu
uyYfiuvG/P/pWz6bnXuG1qyXnbtFd/Em+6qtoI+Ofdq1rzl13Q3Z6bsPm+LU
MurD2ekPhKM+/TXZUuz3r4C9EvmOcOhKjW+vpwWXW1+V+PiBz9t4QJfW9dUW
chr1WNzLiY/E7vZEOqnHTKcP3JCdS6MTRWid/9oN/HiGusnX99tfO2ZbTEfo
tJn7+Gx2+rqwj1M5nal4eC+RSNuZ5U9nD933ZHbgpqXswO5vdixv59/mn3c+
mT20eJZrpDy/+Gx2KP+7aTFlvwf5d97upiezQ/edzp4n+ntJ4dr0skOLChv5
5/n7lvwz855n+Xc9/g4ljfn9wD8zv2UJ5H+7tTC+A/zuDo9P5pH3v/ik9LH7
yezoqvSP3r3JEyd4dy793HzO5u81y/fN4JV3PpsdXZbYvKaWzgxd3uOG7qFX
OXxy9qmTdjH1QXNsiRNBrROfpiL0KxKTwpY0tjt/9zX8qAMw3B9eyi4Qy9x9
rNANZrsF1ce5W9xw5nlA9jXESElsR1W+VpcNIByRZhRwDt13VkmUjsXXQ77d
tP3uO3CVMUzGXcQiMXzEWGszGO6AWdex1Spvg2tlrT5grdPmffQqM+NQSqxp
ZYYdHZmn6jiC/fJrOOxL1Zyzc3guEYgIvGn310pEDZegbjYDLiHpHOMS/WwB
cEknkUtYoitYzFfuGJ3s6J3fjLaj26AmWYMDJY30989m/bsPebYQTl4raxTe
nePbYH4GzLE75FqslRnqdPjYQR0YP5pmBvWYmUFpaonMoIFMOw9paudXdRm6
Y06ryxmnB4BMV7KIaVh7B7uc0brPPXNMEcxMLd+C7nYaJJqajCnOXFT1WANL
1LElp48sC7M+bzTEO51a1QGA6tCS5nvEAQUavz8UuzGPutQNa1Gj4VHZveV3
pH4duNNNU9Srs9nR+54saY8PLTfBx+Fyd3i/Csdg1ijf9jqVy9PYKg87C/bZ
h1uccD/rN9b0WW2r8ubXL6awYz9gEfM5dYtlA4TuXrxHtk3mTPtsgUlMk9P+
KCY2TNH7OoDpYgw+B2RS9F3mCH6dFgT9YAd2H8vcSBveTJ0FpP2mUysXz7I2
bBByU4Ht6/jQI4RHqkCY3EcjvNwL9jf3u7Mi1UvMYX+7PtYtaKe8oqt9HtFS
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\
\>"],ExpressionUUID->"34391f5f-4ff8-4d68-b215-75db1b7d370a"]
}, Open  ]]
},
WindowSize->{1920, 988},
WindowMargins->{{-9, Automatic}, {Automatic, -9}},
Magnification:>2.5 Inherited,
FrontEndVersion->"11.3 for Microsoft Windows (64-bit) (March 6, 2018)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 1194, 29, 264, "Input",ExpressionUUID->"62e69ee4-cd21-45b2-b325-150bc7df5247"],
Cell[2707, 66, 2466, 44, 447, "Output",ExpressionUUID->"8bbdefdb-117a-4ce5-949a-def5e6a6f4a8"]
}, Open  ]],
Cell[CellGroupData[{
Cell[5210, 115, 212, 3, 104, "Input",ExpressionUUID->"14e90666-411d-4b9c-ab69-ff0c9d72a645"],
Cell[5425, 120, 9567, 220, 852, "Output",ExpressionUUID->"6caca808-8d37-4e55-833d-0bf84ea682e2"]
}, Open  ]],
Cell[CellGroupData[{
Cell[15029, 345, 4101, 83, 676, "Input",ExpressionUUID->"da84fbf2-c135-4f17-9020-0bdd4c2d7e03"],
Cell[19133, 430, 71658, 1213, 835, 5622, 131, "CachedBoxData", "BoxData", "Output",ExpressionUUID->"34391f5f-4ff8-4d68-b215-75db1b7d370a"]
}, Open  ]]
}
]
*)

(* NotebookSignature Qv0KoCOQjc2YHCgJXiwjEA#v *)
