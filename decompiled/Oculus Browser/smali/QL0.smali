.class public abstract LQL0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LPl0;

.field public static b:I


# direct methods
.method public static a(Landroid/app/Notification;)V
    .locals 3

    .line 11
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 12
    new-instance v1, Lbm0;

    invoke-direct {v1, v0}, Lbm0;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "NotifManagerProxy"

    const-string v1, "Failed to create notification."

    .line 13
    invoke-static {v0, v1, p0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, v1, Lbm0;->b:Landroid/app/NotificationManager;

    const-string v2, "tracing_status"

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :goto_0
    return-void
.end method

.method public static a()Z
    .locals 4

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    new-instance v1, Lbm0;

    invoke-direct {v1, v0}, Lbm0;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, v1, Lbm0;->a:Landroid/content/Context;

    .line 4
    new-instance v1, LK3;

    invoke-direct {v1, v0}, LK3;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v1}, LK3;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-lt v0, v2, :cond_3

    .line 7
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 8
    new-instance v2, Lbm0;

    invoke-direct {v2, v0}, Lbm0;-><init>(Landroid/content/Context;)V

    .line 9
    iget-object v0, v2, Lbm0;->b:Landroid/app/NotificationManager;

    const-string v2, "browser"

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_0
    return v3
.end method

.method public static b()LPl0;
    .locals 3

    const-string v0, "browser"

    const/4 v1, 0x1

    .line 1
    invoke-static {v1, v0}, LXl0;->a(ZLjava/lang/String;)LPl0;

    move-result-object v0

    .line 2
    invoke-interface {v0, v1}, LPl0;->a(I)LPl0;

    move-result-object v0

    const v2, 0x7f08010d

    .line 3
    invoke-interface {v0, v2}, LPl0;->c(I)LPl0;

    move-result-object v0

    const/4 v2, 0x0

    .line 4
    invoke-interface {v0, v2}, LPl0;->b(Z)LPl0;

    move-result-object v0

    .line 5
    invoke-interface {v0, v1}, LPl0;->c(Z)LPl0;

    move-result-object v0

    return-object v0
.end method
