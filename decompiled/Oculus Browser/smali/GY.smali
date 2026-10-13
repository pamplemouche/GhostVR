.class public final synthetic LGY;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LlT;


# instance fields
.field public final a:LHY;


# direct methods
.method public constructor <init>(LHY;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LGY;->a:LHY;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    iget-object v0, p0, LGY;->a:LHY;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne p1, v2, :cond_5

    .line 1
    iget-boolean p1, v0, LHY;->d:Z

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sput-wide v4, Lorg/chromium/chrome/browser/metrics/UmaUtils;->c:J

    const-string p1, "ProfileManagerUtils.commitPendingWritesForAllProfiles"

    .line 3
    :try_start_0
    invoke-static {p1, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, LJ/N;->MPpDwRXN()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {p1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    .line 6
    iput-boolean v3, v0, LHY;->d:Z

    .line 7
    iget-object p1, v0, LHY;->a:LFZ;

    .line 8
    iget-object v0, p1, LFZ;->c:LEZ;

    .line 9
    iget v2, v0, LEZ;->x:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    .line 10
    iput v2, v0, LEZ;->x:I

    .line 11
    iget-object v2, v0, LEZ;->w:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    :goto_0
    iget-object v0, p1, LFZ;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 14
    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 15
    :cond_2
    sput-object v1, LqZ;->e:Landroid/util/Pair;

    .line 16
    sput-object v1, LqZ;->g:Ljava/lang/String;

    .line 17
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 18
    instance-of v1, v0, Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 19
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->Z()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()LpI0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 21
    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->e()I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_1

    :cond_4
    const-string p1, "Tab.TotalTabCount.BeforeLeavingApp"

    .line 22
    invoke-static {p1, v3}, LfV;->c(Ljava/lang/String;I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 23
    invoke-static {p1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 24
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 25
    sput-boolean v3, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->d:Z

    .line 26
    sget-object p1, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 27
    sput-object v1, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->a:Ljava/lang/String;

    .line 28
    sget-object p1, LkW;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sget-object v0, LPD0;->w:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    :goto_2
    return-void

    .line 29
    :cond_7
    throw v1
.end method
