.class public final enum Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;
.super Ljava/lang/Enum;
.source "ApplicationPdpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/pdp/ApplicationPdpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputDeviceTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

.field public static final enum GAMEPAD:Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

.field public static final enum GEAR_VR_CONTROLLER:Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

.field public static final enum TOUCHPAD:Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;


# instance fields
.field public final iconResourceId:I

.field public final priority:I

.field public final stringResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 139
    new-instance v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    const-string v1, "GEAR_VR_CONTROLLER"

    sget v3, Lcom/oculus/horizon/R$string;->store_controller_selector_gear_vr:I

    sget v4, Lcom/oculus/horizon/R$drawable;->pdp_info_gear_vr_controller:I

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->GEAR_VR_CONTROLLER:Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    .line 141
    new-instance v3, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    const-string v4, "TOUCHPAD"

    sget v6, Lcom/oculus/horizon/R$string;->store_controller_selector_touchpad:I

    sget v7, Lcom/oculus/horizon/R$drawable;->pdp_info_touchpad:I

    invoke-direct/range {v3 .. v8}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->TOUCHPAD:Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    .line 142
    new-instance v6, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    const-string v7, "GAMEPAD"

    sget v9, Lcom/oculus/horizon/R$string;->store_controller_selector_gamepad:I

    sget v10, Lcom/oculus/horizon/R$drawable;->pdp_info_gamepad:I

    invoke-direct/range {v6 .. v11}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->GAMEPAD:Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    .line 138
    new-array v0, v11, [Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    sget-object v1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->GEAR_VR_CONTROLLER:Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->TOUCHPAD:Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->GAMEPAD:Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    aput-object v1, v0, v8

    sput-object v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->$VALUES:[Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 149
    iput p3, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->stringResourceId:I

    .line 150
    iput p4, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->iconResourceId:I

    .line 151
    iput p5, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->priority:I

    .line 152
    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 157
    :try_start_0
    invoke-static {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->valueOf(Ljava/lang/String;)Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;
    .locals 1

    .prologue
    .line 138
    const-class v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->$VALUES:[Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    invoke-virtual {v0}, [Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    return-object v0
.end method
