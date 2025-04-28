# ✂️ Image Background Remover - مزيل خلفية الصور
<p align="center">
  <img src="assets/logo.png" alt="شعار KH" width="120"/> <!-- تأكد من وضع الشعار في مجلد assets -->
</p>



مشروع بسيط لإزالة الخلفيات من الصور باستخدام Python و Gradio،  
بهدف تقديم أداة خفيفة وسهلة الاستخدام للمطورين والمبدعين العرب.

---

## ✨ الميزات الرئيسية

- ✂️ إزالة الخلفية من أي صورة بضغطة زر.
- 🎨 واجهة تفاعلية بسيطة عبر Gradio.
- ⚡️ دعم تشغيل على GPU (عند توفره في Hugging Face Spaces).
- 📷 دعم الصور بصيغة PIL أو NumPy Arrays.
- 🛡️ تنبيه مدمج أن المعالجة قد تكون بطيئة على CPU.

---

## 🛠️ المتطلبات الأساسية

تأكد من تثبيت المكتبات التالية قبل التشغيل:

```bash
pip install gradio transparent-background Pillow numpy
```

---

## ⚙️ طريقة التشغيل المحلي

1. ثبت المتطلبات:

```bash
pip install gradio transparent-background Pillow numpy
```

2. شغّل التطبيق:

```bash
python app.py
```

3. سيفتح Gradio تلقائياً على الرابط المحلي (مثلاً: `http://localhost:7866`).

---

## 🌍 استضافة على Hugging Face (اختياري)

- هذا المشروع يدعم تفعيل GPU في Spaces باستخدام الديكور `@spaces.GPU`.
- ارفع الملفات التالية:
  - `app.py`
  - `.gitattributes`
  - (اختياري: `run.bat` لتسهيل التشغيل محلياً)

---

## 📂 بنية المجلد

```
project/
 ├── app.py
 ├── .gitattributes
 └── run.bat (اختياري)
```

---

## 👨‍💻 من تطوير

**حسام فضل قدور**  
مطور حلول ذكاء اصطناعي مفتوحة المصدر لدعم الإبداع العربي. 🌟

---

## 📝 الرخصة

مشروع مفتوح المصدر تحت رخصة MIT.

---
