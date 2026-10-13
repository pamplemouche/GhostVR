.class public Lcom/oculus/horizon/notificationsFeed/api/NotificationItemResponse;
.super Ljava/lang/Object;
.source "NotificationItemResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public is_read:Ljava/lang/Boolean;

.field public notification_preference_type:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public notification_type:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public rendered_notification:Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;

.field public seen_state:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

.field public send_time:J

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
