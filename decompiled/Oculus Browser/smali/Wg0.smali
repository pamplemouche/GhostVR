.class public LWg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LnY;
.implements LkT;


# static fields
.field public static B:LWg0;


# instance fields
.field public A:I

.field public final w:Landroid/os/Handler;

.field public final x:Ljava/lang/Runnable;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LWg0;->w:Landroid/os/Handler;

    .line 3
    new-instance v0, LVg0;

    invoke-direct {v0, p0}, LVg0;-><init>(LWg0;)V

    iput-object v0, p0, LWg0;->x:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-boolean v0, p0, LWg0;->y:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, LWg0;->y:Z

    .line 4
    iget-object v0, p0, LWg0;->w:Landroid/os/Handler;

    iget-object v1, p0, LWg0;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 6
    iget-boolean v1, p0, LWg0;->z:Z

    invoke-static {v0, v1}, Lcom/oculus/browser/BrowserRestartService;->createIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 1
    iget p1, p0, LWg0;->A:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LWg0;->A:I

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, LWg0;->a()V

    :cond_0
    return-void
.end method

.method public onTerminate(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, LWg0;->z:Z

    .line 2
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3
    invoke-static {p0, v0}, Lorg/chromium/base/ApplicationStatus;->a(LkT;Landroid/app/Activity;)V

    .line 4
    iget v1, p0, LWg0;->A:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LWg0;->A:I

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, LWg0;->w:Landroid/os/Handler;

    iget-object v0, p0, LWg0;->x:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
