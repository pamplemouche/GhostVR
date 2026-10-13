.class final enum Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;
.super Ljava/lang/Enum;
.source "HorizonControllerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/react/modules/HorizonControllerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InputDeviceTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;

.field public static final enum GAMEPAD:Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;

.field public static final enum GEAR_VR_CONTROLLER:Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;

.field public static final enum TOUCHPAD:Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;

    const-string v1, "GEAR_VR_CONTROLLER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;->GEAR_VR_CONTROLLER:Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;

    .line 23
    new-instance v0, Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;

    const-string v1, "TOUCHPAD"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;->TOUCHPAD:Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;

    .line 24
    new-instance v0, Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;

    const-string v1, "GAMEPAD"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;->GAMEPAD:Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;

    sget-object v1, Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;->GEAR_VR_CONTROLLER:Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;->TOUCHPAD:Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;->GAMEPAD:Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;->$VALUES:[Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;->$VALUES:[Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;

    invoke-virtual {v0}, [Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/react/modules/HorizonControllerModule$InputDeviceTag;

    return-object v0
.end method
