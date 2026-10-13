.class public final enum Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;
.super Ljava/lang/Enum;
.source "CameraCoreParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cameracore/config/CameraCoreParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NativeCaptureSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

.field public static final enum OFF:Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

.field public static final enum ON:Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

.field public static final enum ONLY_WITHOUT_EFFECTS:Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2}, Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;->OFF:Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    .line 10
    new-instance v0, Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    const-string v1, "ON"

    invoke-direct {v0, v1, v3}, Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;->ON:Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    .line 11
    new-instance v0, Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    const-string v1, "ONLY_WITHOUT_EFFECTS"

    invoke-direct {v0, v1, v4}, Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;->ONLY_WITHOUT_EFFECTS:Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    sget-object v1, Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;->OFF:Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;->ON:Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;->ONLY_WITHOUT_EFFECTS:Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;->$VALUES:[Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    return-object v0
.end method

.method public static values()[Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;->$VALUES:[Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    invoke-virtual {v0}, [Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    return-object v0
.end method
