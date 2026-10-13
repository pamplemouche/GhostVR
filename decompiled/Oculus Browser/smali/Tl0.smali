.class public LTl0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public synthetic constructor <init>(LRl0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Service;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Landroid/app/Service;->stopForeground(I)V

    goto :goto_1

    :cond_0
    and-int/2addr p2, v1

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1, p2}, Landroid/app/Service;->stopForeground(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "ForegroundService"

    const-string v0, "Failed to stop foreground service, "

    .line 6
    invoke-static {p1, v0, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public a(Landroid/app/Service;ILandroid/app/Notification;I)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method
