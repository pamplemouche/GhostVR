.class public LzW0;
.super Lorg/chromium/content/browser/TtsPlatformImpl;
.source "PG"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/TtsPlatformImpl;-><init>(J)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;FI)I
    .locals 6

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    float-to-double v1, p2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_0

    const-string v1, "volume"

    .line 3
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 4
    :cond_0
    iget-object p2, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->x:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-virtual {p2, p1, v1, v0, p3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->x:Landroid/speech/tts/TextToSpeech;

    new-instance v1, LyW0;

    invoke-direct {v1, p0}, LyW0;-><init>(LzW0;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    return-void
.end method
