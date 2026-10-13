.class Lcom/oculus/vrshell/notifications/VrNotificationListenerService$1;
.super Ljava/lang/Object;
.source "VrNotificationListenerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/notifications/VrNotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/service/notification/StatusBarNotification;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/notifications/VrNotificationListenerService;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/notifications/VrNotificationListenerService;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$1;->this$0:Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTimeOfPost(Landroid/service/notification/StatusBarNotification;)Ljava/lang/Long;
    .locals 5

    .line 289
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-wide/16 v1, -0x1

    const-string v3, "original_post_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 291
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v3

    .line 293
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public compare(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)I
    .locals 2

    .line 285
    invoke-direct {p0, p2}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$1;->getTimeOfPost(Landroid/service/notification/StatusBarNotification;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$1;->getTimeOfPost(Landroid/service/notification/StatusBarNotification;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 282
    check-cast p1, Landroid/service/notification/StatusBarNotification;

    check-cast p2, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$1;->compare(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)I

    move-result p1

    return p1
.end method
