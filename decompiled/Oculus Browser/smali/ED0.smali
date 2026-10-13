.class public LED0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LLR0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;LRS0;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/content/Context;LRS0;LKR0;)Z
    .locals 1

    .line 1
    iget-object p2, p2, LRS0;->b:Landroid/os/Bundle;

    .line 2
    new-instance p3, LtT0;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, LtT0;-><init>(LsT0;)V

    invoke-static {p2, p3}, LzT0;->a(Ljava/lang/Object;LxT0;)LzT0;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    new-array p1, p3, [Ljava/lang/Object;

    const-string p2, "GCMBackgroundTask"

    const-string v0, "The received bundle containing message data could not be validated."

    .line 3
    invoke-static {p2, v0, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p3

    .line 4
    :cond_0
    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService;->a(Landroid/content/Context;LzT0;)V

    return p3
.end method
