.class public Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;
    .locals 1

    .line 35
    sget-object v0, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;->a:Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;->a:Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;

    .line 36
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;->a:Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;

    return-object v0
.end method

.method public static synthetic b(I)V
    .locals 2

    .line 1
    new-instance v0, LFn0;

    invoke-direct {v0, p0}, LFn0;-><init>(I)V

    const/4 p0, 0x1

    .line 2
    invoke-static {p0}, LD01;->a(I)LF01;

    move-result-object p0

    .line 3
    invoke-interface {p0}, LF01;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, LGn0;

    invoke-direct {v1, v0}, LGn0;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {p0, v1}, LF01;->a(LE01;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, LFn0;->run()V

    :goto_0
    return-void
.end method

.method public static showDebuggingNotification(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;->a()Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const-string v0, "OfflinePages.Prefetching.NotificationAction"

    const/4 v1, 0x4

    .line 37
    invoke-static {v0, p1, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 10

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    const-class v1, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier$ClickReceiver;

    .line 3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v1}, Lpm0;->a(Landroid/content/Context;ILandroid/content/Intent;I)Lpm0;

    move-result-object v2

    const v3, 0x7f130441

    .line 4
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const v6, 0x7f13014c

    .line 5
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 6
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f130440

    .line 7
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v1

    .line 8
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v5, Lcm0;

    const-string v6, "OfflineContentSuggestionsNotification"

    const/16 v7, 0xc

    invoke-direct {v5, v7, v6, v4}, Lcm0;-><init>(ILjava/lang/String;I)V

    const-string v8, "content_suggestions"

    const/4 v9, 0x0

    .line 10
    invoke-static {v4, v8, v9, v5}, LXl0;->a(ZLjava/lang/String;Ljava/lang/String;Lcm0;)LPl0;

    move-result-object v5

    .line 11
    invoke-interface {v5, v4}, LPl0;->f(Z)LPl0;

    move-result-object v5

    .line 12
    invoke-interface {v5, v2}, LPl0;->b(Lpm0;)LPl0;

    move-result-object v2

    .line 13
    invoke-interface {v2, v3}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    move-result-object v2

    .line 14
    invoke-interface {v2, p1}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    move-result-object p1

    .line 15
    invoke-interface {p1, v6}, LPl0;->c(Ljava/lang/String;)LPl0;

    move-result-object p1

    const/4 v2, -0x1

    .line 16
    invoke-interface {p1, v2}, LPl0;->b(I)LPl0;

    move-result-object p1

    const v2, 0x7f08010d

    .line 17
    invoke-interface {p1, v2}, LPl0;->c(I)LPl0;

    move-result-object p1

    .line 18
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    .line 19
    const-class v2, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier$SettingsReceiver;

    .line 20
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1, v3, v1}, Lpm0;->a(Landroid/content/Context;ILandroid/content/Intent;I)Lpm0;

    move-result-object v2

    const v3, 0x7f0802bd

    const v5, 0x7f1304f2

    .line 21
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    invoke-interface {p1, v3, v5, v2, v6}, LPl0;->a(ILjava/lang/CharSequence;Lpm0;I)LPl0;

    .line 22
    :cond_0
    invoke-interface {p1}, LPl0;->b()LOl0;

    move-result-object p1

    .line 23
    new-instance v2, Lbm0;

    invoke-direct {v2, v0}, Lbm0;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {v2, p1}, Lbm0;->a(LOl0;)V

    .line 25
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v2, "prefetch_notification_ignored_counter"

    .line 26
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v4

    .line 27
    sget-object v1, LyT;->a:Landroid/content/SharedPreferences;

    .line 28
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 29
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;->a(I)V

    .line 32
    sget-object v0, Lnm0;->a:Lom0;

    .line 33
    iget-object p1, p1, LOl0;->a:Landroid/app/Notification;

    .line 34
    invoke-virtual {v0, v7, p1}, Lom0;->a(ILandroid/app/Notification;)V

    return-void
.end method
