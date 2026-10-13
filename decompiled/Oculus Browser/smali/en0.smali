.class public Len0;
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
    .locals 0

    .line 1
    sget-object p1, Lan0;->a:Lbn0;

    .line 2
    invoke-virtual {p1}, Lbn0;->a()V

    return-void
.end method

.method public b(Landroid/content/Context;LRS0;LKR0;)I
    .locals 2

    .line 1
    iget-object p2, p2, LRS0;->b:Landroid/os/Bundle;

    .line 2
    invoke-static {p2}, Lon0;->a(Landroid/os/Bundle;)Lorg/chromium/chrome/browser/offlinepages/TriggerConditions;

    move-result-object p2

    .line 3
    invoke-static {p1}, LhZ;->b(Landroid/content/Context;)LhZ;

    move-result-object p1

    .line 4
    iget-boolean p3, p1, LhZ;->a:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_1

    .line 5
    iget p1, p1, LhZ;->b:I

    .line 6
    iget p2, p2, Lorg/chromium/chrome/browser/offlinepages/TriggerConditions;->b:I

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    :goto_2
    const/4 p1, 0x0

    goto :goto_5

    .line 7
    :cond_2
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 p1, 0x1

    :goto_4
    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    :goto_5
    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public b(Landroid/content/Context;LRS0;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public c(Landroid/content/Context;LRS0;LKR0;)V
    .locals 7

    .line 1
    sget-object v0, Lcn0;->a:Lcn0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn0;

    invoke-direct {v0}, Lcn0;-><init>()V

    sput-object v0, Lcn0;->a:Lcn0;

    .line 3
    :cond_0
    sget-object v0, Lcn0;->a:Lcn0;

    .line 4
    iget-object v1, p2, LRS0;->b:Landroid/os/Bundle;

    .line 5
    new-instance v1, Ldn0;

    invoke-direct {v1, p0, p3}, Ldn0;-><init>(Len0;LKR0;)V

    .line 6
    invoke-static {p1}, LhZ;->b(Landroid/content/Context;)LhZ;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 7
    iget-boolean v0, p1, LhZ;->a:Z

    .line 8
    iget v2, p1, LhZ;->b:I

    .line 9
    iget p1, p1, LhZ;->d:I

    .line 10
    invoke-static {v0, v2, p1, v1}, LJ/N;->MrvK6$zt(ZIILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 11
    invoke-interface {p3, p1}, LKR0;->a(Z)V

    return-void

    .line 12
    :cond_1
    sget-object v0, Lan0;->a:Lbn0;

    .line 13
    iget-object p1, p2, LRS0;->b:Landroid/os/Bundle;

    .line 14
    invoke-static {p1}, Lon0;->a(Landroid/os/Bundle;)Lorg/chromium/chrome/browser/offlinepages/TriggerConditions;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    const-wide/32 v4, 0x240c8400

    const/4 v6, 0x0

    .line 15
    invoke-virtual/range {v0 .. v6}, Lbn0;->a(Lorg/chromium/chrome/browser/offlinepages/TriggerConditions;JJZ)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 16
    throw p1
.end method

.method public c(Landroid/content/Context;LRS0;)Z
    .locals 0

    .line 17
    sget-object p1, Lcn0;->a:Lcn0;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcn0;

    invoke-direct {p1}, Lcn0;-><init>()V

    sput-object p1, Lcn0;->a:Lcn0;

    .line 19
    :cond_0
    sget-object p1, Lcn0;->a:Lcn0;

    if-eqz p1, :cond_1

    .line 20
    invoke-static {}, LJ/N;->MMBt6JJr()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method
