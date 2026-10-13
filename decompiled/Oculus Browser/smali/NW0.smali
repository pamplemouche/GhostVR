.class public final synthetic LNW0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final a:Lorg/chromium/content/browser/TtsPlatformImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/TtsPlatformImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LNW0;->a:Lorg/chromium/content/browser/TtsPlatformImpl;

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2

    iget-object v0, p0, LNW0;->a:Lorg/chromium/content/browser/TtsPlatformImpl;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, LZ01;->a:LFW;

    new-instance v1, LRW0;

    invoke-direct {v1, v0}, LRW0;-><init>(Lorg/chromium/content/browser/TtsPlatformImpl;)V

    invoke-static {p1, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
