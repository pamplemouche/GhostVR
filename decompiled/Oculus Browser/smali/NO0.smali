.class public final synthetic LNO0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LNO0;->w:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LNO0;->w:Landroid/content/Context;

    .line 1
    new-instance v1, Lbm0;

    invoke-direct {v1, v0}, Lbm0;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    const-string v3, "vr"

    .line 2
    invoke-static {v2, v3}, LXl0;->a(ZLjava/lang/String;)LPl0;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f130656

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f130655

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    move-result-object v0

    const v2, 0x7f08010d

    .line 5
    invoke-interface {v0, v2}, LPl0;->c(I)LPl0;

    move-result-object v0

    const-string v2, "msg"

    .line 6
    invoke-interface {v0, v2}, LPl0;->a(Ljava/lang/String;)LPl0;

    move-result-object v0

    const/4 v2, 0x2

    .line 7
    invoke-interface {v0, v2}, LPl0;->b(I)LPl0;

    move-result-object v0

    .line 8
    invoke-interface {v0}, LPl0;->a()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "NotifManagerProxy"

    const-string v3, "Failed to create notification."

    .line 9
    invoke-static {v2, v3, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, v1, Lbm0;->b:Landroid/app/NotificationManager;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 11
    :goto_0
    sget-object v0, LZ01;->a:LFW;

    new-instance v2, LOO0;

    invoke-direct {v2, v1}, LOO0;-><init>(Lam0;)V

    const-wide/16 v3, 0x1388

    invoke-static {v0, v2, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method
