.class public Lom0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:LK3;


# direct methods
.method public synthetic constructor <init>(Lmm0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, LyT;->a:Landroid/content/SharedPreferences;

    .line 3
    iput-object p1, p0, Lom0;->a:Landroid/content/SharedPreferences;

    .line 4
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 5
    new-instance v0, LK3;

    invoke-direct {v0, p1}, LK3;-><init>(Landroid/content/Context;)V

    .line 6
    iput-object v0, p0, Lom0;->b:LK3;

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 5
    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x15

    .line 6
    invoke-static {p0, p1, v0}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 5

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 p1, 0xea60

    div-long/2addr v0, p1

    const-wide/16 p1, 0x0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, p1

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    move-wide p1, v2

    goto :goto_0

    :cond_2
    move-wide p1, v0

    :goto_0
    long-to-int p2, p1

    .line 21
    new-instance p1, LZU;

    const/4 v0, 0x1

    const/16 v1, 0x2760

    const/16 v2, 0x32

    invoke-direct {p1, p0, v0, v1, v2}, LZU;-><init>(Ljava/lang/String;III)V

    .line 22
    invoke-virtual {p1, p2}, LZU;->a(I)V

    return-void
.end method


# virtual methods
.method public a(ILandroid/app/Notification;)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lom0;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p1, p2}, Lom0;->a(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lom0;->b:LK3;

    invoke-virtual {v0}, LK3;->a()Z

    move-result v0

    const-string v1, "NotificationUmaTracker.LastShownNotificationType"

    if-nez v0, :cond_1

    .line 8
    iget-object p2, p0, Lom0;->a:Landroid/content/SharedPreferences;

    const/4 v0, -0x1

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lom0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "Mobile.SystemNotification.BlockedAfterShown"

    .line 10
    invoke-static {v0, p2}, Lom0;->a(Ljava/lang/String;I)V

    :goto_0
    const-string p2, "Mobile.SystemNotification.Blocked"

    .line 11
    invoke-static {p2, p1}, Lom0;->a(Ljava/lang/String;I)V

    return-void

    .line 12
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_3

    if-eqz p2, :cond_3

    .line 13
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 14
    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 15
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 16
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_3

    const-string p2, "Mobile.SystemNotification.ChannelBlocked"

    .line 17
    invoke-static {p2, p1}, Lom0;->a(Ljava/lang/String;I)V

    return-void

    .line 18
    :cond_3
    iget-object p2, p0, Lom0;->a:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p2, "Mobile.SystemNotification.Shown"

    .line 19
    invoke-static {p2, p1}, Lom0;->a(Ljava/lang/String;I)V

    return-void
.end method
