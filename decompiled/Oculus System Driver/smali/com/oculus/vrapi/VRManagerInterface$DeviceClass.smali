.class final enum Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;
.super Ljava/lang/Enum;
.source "VRManagerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/VRManagerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DeviceClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;

.field public static final enum GEAR_VR:Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;

.field public static final enum STANDALONE:Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;

    const-string v1, "GEAR_VR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;->GEAR_VR:Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;

    .line 36
    new-instance v0, Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;

    const-string v1, "STANDALONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;->STANDALONE:Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;

    const/4 v0, 0x2

    .line 33
    new-array v0, v0, [Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;

    sget-object v1, Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;->GEAR_VR:Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;->STANDALONE:Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;->$VALUES:[Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;
    .locals 1

    .line 33
    const-class v0, Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;

    return-object p0
.end method

.method public static values()[Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;
    .locals 1

    .line 33
    sget-object v0, Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;->$VALUES:[Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;

    invoke-virtual {v0}, [Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;

    return-object v0
.end method
