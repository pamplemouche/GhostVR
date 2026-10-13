.class public final enum Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;
.super Ljava/lang/Enum;
.source "VrCastController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

.field public static final enum CASTING:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

.field public static final enum CONNECTING_TO_PEER:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

.field public static final enum CONNECTION_INITIATED:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

.field public static final enum CONNECTION_SUCCESS:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

.field public static final enum DISCONNECTING:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

.field public static final enum FOUND:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

.field public static final enum INVALID:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

.field public static final enum STARTING_SESSION:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 17
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const-string v1, "CASTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CASTING:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 18
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const-string v1, "CONNECTING_TO_PEER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTING_TO_PEER:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 19
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const-string v1, "CONNECTION_INITIATED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTION_INITIATED:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 20
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const-string v1, "CONNECTION_SUCCESS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTION_SUCCESS:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 21
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const-string v1, "DISCONNECTING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->DISCONNECTING:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 22
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const-string v1, "FOUND"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->FOUND:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 23
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const-string v1, "INVALID"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->INVALID:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 24
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const-string v1, "STARTING_SESSION"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->STARTING_SESSION:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const/16 v0, 0x8

    .line 15
    new-array v0, v0, [Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CASTING:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTING_TO_PEER:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTION_INITIATED:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTION_SUCCESS:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->DISCONNECTING:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->FOUND:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->INVALID:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->STARTING_SESSION:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v1, v0, v9

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->$VALUES:[Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;
    .locals 1

    .line 25
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;
    .locals 1

    .line 15
    const-class v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    return-object p0
.end method

.method public static values()[Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;
    .locals 1

    .line 15
    sget-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->$VALUES:[Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    invoke-virtual {v0}, [Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    return-object v0
.end method
