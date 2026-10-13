.class public Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse$Viewer$User;
.super Ljava/lang/Object;
.source "NotificationsFeedResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse$Viewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "User"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse$Viewer$User$Notifications;
    }
.end annotation


# instance fields
.field public dev_notif_opt_out_preferences_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/notifications/api/DevNotificationOptOutPreferenceResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public notification_opt_out_preferences_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/notifications/api/NotificationOptOutPreferenceResponse;",
            ">;"
        }
    .end annotation
.end field

.field public notifications:Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse$Viewer$User$Notifications;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
