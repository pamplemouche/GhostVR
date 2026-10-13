.class public Lcom/oculus/horizon/api/common/GameInvite;
.super Lcom/oculus/horizon/api/common/Invite;
.source "GameInvite.java"


# instance fields
.field public application_id:Ljava/lang/String;

.field public application_name:Ljava/lang/String;

.field public room_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/oculus/horizon/api/common/Invite;-><init>()V

    return-void
.end method

.method public static fromNotificationResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/api/common/GameInvite;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 20
    const-class v1, Lcom/oculus/horizon/api/common/GameInvite;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/GameInvite;

    .line 21
    iput-object p0, v0, Lcom/oculus/horizon/api/common/GameInvite;->notification_id:Ljava/lang/String;

    .line 22
    return-object v0
.end method
