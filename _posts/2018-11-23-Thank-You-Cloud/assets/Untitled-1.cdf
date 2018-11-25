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
NotebookDataLength[     25161,        584]
NotebookOptionsPosition[     25181,        572]
NotebookOutlinePosition[     25554,        588]
CellTagsIndexPosition[     25511,        585]
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
   RowBox[{"RandomSeeding", "\[Rule]", "\"\<yingkailiu\>\""}]}], "]"}]}], \
"Input",
 CellChangeTimes->{{3.7520355978789415`*^9, 3.7520356209252825`*^9}, {
   3.752035699635989*^9, 3.7520357606566353`*^9}, {3.7520358003114843`*^9, 
   3.7520358497149954`*^9}, 3.7520358878046284`*^9, {3.752036027556242*^9, 
   3.7520360370789957`*^9}, {3.752036112449176*^9, 3.7520361559760723`*^9}, {
   3.7520361966982985`*^9, 3.752036202108818*^9}, {3.7520362383853283`*^9, 
   3.7520362629885225`*^9}, {3.7520363739790974`*^9, 3.752036468315841*^9}},
 CellLabel->
  "In[131]:=",ExpressionUUID->"da84fbf2-c135-4f17-9020-0bdd4c2d7e03"],

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
   3.7520364696103334`*^9}},
 CellLabel->
  "Out[133]=",ExpressionUUID->"05240dd5-b6a6-48a5-9886-1b2092ceb0b7"]
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
Cell[15029, 345, 4105, 84, 709, "Input",ExpressionUUID->"da84fbf2-c135-4f17-9020-0bdd4c2d7e03"],
Cell[19137, 431, 6028, 138, 804, "Output",ExpressionUUID->"05240dd5-b6a6-48a5-9886-1b2092ceb0b7"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature swDMGW6rrzPhmDKg0rsD3Buf *)
