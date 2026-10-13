.class public LI20;
.super LH10;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LH10;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->getInstance()Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;

    move-result-object p1

    .line 2
    iget-wide v0, p1, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->c:J

    invoke-virtual {p1, v0, v1}, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->a(J)V

    return-void
.end method

.method public b(Landroid/content/Context;LRS0;LKR0;)I
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->getInstance()Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;

    move-result-object p1

    .line 2
    iput-object p3, p1, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->a:LKR0;

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/content/Context;LRS0;)Z
    .locals 0

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->getInstance()Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/content/Context;LRS0;LKR0;)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->getInstance()Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;

    move-result-object p1

    .line 2
    iget-wide p2, p1, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->b:J

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    .line 3
    invoke-static {p2, p3, p1}, LJ/N;->MlOPWyho(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/content/Context;LRS0;)Z
    .locals 0

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->getInstance()Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->a()V

    const/4 p1, 0x0

    return p1
.end method
