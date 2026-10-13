.class public Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse$Viewer$User;
.super Ljava/lang/Object;
.source "NotificationsFeedUnseenCountResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse$Viewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "User"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse$Viewer$User$Notifications;
    }
.end annotation


# instance fields
.field public notifications:Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse$Viewer$User$Notifications;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
