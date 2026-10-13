.class public Lcom/oculus/modules/MobileConfigsModuleImpl;
.super Lcom/oculus/modules/codegen/MobileConfigsModule;
.source "MobileConfigsModuleImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MobileConfigsModuleImpl"

.field private static mInstance:Lcom/oculus/modules/MobileConfigsModuleImpl;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mMobileConfigClient:Lcom/oculus/config/mobileconfigclient/MobileConfigClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/oculus/modules/MobileConfigsModuleImpl;->mInstance:Lcom/oculus/modules/MobileConfigsModuleImpl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/oculus/modules/codegen/MobileConfigsModule;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/modules/MobileConfigsModuleImpl;->mContext:Landroid/content/Context;

    .line 21
    sput-object p0, Lcom/oculus/modules/MobileConfigsModuleImpl;->mInstance:Lcom/oculus/modules/MobileConfigsModuleImpl;

    .line 22
    iput-object p1, p0, Lcom/oculus/modules/MobileConfigsModuleImpl;->mContext:Landroid/content/Context;

    .line 23
    new-instance v0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    invoke-direct {v0, p1}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/modules/MobileConfigsModuleImpl;->mMobileConfigClient:Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    .line 24
    return-void
.end method

.method private convertParamType(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;)Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;
    .locals 4
    .param p1, "param"    # Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;

    .prologue
    .line 106
    new-instance v0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;

    invoke-direct {v0}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;-><init>()V

    .line 107
    .local v0, "newParam":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;
    iget-wide v2, p1, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->configId:D

    iput-wide v2, v0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;->configId:D

    .line 108
    return-object v0
.end method


# virtual methods
.method protected getBoolImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;ZLcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "param"    # Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;
    .param p2, "defaultVal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;",
            "Z",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/oculus/modules/MobileConfigsModuleImpl;->mMobileConfigClient:Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    invoke-direct {p0, p1}, Lcom/oculus/modules/MobileConfigsModuleImpl;->convertParamType(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;)Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->getBoolImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method protected getBoolWithoutLoggingExposureImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;ZLcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "param"    # Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;
    .param p2, "defaultVal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;",
            "Z",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/oculus/modules/MobileConfigsModuleImpl;->mMobileConfigClient:Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    invoke-direct {p0, p1}, Lcom/oculus/modules/MobileConfigsModuleImpl;->convertParamType(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;)Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->getBoolWithoutLoggingExposureImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method protected getDoubleImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;DLcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "param"    # Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;
    .param p2, "defaultVal"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;",
            "D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p4, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Double;>;"
    iget-object v0, p0, Lcom/oculus/modules/MobileConfigsModuleImpl;->mMobileConfigClient:Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    invoke-direct {p0, p1}, Lcom/oculus/modules/MobileConfigsModuleImpl;->convertParamType(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;)Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->getDoubleImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method protected getDoubleWithoutLoggingExposureImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;DLcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "param"    # Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;
    .param p2, "defaultVal"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;",
            "D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p4, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Double;>;"
    iget-object v0, p0, Lcom/oculus/modules/MobileConfigsModuleImpl;->mMobileConfigClient:Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    invoke-direct {p0, p1}, Lcom/oculus/modules/MobileConfigsModuleImpl;->convertParamType(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;)Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->getDoubleWithoutLoggingExposureImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method protected getIntImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;DLcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "param"    # Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;
    .param p2, "defaultVal"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;",
            "D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p4, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Double;>;"
    iget-object v0, p0, Lcom/oculus/modules/MobileConfigsModuleImpl;->mMobileConfigClient:Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    invoke-direct {p0, p1}, Lcom/oculus/modules/MobileConfigsModuleImpl;->convertParamType(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;)Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->getIntImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;D)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method protected getIntWithoutLoggingExposureImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;DLcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "param"    # Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;
    .param p2, "defaultVal"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;",
            "D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p4, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Double;>;"
    iget-object v0, p0, Lcom/oculus/modules/MobileConfigsModuleImpl;->mMobileConfigClient:Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    invoke-direct {p0, p1}, Lcom/oculus/modules/MobileConfigsModuleImpl;->convertParamType(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;)Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->getIntWithoutLoggingExposureImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;D)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method protected getStringImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "param"    # Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;
    .param p2, "defaultVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oculus/modules/MobileConfigsModuleImpl;->mMobileConfigClient:Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    invoke-direct {p0, p1}, Lcom/oculus/modules/MobileConfigsModuleImpl;->convertParamType(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;)Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->getStringImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method protected getStringWithoutLoggingExposureImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "param"    # Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;
    .param p2, "defaultVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oculus/modules/MobileConfigsModuleImpl;->mMobileConfigClient:Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    invoke-direct {p0, p1}, Lcom/oculus/modules/MobileConfigsModuleImpl;->convertParamType(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;)Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->getStringWithoutLoggingExposureImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method protected logExposureImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;)V
    .locals 2
    .param p1, "param"    # Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oculus/modules/MobileConfigsModuleImpl;->mMobileConfigClient:Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    invoke-direct {p0, p1}, Lcom/oculus/modules/MobileConfigsModuleImpl;->convertParamType(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;)Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->logExposureImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;)V

    .line 103
    return-void
.end method

.method public shutdownModule()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/oculus/modules/MobileConfigsModuleImpl;->mInstance:Lcom/oculus/modules/MobileConfigsModuleImpl;

    .line 29
    return-void
.end method

.method protected updateMCsImpl(Ljava/lang/String;)V
    .locals 1
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/modules/MobileConfigsModuleImpl;->mMobileConfigClient:Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    invoke-virtual {v0, p1}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->updateMCsImpl(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    return-void
.end method
