.class public Lorg/chromium/chrome/browser/notifications/scheduler/NotificationSchedulerTask;
.super LH10;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LH10;-><init>()V

    return-void
.end method

.method public static cancel()V
    .locals 3

    .line 1
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object v0

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    const/16 v2, 0x67

    .line 3
    check-cast v0, LjS0;

    invoke-virtual {v0, v1, v2}, LjS0;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static schedule(JJ)V
    .locals 2

    .line 1
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object v0

    const/16 v1, 0x67

    .line 2
    invoke-static {v1, p0, p1, p2, p3}, LOS0;->a(IJJ)LHS0;

    move-result-object p0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, LHS0;->f:Z

    .line 4
    iput-boolean p1, p0, LHS0;->e:Z

    .line 5
    invoke-virtual {p0}, LHS0;->a()LOS0;

    move-result-object p0

    .line 6
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 7
    check-cast v0, LjS0;

    invoke-virtual {v0, p1, p0}, LjS0;->a(Landroid/content/Context;LOS0;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/Context;LRS0;LKR0;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/content/Context;LRS0;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public c(Landroid/content/Context;LRS0;LKR0;)V
    .locals 0

    .line 1
    new-instance p1, LFm0;

    invoke-direct {p1, p0, p3}, LFm0;-><init>(Lorg/chromium/chrome/browser/notifications/scheduler/NotificationSchedulerTask;LKR0;)V

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p2

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/profiles/Profile;->b()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p2

    .line 3
    invoke-static {p0, p2, p1}, LJ/N;->Mgeg_Rc9(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Landroid/content/Context;LRS0;)Z
    .locals 0

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/profiles/Profile;->b()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, LJ/N;->M91xgL_Z(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
