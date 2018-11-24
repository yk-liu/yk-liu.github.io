---
title: Generate Thank You WordCloud with Mathematica

---

```mathematica
data = Normal[
   EntityClass["Language", "TotalSpeakers" -> GreaterThan[50000000]][
    "TotalSpeakers", "EntityAssociation"]];
data = data /. Rule -> List;
data = Transpose[ data];
TextTranslation["Thank you", #] & /@ data [[1]]
```

Using the above code

```mathematica
{"謝謝", "Thank you", "धन्यवाद", "Gracias", "Спасибо", "Obrigado", \
"Terima kasih", "ধন্যবাদ", "شكرا", "terima kasih", 
 TextTranslation["Thank you", 
  Entity["Language", 
   "LocalMalay"]], "ありがとう", "Merci", "Danke", "شکريا", "謝謝", 
 TextTranslation["Thank you", 
  Entity["Language", "Javanese"]], "Teşekkür ederiz", "ధన్యవాదాలు", 
 TextTranslation["Thank you", 
  Entity["Language", 
   "Marathi"]], "Cảm ơn bạn", "감사합니다", "நன்றி", "ขอบคุณ", 
 TextTranslation["Thank you", 
  Entity["Language", "PanjabiWestern"]], "Grazie", "謝謝"}
```

```mathematica
Speakers = {Quantity[1.10716223`2.*^9, "People"], 
   Quantity[7.6`2.*^8, "People"], Quantity[4.9`2.*^8, "People"], 
   Quantity[4.17`2.*^8, "People"], Quantity[2.77`2.*^8, "People"], 
   Quantity[2.4`2.*^8, "People"], Quantity[2.4`2.*^8, "People"], 
   Quantity[2.3`2.*^8, "People"], Quantity[2.21`2.*^8, "People"], 
   Quantity[1.7`2.*^8, "People"], Quantity[1.3`2.*^8, "People"], 
   Quantity[1.28`2.*^8, "People"], Quantity[1.27`2.*^8, "People"], 
   Quantity[1.04`2.*^8, "People"], Quantity[7.7175`2.*^7, "People"], 
   Quantity[7.`2.*^7, "People"], Quantity[6.9688278`2.*^7, "People"], 
   Quantity[6.7439139`2.*^7, "People"], 
   Quantity[6.701969`2.*^7, "People"], 
   Quantity[6.60202`2.*^7, "People"], Quantity[6.3`2.*^7, "People"], 
   Quantity[6.`2.*^7, "People"]};
Words = {"谢谢", "Thank you", "धन्यवाद", "Gracias", "Спасибо", 
   "Obrigado", "Terima kasih", "ধন্যবাদ", "شكرا", "terima kasih", 
   "ありがとう", "Merci", "Danke", "شکريا", "謝謝", "Teşekkür ederiz", 
   "ధన్యవాదాలు", "Cảm ơn bạn", "감사합니다", "நன்றி", "ขอบคุณ", "Grazie"};
```

```mathematica
WordCloud[QuantityMagnitude[Speakers] -> Words, 
 WordOrientation -> "HorizontalVertical", 
 RandomSeeding -> "yingkailiu"]
```

![Thanks](C:\Users\water\Desktop\Thanks.png)