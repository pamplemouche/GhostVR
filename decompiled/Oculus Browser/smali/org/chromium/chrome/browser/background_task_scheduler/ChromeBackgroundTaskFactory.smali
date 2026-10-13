.class public Lorg/chromium/chrome/browser/background_task_scheduler/ChromeBackgroundTaskFactory;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LNR0;


# direct methods
.method public synthetic constructor <init>(Lz10;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAsDefault()V
    .locals 1

    .line 1
    sget-object v0, LA10;->a:Lorg/chromium/chrome/browser/background_task_scheduler/ChromeBackgroundTaskFactory;

    .line 2
    sput-object v0, LcS0;->b:LNR0;

    return-void
.end method


# virtual methods
.method public a(I)LLR0;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/16 v0, 0x16

    if-eq p1, v0, :cond_2

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_1

    const v0, 0x11684

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const-string v0, "Unable to find BackgroundTask class for task id "

    .line 1
    invoke-static {v0, p1}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ChromeBkgrdTaskF"

    invoke-static {v1, p1, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 2
    :pswitch_0
    new-instance p1, La90;

    invoke-direct {p1}, La90;-><init>()V

    return-object p1

    .line 3
    :pswitch_1
    new-instance p1, Lea0;

    invoke-direct {p1}, Lea0;-><init>()V

    return-object p1

    .line 4
    :pswitch_2
    new-instance p1, Lorg/chromium/chrome/browser/offlinepages/prefetch/OfflineNotificationBackgroundTask;

    invoke-direct {p1}, Lorg/chromium/chrome/browser/offlinepages/prefetch/OfflineNotificationBackgroundTask;-><init>()V

    return-object p1

    .line 5
    :pswitch_3
    new-instance p1, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTask;

    invoke-direct {p1}, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTask;-><init>()V

    return-object p1

    .line 6
    :pswitch_4
    new-instance p1, Len0;

    invoke-direct {p1}, Len0;-><init>()V

    return-object p1

    .line 7
    :pswitch_5
    new-instance p1, Ly10;

    invoke-direct {p1}, Ly10;-><init>()V

    return-object p1

    .line 8
    :pswitch_6
    new-instance p1, Lim0;

    invoke-direct {p1}, Lim0;-><init>()V

    return-object p1

    .line 9
    :pswitch_7
    new-instance p1, Lorg/chromium/chrome/browser/notifications/scheduler/NotificationSchedulerTask;

    invoke-direct {p1}, Lorg/chromium/chrome/browser/notifications/scheduler/NotificationSchedulerTask;-><init>()V

    return-object p1

    .line 10
    :pswitch_8
    new-instance p1, Lw10;

    invoke-direct {p1}, Lw10;-><init>()V

    return-object p1

    .line 11
    :pswitch_9
    new-instance p1, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesBackgroundTask;

    invoke-direct {p1}, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesBackgroundTask;-><init>()V

    return-object p1

    .line 12
    :cond_0
    new-instance p1, LQn0;

    invoke-direct {p1}, LQn0;-><init>()V

    return-object p1

    .line 13
    :cond_1
    new-instance p1, LqP0;

    invoke-direct {p1}, LqP0;-><init>()V

    return-object p1

    .line 14
    :cond_2
    new-instance p1, Lvb0;

    invoke-direct {p1}, Lvb0;-><init>()V

    return-object p1

    .line 15
    :cond_3
    new-instance p1, LI20;

    invoke-direct {p1}, LI20;-><init>()V

    return-object p1

    .line 16
    :cond_4
    new-instance p1, LED0;

    invoke-direct {p1}, LED0;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4d
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x64
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
