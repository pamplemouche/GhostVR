.class public Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse$Viewer;
.super Ljava/lang/Object;
.source "NotificationsFeedResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Viewer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse$Viewer$User;
    }
.end annotation


# instance fields
.field public user:Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse$Viewer$User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
