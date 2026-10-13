.class public Lbn0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const-wide/32 v0, 0x493e0

    const-wide/32 v2, 0x240c8400

    .line 1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "ScheduleTime"

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "PowerConnected"

    const/4 v6, 0x0

    .line 3
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "BatteryPercentage"

    .line 4
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "UnmeteredNetwork"

    .line 5
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v5, 0x4d

    .line 6
    invoke-static {v5, v0, v1, v2, v3}, LOS0;->a(IJJ)LHS0;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    iput v1, v0, LHS0;->c:I

    .line 8
    iput-boolean v6, v0, LHS0;->f:Z

    .line 9
    iput-boolean v1, v0, LHS0;->e:Z

    .line 10
    iput-object v4, v0, LHS0;->b:Landroid/os/Bundle;

    .line 11
    iput-boolean v6, v0, LHS0;->d:Z

    .line 12
    invoke-virtual {v0}, LHS0;->a()LOS0;

    move-result-object v0

    .line 13
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object v1

    .line 14
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 15
    check-cast v1, LjS0;

    invoke-virtual {v1, v2, v0}, LjS0;->a(Landroid/content/Context;LOS0;)Z

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/offlinepages/TriggerConditions;JJZ)V
    .locals 4

    .line 16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "ScheduleTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 18
    iget-boolean v1, p1, Lorg/chromium/chrome/browser/offlinepages/TriggerConditions;->a:Z

    const-string v2, "PowerConnected"

    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    iget v1, p1, Lorg/chromium/chrome/browser/offlinepages/TriggerConditions;->b:I

    const-string v2, "BatteryPercentage"

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    iget-boolean v1, p1, Lorg/chromium/chrome/browser/offlinepages/TriggerConditions;->c:Z

    const-string v2, "UnmeteredNetwork"

    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x4d

    .line 24
    invoke-static {v1, p2, p3, p4, p5}, LOS0;->a(IJJ)LHS0;

    move-result-object p2

    .line 25
    iget-boolean p3, p1, Lorg/chromium/chrome/browser/offlinepages/TriggerConditions;->c:Z

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 26
    :goto_0
    iput p3, p2, LHS0;->c:I

    .line 27
    iput-boolean p6, p2, LHS0;->f:Z

    .line 28
    iput-boolean p4, p2, LHS0;->e:Z

    .line 29
    iput-object v0, p2, LHS0;->b:Landroid/os/Bundle;

    .line 30
    iget-boolean p1, p1, Lorg/chromium/chrome/browser/offlinepages/TriggerConditions;->a:Z

    .line 31
    iput-boolean p1, p2, LHS0;->d:Z

    .line 32
    invoke-virtual {p2}, LHS0;->a()LOS0;

    move-result-object p1

    .line 33
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object p2

    .line 34
    sget-object p3, LzT;->a:Landroid/content/Context;

    .line 35
    check-cast p2, LjS0;

    invoke-virtual {p2, p3, p1}, LjS0;->a(Landroid/content/Context;LOS0;)Z

    return-void
.end method
