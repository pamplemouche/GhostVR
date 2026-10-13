.class public Lcom/oculus/horizon/api/common/PartyInvite;
.super Lcom/oculus/horizon/api/common/Invite;
.source "PartyInvite.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/oculus/horizon/api/common/Invite;-><init>()V

    return-void
.end method

.method public static fromNotificationResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/api/common/PartyInvite;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 16
    const-class v1, Lcom/oculus/horizon/api/common/PartyInvite;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/PartyInvite;

    .line 17
    iput-object p0, v0, Lcom/oculus/horizon/api/common/PartyInvite;->notification_id:Ljava/lang/String;

    .line 18
    return-object v0
.end method
