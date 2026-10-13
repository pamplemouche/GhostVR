.class public Lcom/oculus/horizon/api/common/notification/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/common/notification/Notification$RenderedNotification;
    }
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public is_read:Z

.field public rendered_notification:Lcom/oculus/horizon/api/common/notification/Notification$RenderedNotification;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtraData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oculus/horizon/api/common/notification/Notification;->rendered_notification:Lcom/oculus/horizon/api/common/notification/Notification$RenderedNotification;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/notification/Notification$RenderedNotification;->extra_data:Ljava/lang/String;

    return-object v0
.end method
