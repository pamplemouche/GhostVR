.class public final enum Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;
.super Ljava/lang/Enum;
.source "AudioEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cameracore/audio/encoder/AudioEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

.field public static final enum PREPARED:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

.field public static final enum STARTED:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

.field public static final enum STOPPED:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v2}, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;->STOPPED:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    .line 48
    new-instance v0, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v3}, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;->PREPARED:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    .line 54
    new-instance v0, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;->STARTED:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    sget-object v1, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;->STOPPED:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;->PREPARED:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;->STARTED:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;->$VALUES:[Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    return-object v0
.end method

.method public static values()[Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;->$VALUES:[Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    invoke-virtual {v0}, [Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    return-object v0
.end method
