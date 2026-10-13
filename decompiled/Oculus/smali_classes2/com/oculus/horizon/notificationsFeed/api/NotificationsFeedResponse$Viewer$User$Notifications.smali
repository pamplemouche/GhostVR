.class public Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse$Viewer$User$Notifications;
.super Ljava/lang/Object;
.source "NotificationsFeedResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse$Viewer$User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Notifications"
.end annotation


# instance fields
.field public nodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/notificationsFeed/api/NotificationItemResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
