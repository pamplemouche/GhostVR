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

    .line 32
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const/4 v1, 0x0

    const-string v2, "CASTING"

    invoke-direct {v0, v2, v1}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CASTING:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 33
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const/4 v2, 0x1

    const-string v3, "CONNECTING_TO_PEER"

    invoke-direct {v0, v3, v2}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTING_TO_PEER:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 34
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const/4 v3, 0x2

    const-string v4, "CONNECTION_INITIATED"

    invoke-direct {v0, v4, v3}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTION_INITIATED:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 35
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const/4 v4, 0x3

    const-string v5, "CONNECTION_SUCCESS"

    invoke-direct {v0, v5, v4}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTION_SUCCESS:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 36
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const/4 v5, 0x4

    const-string v6, "DISCONNECTING"

    invoke-direct {v0, v6, v5}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->DISCONNECTING:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 37
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const/4 v6, 0x5

    const-string v7, "FOUND"

    invoke-direct {v0, v7, v6}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->FOUND:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 38
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const/4 v7, 0x6

    const-string v8, "INVALID"

    invoke-direct {v0, v8, v7}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->INVALID:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    .line 39
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const/4 v8, 0x7

    const-string v9, "STARTING_SESSION"

    invoke-direct {v0, v9, v8}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->STARTING_SESSION:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    const/16 v0, 0x8

    .line 30
    new-array v0, v0, [Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    sget-object v9, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CASTING:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v9, v0, v1

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTING_TO_PEER:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTION_INITIATED:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTION_SUCCESS:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->DISCONNECTING:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->FOUND:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->INVALID:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->STARTING_SESSION:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    aput-object v1, v0, v8

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;
    .locals 1

    .line 40
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;
    .locals 1

    .line 30
    const-class v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    return-object p0
.end method

.method public static values()[Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;
    .locals 1

    .line 30
    sget-object v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->$VALUES:[Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    invoke-virtual {v0}, [Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    return-object v0
.end method
