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
        "Ljava/lang/Enum",
        "<",
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
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const-string v1, "CASTING"

    invoke-direct {v0, v1, v3}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CASTING:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 33
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const-string v1, "CONNECTING_TO_PEER"

    invoke-direct {v0, v1, v4}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTING_TO_PEER:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 34
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const-string v1, "CONNECTION_INITIATED"

    invoke-direct {v0, v1, v5}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTION_INITIATED:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 35
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const-string v1, "CONNECTION_SUCCESS"

    invoke-direct {v0, v1, v6}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTION_SUCCESS:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 36
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v7}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->DISCONNECTING:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 37
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const-string v1, "FOUND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->FOUND:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 38
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const-string v1, "INVALID"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->INVALID:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 39
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const-string v1, "STARTING_SESSION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->STARTING_SESSION:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CASTING:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTING_TO_PEER:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTION_INITIATED:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTION_SUCCESS:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->DISCONNECTING:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->FOUND:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->INVALID:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->STARTING_SESSION:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v2, v0, v1

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

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;
    .locals 2
    .param p0, "val"    # I

    .prologue
    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    return-object v0
.end method

.method public static values()[Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->$VALUES:[Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    invoke-virtual {v0}, [Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    return-object v0
.end method
