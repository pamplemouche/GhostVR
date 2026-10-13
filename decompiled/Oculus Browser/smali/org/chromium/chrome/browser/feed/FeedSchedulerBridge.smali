.class public Lorg/chromium/chrome/browser/feed/FeedSchedulerBridge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lwb0;


# instance fields
.field public a:J

.field public b:Lhw;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0, p1}, LJ/N;->MaWd4Nps(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lorg/chromium/chrome/browser/feed/FeedSchedulerBridge;->a:J

    return-void
.end method

.method private cancelWakeUp()V
    .locals 3

    .line 1
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object v0

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 3
    check-cast v0, LjS0;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, LjS0;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private scheduleWakeUp(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lvb0;->a(J)V

    return-void
.end method

.method private triggerRefresh()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/feed/FeedSchedulerBridge;->b:Lhw;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, LUy;

    invoke-virtual {v0}, LUy;->a()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 4
    iget-wide v0, p0, Lorg/chromium/chrome/browser/feed/FeedSchedulerBridge;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 5
    iget-wide v0, p0, Lorg/chromium/chrome/browser/feed/FeedSchedulerBridge;->a:J

    .line 6
    invoke-static {v0, v1, p0, p1}, LJ/N;->MdakQXC8(JLjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/feed/FeedSchedulerBridge;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/feed/FeedSchedulerBridge;->a:J

    .line 3
    invoke-static {v0, v1, p0, p1, p2}, LJ/N;->MegjDW8s(JLjava/lang/Object;J)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .line 7
    iget-wide v0, p0, Lorg/chromium/chrome/browser/feed/FeedSchedulerBridge;->a:J

    .line 8
    invoke-static {v0, v1, p0, p1}, LJ/N;->MxTUDJlK(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)Z
    .locals 2

    .line 9
    iget-wide v0, p0, Lorg/chromium/chrome/browser/feed/FeedSchedulerBridge;->a:J

    .line 10
    invoke-static {v0, v1, p0, p1}, LJ/N;->MNgS0Qir(JLjava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/feed/FeedSchedulerBridge;->a:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->M9Vgwidk(JLjava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lorg/chromium/chrome/browser/feed/FeedSchedulerBridge;->a:J

    return-void
.end method
