.class final enum Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;
.super Ljava/lang/Enum;
.source "ControllerManagerModuleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/ControllerManagerModuleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OculusButtonMapping"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

.field public static final enum DEFAULT:Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

.field public static final enum FLAIL_LOCKOUT_DISABLED:Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

.field public static final enum LONG_PRESS:Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;


# instance fields
.field private final mButtonMapping:I

.field private final mSettingsManager:Lcom/oculus/os/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2, v2}, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->DEFAULT:Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    .line 17
    new-instance v0, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    const-string v1, "LONG_PRESS"

    invoke-direct {v0, v1, v3, v3}, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->LONG_PRESS:Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    .line 19
    new-instance v0, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    const-string v1, "FLAIL_LOCKOUT_DISABLED"

    invoke-direct {v0, v1, v4, v4}, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->FLAIL_LOCKOUT_DISABLED:Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    sget-object v1, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->DEFAULT:Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->LONG_PRESS:Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->FLAIL_LOCKOUT_DISABLED:Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->$VALUES:[Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "buttonMapping"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->mButtonMapping:I

    .line 27
    new-instance v0, Lcom/oculus/os/SettingsManager;

    invoke-direct {v0}, Lcom/oculus/os/SettingsManager;-><init>()V

    iput-object v0, p0, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    return-object v0
.end method

.method public static values()[Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->$VALUES:[Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    invoke-virtual {v0}, [Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    return-object v0
.end method


# virtual methods
.method public isSet()Z
    .locals 4

    .prologue
    .line 47
    iget-object v1, p0, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    const-string v2, "oculus_button_mapping"

    sget-object v3, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->DEFAULT:Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    .line 49
    invoke-virtual {v3}, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->toInt()I

    move-result v3

    .line 47
    invoke-virtual {v1, v2, v3}, Lcom/oculus/os/SettingsManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 50
    .local v0, "buttonMappingSetting":I
    iget v1, p0, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->mButtonMapping:I

    and-int/2addr v1, v0

    iget v2, p0, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->mButtonMapping:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public set(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 35
    iget-object v2, p0, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    const-string v3, "oculus_button_mapping"

    sget-object v4, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->DEFAULT:Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    .line 37
    invoke-virtual {v4}, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->toInt()I

    move-result v4

    .line 35
    invoke-virtual {v2, v3, v4}, Lcom/oculus/os/SettingsManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 38
    .local v0, "buttonMappingSetting":I
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->mButtonMapping:I

    or-int v1, v0, v2

    .line 41
    .local v1, "newMapping":I
    :goto_0
    iget-object v2, p0, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    const-string v3, "oculus_button_mapping"

    invoke-virtual {v2, v3, v1}, Lcom/oculus/os/SettingsManager;->setInt(Ljava/lang/String;I)Z

    move-result v2

    return v2

    .line 38
    .end local v1    # "newMapping":I
    :cond_0
    iget v2, p0, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->mButtonMapping:I

    xor-int/lit8 v2, v2, -0x1

    and-int v1, v0, v2

    goto :goto_0
.end method

.method public toInt()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->mButtonMapping:I

    return v0
.end method
