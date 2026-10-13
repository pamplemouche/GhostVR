.class public final Lcom/oculus/panelapp/anytimeui/FriendListRowData;
.super Ljava/lang/Object;
.source "FriendListRowData.java"


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public inviteState:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

.field public final presenceStatus:Ljava/lang/String;

.field public final profilePhotoURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->id:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->displayName:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->presenceStatus:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->profilePhotoURL:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->inviteState:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " displayName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " presence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->presenceStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " profile photo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->profilePhotoURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " inviteState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->inviteState:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
