.class public Lorg/chromium/content/browser/TtsPlatformImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LkT;


# instance fields
.field public A:Ljava/lang/String;

.field public B:LUW0;

.field public w:J

.field public final x:Landroid/speech/tts/TextToSpeech;

.field public y:Z

.field public z:Ljava/util/List;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->y:Z

    .line 3
    iput-wide p1, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->w:J

    .line 4
    new-instance p1, Landroid/speech/tts/TextToSpeech;

    .line 5
    sget-object p2, LzT;->a:Landroid/content/Context;

    .line 6
    new-instance v0, LNW0;

    invoke-direct {v0, p0}, LNW0;-><init>(Lorg/chromium/content/browser/TtsPlatformImpl;)V

    invoke-direct {p1, p2, v0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object p1, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->x:Landroid/speech/tts/TextToSpeech;

    .line 7
    invoke-virtual {p0}, Lorg/chromium/content/browser/TtsPlatformImpl;->a()V

    .line 8
    sget-object p1, Lorg/chromium/base/ApplicationStatus;->g:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Lorg/chromium/content/browser/TtsPlatformImpl;ILjava/lang/String;Ljava/lang/String;FFF)Z
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lorg/chromium/content/browser/TtsPlatformImpl;->speak(ILjava/lang/String;Ljava/lang/String;FFF)Z

    move-result p0

    return p0
.end method

.method public static create(J)Lorg/chromium/content/browser/TtsPlatformImpl;
    .locals 1

    .line 1
    new-instance v0, LzW0;

    invoke-direct {v0, p0, p1}, LzW0;-><init>(J)V

    return-object v0
.end method

.method private destroy()V
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->a(LkT;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->w:J

    return-void
.end method

.method private getVoiceCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getVoiceLanguage(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LVW0;

    .line 2
    iget-object p1, p1, LVW0;->b:Ljava/lang/String;

    return-object p1
.end method

.method private getVoiceName(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LVW0;

    .line 2
    iget-object p1, p1, LVW0;->a:Ljava/lang/String;

    return-object p1
.end method

.method private isInitialized()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->y:Z

    return v0
.end method

.method private speak(ILjava/lang/String;Ljava/lang/String;FFF)Z
    .locals 12

    move-object v9, p0

    move-object v4, p3

    .line 1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, v9, Lorg/chromium/content/browser/TtsPlatformImpl;->y:Z

    const/4 v10, 0x1

    if-nez v0, :cond_1

    .line 3
    new-instance v11, LUW0;

    const/4 v8, 0x0

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, LUW0;-><init>(Lorg/chromium/content/browser/TtsPlatformImpl;ILjava/lang/String;Ljava/lang/String;FFFLSW0;)V

    iput-object v11, v9, Lorg/chromium/content/browser/TtsPlatformImpl;->B:LUW0;

    return v10

    .line 4
    :cond_1
    iget-object v0, v9, Lorg/chromium/content/browser/TtsPlatformImpl;->B:LUW0;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, v9, Lorg/chromium/content/browser/TtsPlatformImpl;->B:LUW0;

    .line 5
    :cond_2
    iget-object v0, v9, Lorg/chromium/content/browser/TtsPlatformImpl;->A:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, v9, Lorg/chromium/content/browser/TtsPlatformImpl;->x:Landroid/speech/tts/TextToSpeech;

    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 7
    iput-object v4, v9, Lorg/chromium/content/browser/TtsPlatformImpl;->A:Ljava/lang/String;

    .line 8
    :cond_3
    iget-object v0, v9, Lorg/chromium/content/browser/TtsPlatformImpl;->x:Landroid/speech/tts/TextToSpeech;

    move/from16 v2, p4

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 9
    iget-object v0, v9, Lorg/chromium/content/browser/TtsPlatformImpl;->x:Landroid/speech/tts/TextToSpeech;

    move/from16 v2, p5

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    move v0, p1

    move-object v2, p2

    move/from16 v3, p6

    .line 10
    invoke-virtual {p0, p2, v3, p1}, Lorg/chromium/content/browser/TtsPlatformImpl;->a(Ljava/lang/String;FI)I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    :goto_0
    return v10
.end method

.method private stop()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->x:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->B:LUW0;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->B:LUW0;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;FI)I
    .locals 5

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    float-to-double v1, p2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double p2, v1, v3

    if-eqz p2, :cond_0

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    const-string v1, "volume"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "utteranceId"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->x:Landroid/speech/tts/TextToSpeech;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->x:Landroid/speech/tts/TextToSpeech;

    new-instance v1, LSW0;

    invoke-direct {v1, p0}, LSW0;-><init>(Lorg/chromium/content/browser/TtsPlatformImpl;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-wide p1, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->w:J

    .line 3
    invoke-static {p1, p2, p0}, LJ/N;->M0BAvNEw(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method
