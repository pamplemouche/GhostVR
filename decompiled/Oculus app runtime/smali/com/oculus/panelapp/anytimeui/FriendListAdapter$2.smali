.class synthetic Lcom/oculus/panelapp/anytimeui/FriendListAdapter$2;
.super Ljava/lang/Object;
.source "FriendListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/FriendListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oculus$provider$HorizonContent$FriendList$UserInviteState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 88
    invoke-static {}, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->values()[Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$2;->$SwitchMap$com$oculus$provider$HorizonContent$FriendList$UserInviteState:[I

    :try_start_0
    sget-object v0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$2;->$SwitchMap$com$oculus$provider$HorizonContent$FriendList$UserInviteState:[I

    sget-object v1, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->INVITED:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    invoke-virtual {v1}, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$2;->$SwitchMap$com$oculus$provider$HorizonContent$FriendList$UserInviteState:[I

    sget-object v1, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->JOINED:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    invoke-virtual {v1}, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
