.class public Lcom/oculus/panelapp/anytimeui/PartyInfo;
.super Ljava/lang/Object;
.source "PartyInfo.java"


# instance fields
.field public final blockedCurrentMembersCount:I

.field public final blockedInvitedUsersCount:I

.field public final currentMembersCount:I

.field public final id:Ljava/lang/String;

.field public final inviteActivityAppId:Ljava/lang/String;

.field public final inviteActivityDeeplink:Ljava/lang/String;

.field public final inviteActivityID:Ljava/lang/String;

.field public final inviteActivityImageUri:Ljava/lang/String;

.field public final inviteActivityPackageName:Ljava/lang/String;

.field public final inviteActivitySubtitle:Ljava/lang/String;

.field public final inviteActivityTitle:Ljava/lang/String;

.field public final invitedUsersCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->id:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->blockedInvitedUsersCount:I

    .line 36
    iput p3, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->invitedUsersCount:I

    .line 37
    iput p4, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->blockedCurrentMembersCount:I

    .line 38
    iput p5, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->currentMembersCount:I

    .line 39
    iput-object p6, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivityID:Ljava/lang/String;

    .line 40
    iput-object p7, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivityTitle:Ljava/lang/String;

    .line 41
    iput-object p8, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivitySubtitle:Ljava/lang/String;

    if-nez p9, :cond_0

    const-string p9, ""

    .line 42
    :cond_0
    iput-object p9, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivityDeeplink:Ljava/lang/String;

    .line 43
    iput-object p10, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivityImageUri:Ljava/lang/String;

    .line 44
    iput-object p11, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivityPackageName:Ljava/lang/String;

    .line 45
    iput-object p12, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivityAppId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " blockedInvitedUsersCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->blockedInvitedUsersCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " invitedUsersCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->invitedUsersCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " blockedCurrentMembersCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->blockedCurrentMembersCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " currentMembersCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->currentMembersCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " inviteActivityID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivityID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " inviteActivityTitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivityTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " inviteActivitySubtitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivitySubtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " inviteActivityDeeplink: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivityDeeplink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " inviteActivityImageUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivityImageUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " inviteActivityPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivityPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " inviteActivityAppId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivityAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
