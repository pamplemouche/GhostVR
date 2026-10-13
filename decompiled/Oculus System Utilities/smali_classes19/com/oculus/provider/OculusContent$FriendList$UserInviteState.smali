.class public final enum Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;
.super Ljava/lang/Enum;
.source "OculusContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/provider/OculusContent$FriendList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserInviteState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

.field public static final enum DEFAULT_UNKNOWN:Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

.field public static final enum INVITED:Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

.field public static final enum JOINED:Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    new-instance v0, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

    const-string v1, "DEFAULT_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;->DEFAULT_UNKNOWN:Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

    .line 200
    new-instance v0, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

    const-string v1, "INVITED"

    invoke-direct {v0, v1, v3}, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;->INVITED:Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

    .line 201
    new-instance v0, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

    const-string v1, "JOINED"

    invoke-direct {v0, v1, v4}, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;->JOINED:Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

    .line 198
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

    sget-object v1, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;->DEFAULT_UNKNOWN:Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;->INVITED:Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;->JOINED:Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;->$VALUES:[Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 198
    const-class v0, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

    return-object v0
.end method

.method public static values()[Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;->$VALUES:[Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

    invoke-virtual {v0}, [Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

    return-object v0
.end method
