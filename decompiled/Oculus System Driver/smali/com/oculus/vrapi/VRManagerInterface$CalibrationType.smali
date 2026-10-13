.class final enum Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;
.super Ljava/lang/Enum;
.source "VRManagerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/VRManagerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CalibrationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

.field public static final enum CAMERA:Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

.field public static final enum DISTORTION_MESH:Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

.field public static final enum MURA_LEFT:Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

.field public static final enum MURA_RIGHT:Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

.field public static final enum PANEL_SN_LEFT:Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

.field public static final enum PANEL_SN_RIGHT:Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 25
    new-instance v0, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    const-string v1, "DISTORTION_MESH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;->DISTORTION_MESH:Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    .line 26
    new-instance v0, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    const-string v1, "MURA_LEFT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;->MURA_LEFT:Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    .line 27
    new-instance v0, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    const-string v1, "MURA_RIGHT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;->MURA_RIGHT:Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    .line 28
    new-instance v0, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    const-string v1, "PANEL_SN_LEFT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;->PANEL_SN_LEFT:Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    .line 29
    new-instance v0, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    const-string v1, "PANEL_SN_RIGHT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;->PANEL_SN_RIGHT:Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    .line 30
    new-instance v0, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    const-string v1, "CAMERA"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;->CAMERA:Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    const/4 v0, 0x6

    .line 23
    new-array v0, v0, [Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    sget-object v1, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;->DISTORTION_MESH:Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;->MURA_LEFT:Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;->MURA_RIGHT:Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;->PANEL_SN_LEFT:Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;->PANEL_SN_RIGHT:Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;->CAMERA:Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;->$VALUES:[Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;
    .locals 1

    .line 23
    const-class v0, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    return-object p0
.end method

.method public static values()[Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;
    .locals 1

    .line 23
    sget-object v0, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;->$VALUES:[Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    invoke-virtual {v0}, [Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    return-object v0
.end method
