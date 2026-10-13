.class public LtG0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LoG0;


# instance fields
.field public final w:Lam0;

.field public final x:Lorg/chromium/chrome/browser/sync/ProfileSyncService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lbm0;

    .line 3
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-direct {v0, v1}, Lbm0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LtG0;->w:Lam0;

    .line 5
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    iput-object v0, p0, LtG0;->x:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)V
    .locals 6

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const v3, 0x7f130589

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v1, 0x7f13014c

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    :goto_0
    new-instance v2, Lpm0;

    const/4 v3, 0x0

    .line 9
    invoke-static {v0, v3, p2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-direct {v2, p2, v3}, Lpm0;-><init>(Landroid/app/PendingIntent;I)V

    .line 10
    new-instance p2, Lcm0;

    const/16 v0, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p2, v0, v3, v4}, Lcm0;-><init>(ILjava/lang/String;I)V

    const-string v5, "browser"

    .line 11
    invoke-static {v4, v5, v3, p2}, LXl0;->a(ZLjava/lang/String;Ljava/lang/String;Lcm0;)LPl0;

    move-result-object p2

    .line 12
    invoke-interface {p2, v4}, LPl0;->f(Z)LPl0;

    move-result-object p2

    .line 13
    invoke-interface {p2, v2}, LPl0;->b(Lpm0;)LPl0;

    move-result-object p2

    .line 14
    invoke-interface {p2, v1}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    move-result-object p2

    .line 15
    invoke-interface {p2, p1}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    move-result-object p2

    const v1, 0x7f08010d

    .line 16
    invoke-interface {p2, v1}, LPl0;->c(I)LPl0;

    move-result-object p2

    .line 17
    invoke-interface {p2, p1}, LPl0;->b(Ljava/lang/CharSequence;)LPl0;

    move-result-object p2

    .line 18
    invoke-interface {p2, v4}, LPl0;->c(Z)LPl0;

    move-result-object p2

    const-string v1, "Sync"

    .line 19
    invoke-interface {p2, v1}, LPl0;->c(Ljava/lang/String;)LPl0;

    move-result-object p2

    .line 20
    invoke-interface {p2, p1}, LPl0;->d(Ljava/lang/String;)LOl0;

    move-result-object p1

    .line 21
    iget-object p2, p0, LtG0;->w:Lam0;

    check-cast p2, Lbm0;

    invoke-virtual {p2, p1}, Lbm0;->a(LOl0;)V

    .line 22
    sget-object p2, Lnm0;->a:Lom0;

    .line 23
    iget-object p1, p1, LOl0;->a:Landroid/app/Notification;

    .line 24
    invoke-virtual {p2, v0, p1}, Lom0;->a(ILandroid/app/Notification;)V

    return-void
.end method

.method public f()V
    .locals 6

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v0

    invoke-virtual {v0}, LnV0;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, LtG0;->w:Lam0;

    check-cast v0, Lbm0;

    .line 4
    iget-object v0, v0, Lbm0;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, LtG0;->x:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_2

    const/4 v5, 0x7

    if-eq v0, v5, :cond_2

    const/16 v5, 0x9

    if-eq v0, v5, :cond_2

    const-string v0, "Not showing unknown Auth Error: "

    .line 6
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, LtG0;->x:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "SyncNotificationController"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, LtG0;->x:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 8
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b()I

    move-result v0

    invoke-static {v0}, LlG0;->a(I)I

    move-result v0

    .line 9
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 10
    const-class v2, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v4}, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->g(Z)Landroid/os/Bundle;

    move-result-object v3

    .line 13
    invoke-static {v1, v2, v3}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 14
    invoke-virtual {p0, v0, v1}, LtG0;->a(ILandroid/content/Intent;)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object v0, p0, LtG0;->x:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, LtG0;->x:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 16
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    iget-object v0, p0, LtG0;->x:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 18
    iget-wide v4, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 19
    invoke-static {v4, v5, v0}, LJ/N;->MVrj7ZUK(JLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 20
    :cond_4
    iget-object v0, p0, LtG0;->x:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->c()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_5

    .line 21
    iget-object v0, p0, LtG0;->w:Lam0;

    check-cast v0, Lbm0;

    .line 22
    iget-object v0, v0, Lbm0;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    :cond_5
    const v0, 0x7f1305de

    .line 23
    iget-object v2, p0, LtG0;->x:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 24
    iget-wide v3, v2, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 25
    invoke-static {v3, v4, v2, v1}, LJ/N;->Miy4KuvH(JLjava/lang/Object;Z)V

    .line 26
    new-instance v1, Landroid/content/Intent;

    .line 27
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 28
    const-class v3, LxG0;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 29
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    .line 30
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v0, v1}, LtG0;->a(ILandroid/content/Intent;)V

    :goto_2
    return-void

    .line 32
    :cond_6
    iget-object v0, p0, LtG0;->w:Lam0;

    check-cast v0, Lbm0;

    .line 33
    iget-object v0, v0, Lbm0;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method
