.class public Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static d:Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;


# instance fields
.field public a:LKR0;

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cancelTask()V
    .locals 3

    .line 1
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object v0

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    const/4 v2, 0x2

    .line 3
    check-cast v0, LjS0;

    invoke-virtual {v0, v1, v2}, LjS0;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private finishTask(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->a:LKR0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LKR0;->a(Z)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->a:LKR0;

    if-eqz p1, :cond_0

    .line 3
    iget-wide v0, p0, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->c:J

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->a(J)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->d:Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->d:Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;

    .line 3
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->d:Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;

    return-object v0
.end method

.method public static isAvailable()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 2
    sget-object v0, Ldm;->d:Ldm;

    .line 3
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v0, v1}, Ldm;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private schedule(JJ)V
    .locals 0

    .line 1
    iput-wide p3, p0, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->c:J

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->a(J)V

    return-void
.end method

.method private setNativeScheduler(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->b:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MGPsKKYQ(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->a:LKR0;

    .line 4
    iget-wide v0, p0, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->c:J

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->a(J)V

    return-void
.end method

.method public final a(J)V
    .locals 3

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/component_updater/UpdateScheduler;->a:LKR0;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/32 v0, 0x7fffffff

    const/4 v2, 0x2

    .line 6
    invoke-static {v2, p1, p2, v0, v1}, LOS0;->a(IJJ)LHS0;

    move-result-object p1

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p1, LHS0;->f:Z

    .line 8
    iput v2, p1, LHS0;->c:I

    .line 9
    iput-boolean p2, p1, LHS0;->e:Z

    .line 10
    invoke-virtual {p1}, LHS0;->a()LOS0;

    move-result-object p1

    .line 11
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object p2

    .line 12
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 13
    check-cast p2, LjS0;

    invoke-virtual {p2, v0, p1}, LjS0;->a(Landroid/content/Context;LOS0;)Z

    return-void
.end method
