.class public Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;
.super Ljava/lang/Object;
.source "NotificationItem.java"

# interfaces
.implements Lcom/oculus/horizon/feedbuilder/FeedItem;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeeplinkUri:Landroid/net/Uri;

.field private mExtraData:Ljava/lang/String;

.field private mIconUri:Landroid/net/Uri;

.field private final mId:Ljava/lang/String;

.field private mIsRead:Z

.field private mMessage:Ljava/lang/String;

.field private mNotificationOptOutTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationType:Lcom/oculus/horizon/notifications/core/NotificationType;

.field private mRenderStyleArray:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSeenState:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

.field private mSendTime:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private final mUUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/oculus/horizon/notifications/core/NotificationType;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/ArrayList;ZLcom/oculus/horizon/notifications/api/NotificationSeenState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/horizon/notifications/core/NotificationType;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/oculus/horizon/notifications/api/NotificationSeenState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mNotificationType:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 92
    iput-object p2, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mNotificationOptOutTypes:Ljava/util/ArrayList;

    .line 93
    iput-object p3, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mId:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mUUID:Ljava/lang/String;

    .line 95
    iput-object p5, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mTitle:Ljava/lang/String;

    .line 96
    iput-object p6, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mSendTime:Ljava/lang/String;

    .line 97
    iput-object p7, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mMessage:Ljava/lang/String;

    .line 98
    iput-object p8, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mExtraData:Ljava/lang/String;

    .line 99
    iput-object p9, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mIconUri:Landroid/net/Uri;

    .line 100
    iput-object p10, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mDeeplinkUri:Landroid/net/Uri;

    .line 101
    invoke-static {p11}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mRenderStyleArray:Lcom/google/common/collect/ImmutableList;

    .line 102
    iput-boolean p12, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mIsRead:Z

    .line 103
    iput-object p13, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mSeenState:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    .line 104
    return-void
.end method

.method public static fromResponse(Lcom/oculus/horizon/notificationsFeed/api/NotificationItemResponse;)Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;
    .locals 14
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 41
    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/api/NotificationItemResponse;->notification_type:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 42
    if-nez v1, :cond_0

    .line 43
    sget-object v1, Lcom/oculus/horizon/notifications/core/NotificationType;->UNKNOWN:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/oculus/horizon/notificationsFeed/api/NotificationItemResponse;->notification_preference_type:Ljava/util/ArrayList;

    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/api/NotificationItemResponse;->rendered_notification:Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;

    iget-object v5, v0, Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;->title:Ljava/lang/String;

    .line 48
    const-string v0, "MMM d, \'at\' h:mma"

    iget-wide v6, p0, Lcom/oculus/horizon/notificationsFeed/api/NotificationItemResponse;->send_time:J

    invoke-static {v0, v6, v7}, Lcom/oculus/horizon/util/DateUtils;->format(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/api/NotificationItemResponse;->rendered_notification:Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;

    iget-object v7, v0, Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;->message:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/api/NotificationItemResponse;->rendered_notification:Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;

    iget-object v8, v0, Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;->extra_data:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/api/NotificationItemResponse;->rendered_notification:Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;

    iget-object v0, v0, Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;->extra_data:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItemUtils;->parseIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/api/NotificationItemResponse;->rendered_notification:Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;

    iget-object v0, v0, Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;->extra_data:Ljava/lang/String;

    .line 53
    invoke-static {v1, v0}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItemUtils;->parseDeeplinkUri(Lcom/oculus/horizon/notifications/core/NotificationType;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/api/NotificationItemResponse;->is_read:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 55
    iget-object v13, p0, Lcom/oculus/horizon/notificationsFeed/api/NotificationItemResponse;->seen_state:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    .line 57
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 58
    const-string v0, "standard"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    iget-object v3, p0, Lcom/oculus/horizon/notificationsFeed/api/NotificationItemResponse;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/notificationsFeed/api/NotificationItemResponse;->uuid:Ljava/lang/String;

    invoke-direct/range {v0 .. v13}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;-><init>(Lcom/oculus/horizon/notifications/core/NotificationType;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/ArrayList;ZLcom/oculus/horizon/notifications/api/NotificationSeenState;)V

    return-object v0
.end method


# virtual methods
.method public getApplicationGroupingID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 170
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mExtraData:Ljava/lang/String;

    const-class v2, Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 172
    const-string v1, "app_grouping_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getDeeplinkUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mDeeplinkUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getIconUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationOptOutType()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mNotificationOptOutTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNotificationRequestID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mExtraData:Ljava/lang/String;

    const-class v2, Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 181
    const-string v1, "notif_request_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getRenderStyles()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mRenderStyleArray:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getRenderStyles()Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getRenderStyles()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getSeenState()Lcom/oculus/horizon/notifications/api/NotificationSeenState;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mSeenState:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    return-object v0
.end method

.method public getSendTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mSendTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/oculus/horizon/notifications/core/NotificationType;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mNotificationType:Lcom/oculus/horizon/notifications/core/NotificationType;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mUUID:Ljava/lang/String;

    return-object v0
.end method

.method public setSeenState(Lcom/oculus/horizon/notifications/api/NotificationSeenState;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->mSeenState:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    .line 158
    return-void
.end method
