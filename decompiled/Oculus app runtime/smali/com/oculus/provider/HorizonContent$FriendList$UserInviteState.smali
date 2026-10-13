.class public final enum Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;
.super Ljava/lang/Enum;
.source "HorizonContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/provider/HorizonContent$FriendList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserInviteState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

.field public static final enum DEFAULT_UNKNOWN:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

.field public static final enum INVITED:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

.field public static final enum JOINED:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 82
    new-instance v0, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    const/4 v1, 0x0

    const-string v2, "DEFAULT_UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->DEFAULT_UNKNOWN:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    .line 83
    new-instance v0, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    const/4 v2, 0x1

    const-string v3, "INVITED"

    invoke-direct {v0, v3, v2}, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->INVITED:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    .line 84
    new-instance v0, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    const/4 v3, 0x2

    const-string v4, "JOINED"

    invoke-direct {v0, v4, v3}, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->JOINED:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    const/4 v0, 0x3

    .line 81
    new-array v0, v0, [Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    sget-object v4, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->DEFAULT_UNKNOWN:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->INVITED:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->JOINED:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->$VALUES:[Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;
    .locals 1

    .line 81
    const-class v0, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    return-object p0
.end method

.method public static values()[Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;
    .locals 1

    .line 81
    sget-object v0, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->$VALUES:[Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    invoke-virtual {v0}, [Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    return-object v0
.end method
