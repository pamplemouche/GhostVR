.class public Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;
.super Ljava/lang/Object;
.source "PartyMemberListRowData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$Callbacks;,
        Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;
    }
.end annotation


# instance fields
.field public final mCallbacks:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$Callbacks;

.field public final mDisplayName:Ljava/lang/String;

.field public final mOnline:Z

.field public final mPresenceAppId:Ljava/lang/String;

.field public final mPresenceAppPackageName:Ljava/lang/String;

.field public final mPresenceDeeplinkMessage:Ljava/lang/String;

.field public final mPresenceStatus:Ljava/lang/String;

.field public final mProfileImageURL:Ljava/lang/String;

.field public final mShowOverflowMenu:Z

.field public final mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/oculus/panelapp/anytimeui/PartyMemberListRowData$Callbacks;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mUserId:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mDisplayName:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mPresenceStatus:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mPresenceAppId:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mPresenceAppPackageName:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mPresenceDeeplinkMessage:Ljava/lang/String;

    .line 33
    iput-object p7, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mProfileImageURL:Ljava/lang/String;

    .line 34
    iput-boolean p8, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mOnline:Z

    .line 35
    iput-boolean p9, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mShowOverflowMenu:Z

    .line 36
    iput-object p10, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mCallbacks:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$Callbacks;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mCallbacks:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$Callbacks;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$Callbacks;->getMicState()Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "displayName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " presence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mPresenceStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " presence app id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mPresenceAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " presence package name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mPresenceAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " presence deeplink message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mPresenceDeeplinkMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " profile image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mProfileImageURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mic state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
