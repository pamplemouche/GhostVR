.class Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;
.super Ljava/lang/Object;
.source "VrNotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotifcationKey"
.end annotation


# instance fields
.field private final mHash:I

.field private final mId:I

.field private final mPackage:Ljava/lang/String;

.field private final mTag:Ljava/lang/String;

.field final synthetic this$1:Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    .line 325
    iput-object p1, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;->this$1:Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;->mPackage:Ljava/lang/String;

    .line 327
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;->mTag:Ljava/lang/String;

    .line 328
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p1

    iput p1, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;->mId:I

    const/4 p1, 0x3

    .line 329
    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;->mPackage:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iget-object p2, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;->mTag:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p2, p1, v0

    iget p2, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;->mId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;->mHash:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 337
    instance-of v2, p1, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;

    if-nez v2, :cond_1

    goto :goto_1

    .line 340
    :cond_1
    check-cast p1, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;

    .line 341
    iget v2, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;->mId:I

    iget v3, p1, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;->mId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;->mPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;->mPackage:Ljava/lang/String;

    .line 342
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;->mTag:Ljava/lang/String;

    iget-object p1, p1, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;->mTag:Ljava/lang/String;

    .line 343
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 348
    iget v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;->mHash:I

    return v0
.end method
