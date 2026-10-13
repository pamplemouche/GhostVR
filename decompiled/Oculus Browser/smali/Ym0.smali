.class public final synthetic LYm0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LYm0;->a:Ljava/lang/String;

    iput p2, p0, LYm0;->b:I

    iput-wide p3, p0, LYm0;->c:J

    iput-object p5, p0, LYm0;->d:Ljava/lang/String;

    iput-object p6, p0, LYm0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, LYm0;->a:Ljava/lang/String;

    iget v1, p0, LYm0;->b:I

    iget-wide v2, p0, LYm0;->c:J

    iget-object v4, p0, LYm0;->d:Ljava/lang/String;

    iget-object v5, p0, LYm0;->e:Ljava/lang/String;

    check-cast p1, Lorg/chromium/content_public/browser/LoadUrlParams;

    .line 1
    sget-object v6, LzT;->a:Landroid/content/Context;

    .line 2
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lorg/chromium/chrome/browser/offlinepages/AutoFetchNotifier$CompleteNotificationReceiver;

    invoke-direct {v7, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "org.chromium.chrome.browser.offlinepages.URL"

    .line 3
    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "REUSE_TAB_ORIGINAL_URL"

    .line 4
    invoke-virtual {v7, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p1, p1, Lorg/chromium/content_public/browser/LoadUrlParams;->f:Ljava/util/Map;

    .line 6
    invoke-static {p1, v7}, LqZ;->a(Ljava/util/Map;Landroid/content/Intent;)V

    const-string p1, "REUSE_TAB_MATCHING_ID"

    .line 7
    invoke-virtual {v7, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.android.browser.application_id"

    invoke-virtual {v7, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x4

    const-string v4, "notification_action"

    .line 9
    invoke-virtual {v7, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x2

    const-string v5, "org.chromium.chrome.browser.tab_launch_type"

    .line 10
    invoke-virtual {v7, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    long-to-int p1, v2

    const/4 v2, 0x0

    .line 12
    invoke-static {v6, p1, v7, v2}, Lpm0;->a(Landroid/content/Context;ILandroid/content/Intent;I)Lpm0;

    move-result-object v3

    .line 13
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lorg/chromium/chrome/browser/offlinepages/AutoFetchNotifier$CompleteNotificationReceiver;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 15
    invoke-virtual {v5, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    new-instance v1, Lcm0;

    const-string v4, "OfflinePageAutoFetchNotification"

    const/16 v7, 0xe

    invoke-direct {v1, v7, v4, p1}, Lcm0;-><init>(ILjava/lang/String;I)V

    const/4 p1, 0x0

    const/4 v8, 0x1

    const-string v9, "downloads"

    .line 18
    invoke-static {v8, v9, p1, v1}, LXl0;->a(ZLjava/lang/String;Ljava/lang/String;Lcm0;)LPl0;

    move-result-object p1

    .line 19
    invoke-interface {p1, v8}, LPl0;->f(Z)LPl0;

    move-result-object p1

    .line 20
    invoke-interface {p1, v3}, LPl0;->b(Lpm0;)LPl0;

    move-result-object p1

    .line 21
    invoke-interface {p1, v0}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    move-result-object p1

    const v0, 0x7f13043f

    .line 22
    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    move-result-object p1

    .line 23
    invoke-interface {p1, v4}, LPl0;->c(Ljava/lang/String;)LPl0;

    move-result-object p1

    const/4 v0, -0x1

    .line 24
    invoke-interface {p1, v0}, LPl0;->b(I)LPl0;

    move-result-object p1

    const v0, 0x7f08010d

    .line 25
    invoke-interface {p1, v0}, LPl0;->c(I)LPl0;

    move-result-object p1

    .line 26
    invoke-static {v6, v2, v5, v2}, Lpm0;->a(Landroid/content/Context;ILandroid/content/Intent;I)Lpm0;

    move-result-object v0

    invoke-interface {p1, v0}, LPl0;->a(Lpm0;)LPl0;

    move-result-object p1

    .line 27
    invoke-interface {p1}, LPl0;->b()LOl0;

    move-result-object p1

    .line 28
    new-instance v0, Lbm0;

    invoke-direct {v0, v6}, Lbm0;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {v0, p1}, Lbm0;->a(LOl0;)V

    .line 30
    sget-object v0, Lnm0;->a:Lom0;

    .line 31
    iget-object p1, p1, LOl0;->a:Landroid/app/Notification;

    .line 32
    invoke-virtual {v0, v7, p1}, Lom0;->a(ILandroid/app/Notification;)V

    .line 33
    new-instance p1, LaV;

    const-string v0, "OfflinePages.AutoFetch.CompleteNotificationAction"

    const/4 v1, 0x5

    invoke-direct {p1, v0, v1}, LaV;-><init>(Ljava/lang/String;I)V

    .line 34
    invoke-virtual {p1, v2}, LaV;->a(I)V

    return-void
.end method
