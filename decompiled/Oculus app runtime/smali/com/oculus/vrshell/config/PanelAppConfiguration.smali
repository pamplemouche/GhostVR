.class public Lcom/oculus/vrshell/config/PanelAppConfiguration;
.super Ljava/lang/Object;
.source "PanelAppConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;
    }
.end annotation


# instance fields
.field private final allowImeComposition:Z

.field private final allowMultiInstance:Z

.field private final hasSocialAppCapability:Z

.field private final initialEnvironment:Ljava/lang/String;

.field private final isWellKnownPanelType:Z

.field private final layerOptions:[I

.field private final needsActivityToken:Z

.field private final packageName:Ljava/lang/String;

.field private final packageUid:I

.field private final serviceName:Ljava/lang/String;

.field private final supportsLayers:Z

.field private final surfaceNames:[Ljava/lang/String;

.field private final validService:Z

.field private final verifiedUid:Z

.field private final versionCode:Ljava/lang/String;

.field private final versionName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZZZZZZZZ)V
    .locals 2

    move-object v0, p0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 42
    iput-object v1, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->packageName:Ljava/lang/String;

    move v1, p2

    .line 43
    iput v1, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->packageUid:I

    move-object v1, p3

    .line 44
    iput-object v1, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->serviceName:Ljava/lang/String;

    move-object v1, p4

    .line 45
    iput-object v1, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->versionName:Ljava/lang/String;

    move-object v1, p5

    .line 46
    iput-object v1, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->versionCode:Ljava/lang/String;

    move-object v1, p6

    .line 47
    iput-object v1, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->initialEnvironment:Ljava/lang/String;

    move-object v1, p7

    .line 48
    iput-object v1, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->surfaceNames:[Ljava/lang/String;

    move-object v1, p8

    .line 49
    iput-object v1, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->layerOptions:[I

    move v1, p9

    .line 50
    iput-boolean v1, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->allowMultiInstance:Z

    move v1, p10

    .line 51
    iput-boolean v1, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->allowImeComposition:Z

    move v1, p11

    .line 52
    iput-boolean v1, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->supportsLayers:Z

    move v1, p12

    .line 53
    iput-boolean v1, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->validService:Z

    move v1, p13

    .line 54
    iput-boolean v1, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->verifiedUid:Z

    move/from16 v1, p14

    .line 55
    iput-boolean v1, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->isWellKnownPanelType:Z

    move/from16 v1, p15

    .line 56
    iput-boolean v1, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->needsActivityToken:Z

    move/from16 v1, p16

    .line 57
    iput-boolean v1, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->hasSocialAppCapability:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZZZZZZZZLcom/oculus/vrshell/config/PanelAppConfiguration$1;)V
    .locals 0

    .line 7
    invoke-direct/range {p0 .. p16}, Lcom/oculus/vrshell/config/PanelAppConfiguration;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZZZZZZZZ)V

    return-void
.end method


# virtual methods
.method public getInitialEnvironment()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->initialEnvironment:Ljava/lang/String;

    return-object v0
.end method

.method public getLayerOptions()[I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->layerOptions:[I

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageUid()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->packageUid:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSurfaceNames()[Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->surfaceNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowImeComposition()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->allowImeComposition:Z

    return v0
.end method

.method public isAllowMultiInstance()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->allowMultiInstance:Z

    return v0
.end method

.method public isNeedsActivityToken()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->needsActivityToken:Z

    return v0
.end method

.method public isSocialPanelApp()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->hasSocialAppCapability:Z

    return v0
.end method

.method public isSupportsLayers()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->supportsLayers:Z

    return v0
.end method

.method public isValidService()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->validService:Z

    return v0
.end method

.method public isVerifiedUid()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->verifiedUid:Z

    return v0
.end method

.method public isWellKnownPanelType()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration;->isWellKnownPanelType:Z

    return v0
.end method
