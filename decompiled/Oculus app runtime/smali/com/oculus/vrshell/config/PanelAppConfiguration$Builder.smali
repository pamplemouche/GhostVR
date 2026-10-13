.class public Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;
.super Ljava/lang/Object;
.source "PanelAppConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/config/PanelAppConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private nestedAllowImeComposition:Z

.field private nestedAllowMultiInstance:Z

.field private nestedHasSocialAppCapability:Z

.field private nestedInitialEnvironment:Ljava/lang/String;

.field private nestedIsWellKnownPanelType:Z

.field private nestedLayerOptions:[I

.field private nestedNeedsActivityToken:Z

.field private nestedPackageName:Ljava/lang/String;

.field private nestedPackageUid:I

.field private nestedServiceName:Ljava/lang/String;

.field private nestedSupportsLayers:Z

.field private nestedSurfaceNames:[Ljava/lang/String;

.field private nestedValidService:Z

.field private nestedVerifiedUid:Z

.field private nestedVersionCode:Ljava/lang/String;

.field private nestedVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/vrshell/config/PanelAppConfiguration;
    .locals 21

    move-object/from16 v0, p0

    .line 224
    new-instance v19, Lcom/oculus/vrshell/config/PanelAppConfiguration;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedPackageName:Ljava/lang/String;

    iget v3, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedPackageUid:I

    iget-object v4, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedServiceName:Ljava/lang/String;

    iget-object v5, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedVersionName:Ljava/lang/String;

    iget-object v6, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedVersionCode:Ljava/lang/String;

    iget-object v7, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedInitialEnvironment:Ljava/lang/String;

    iget-object v8, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedSurfaceNames:[Ljava/lang/String;

    iget-object v9, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedLayerOptions:[I

    iget-boolean v10, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedAllowMultiInstance:Z

    iget-boolean v11, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedAllowImeComposition:Z

    iget-boolean v12, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedSupportsLayers:Z

    iget-boolean v13, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedValidService:Z

    iget-boolean v14, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedVerifiedUid:Z

    iget-boolean v15, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedIsWellKnownPanelType:Z

    move-object/from16 v20, v1

    iget-boolean v1, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedNeedsActivityToken:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedHasSocialAppCapability:Z

    move/from16 v17, v1

    const/16 v18, 0x0

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lcom/oculus/vrshell/config/PanelAppConfiguration;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZZZZZZZZLcom/oculus/vrshell/config/PanelAppConfiguration$1;)V

    return-object v19
.end method

.method public withAllowImeComposition(Z)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;
    .locals 0

    .line 189
    iput-boolean p1, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedAllowImeComposition:Z

    return-object p0
.end method

.method public withAllowMultiInstance(Z)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedAllowMultiInstance:Z

    return-object p0
.end method

.method public withHasSocialAppCapability(Z)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;
    .locals 0

    .line 219
    iput-boolean p1, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedHasSocialAppCapability:Z

    return-object p0
.end method

.method public withInitialEnvironment(Ljava/lang/String;)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedInitialEnvironment:Ljava/lang/String;

    return-object p0
.end method

.method public withIsWellKnownPanelType(Z)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;
    .locals 0

    .line 209
    iput-boolean p1, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedIsWellKnownPanelType:Z

    return-object p0
.end method

.method public withLayerOptions([I)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedLayerOptions:[I

    return-object p0
.end method

.method public withNeedsActivityToken(Z)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedNeedsActivityToken:Z

    return-object p0
.end method

.method public withPackageName(Ljava/lang/String;)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public withPackageUid(I)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;
    .locals 0

    .line 149
    iput p1, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedPackageUid:I

    return-object p0
.end method

.method public withServiceName(Ljava/lang/String;)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedServiceName:Ljava/lang/String;

    return-object p0
.end method

.method public withSupportsLayers(Z)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedSupportsLayers:Z

    return-object p0
.end method

.method public withSurfaceNames([Ljava/lang/String;)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedSurfaceNames:[Ljava/lang/String;

    return-object p0
.end method

.method public withValidService(Z)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedValidService:Z

    return-object p0
.end method

.method public withVerifiedUid(Z)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedVerifiedUid:Z

    return-object p0
.end method

.method public withVersionCode(Ljava/lang/String;)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedVersionCode:Ljava/lang/String;

    return-object p0
.end method

.method public withVersionName(Ljava/lang/String;)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->nestedVersionName:Ljava/lang/String;

    return-object p0
.end method
