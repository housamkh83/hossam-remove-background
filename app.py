import spaces
import gradio as gr
from transparent_background import Remover
from PIL import Image
import numpy as np

@spaces.GPU
def remove_background(image):
    remover = Remover()
    if isinstance(image, Image.Image):
        output = remover.process(image)
    elif isinstance(image, np.ndarray):
        image_pil = Image.fromarray(image)
        output = remover.process(image_pil)
    else:
        raise TypeError("Unsupported image type")
    return output

css = """
footer {display: none !important;}
.gradio-container {min-height: 0px !important;}
"""

iface = gr.Interface(
    fn=remove_background,
    inputs=gr.Image(label="Upload Image"),
    outputs=gr.Image(label="Output Image"),
    title="✂️ مزيل خلفية الصورة ✂️",
    description="⚠️ نأسف على الإزعاج. يعمل النموذج حاليًا على وحدة المعالجة المركزية، مما قد يؤثر على الأداء. نُقدِّر تفهُّمك",
    css=css
)

if __name__ == "__main__":
    iface.launch(server_port=7866)