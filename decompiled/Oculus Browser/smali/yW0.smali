.class public LyW0;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "PG"


# instance fields
.field public final synthetic a:LzW0;


# direct methods
.method public constructor <init>(LzW0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LyW0;->a:LzW0;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, LyW0;->a:LzW0;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, LZ01;->a:LFW;

    new-instance v2, LOW0;

    invoke-direct {v2, v0, p1}, LOW0;-><init>(Lorg/chromium/content/browser/TtsPlatformImpl;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object p2, p0, LyW0;->a:LzW0;

    if-eqz p2, :cond_0

    .line 2
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LPW0;

    invoke-direct {v1, p2, p1}, LPW0;-><init>(Lorg/chromium/content/browser/TtsPlatformImpl;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, LyW0;->a:LzW0;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, LZ01;->a:LFW;

    new-instance v2, LQW0;

    invoke-direct {v2, v0, p1}, LQW0;-><init>(Lorg/chromium/content/browser/TtsPlatformImpl;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
