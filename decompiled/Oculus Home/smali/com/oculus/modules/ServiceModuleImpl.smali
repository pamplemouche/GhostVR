.class public Lcom/oculus/modules/ServiceModuleImpl;
.super Lcom/oculus/modules/codegen/ServiceModule;
.source "ServiceModuleImpl.java"


# static fields
.field private static sServiceType:Lcom/oculus/modules/codegen/ServiceModule$ServiceType;

.field private static sServiceTypeSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oculus/modules/ServiceModuleImpl;->sServiceTypeSet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/oculus/modules/codegen/ServiceModule;-><init>()V

    return-void
.end method

.method public static getServiceType()Lcom/oculus/modules/codegen/ServiceModule$ServiceType;
    .locals 2

    .prologue
    .line 30
    sget-boolean v0, Lcom/oculus/modules/ServiceModuleImpl;->sServiceTypeSet:Z

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Requesting ServiceType before set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    sget-object v0, Lcom/oculus/modules/ServiceModuleImpl;->sServiceType:Lcom/oculus/modules/codegen/ServiceModule$ServiceType;

    return-object v0
.end method

.method public static getServiceTypeString()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/oculus/vrshell/home/UsedByNative;
    .end annotation

    .prologue
    .line 38
    invoke-static {}, Lcom/oculus/modules/ServiceModuleImpl;->getServiceType()Lcom/oculus/modules/codegen/ServiceModule$ServiceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/modules/codegen/ServiceModule$ServiceType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setServiceType(Lcom/oculus/modules/codegen/ServiceModule$ServiceType;)V
    .locals 1
    .param p0, "type"    # Lcom/oculus/modules/codegen/ServiceModule$ServiceType;

    .prologue
    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oculus/modules/ServiceModuleImpl;->sServiceTypeSet:Z

    .line 26
    sput-object p0, Lcom/oculus/modules/ServiceModuleImpl;->sServiceType:Lcom/oculus/modules/codegen/ServiceModule$ServiceType;

    .line 27
    return-void
.end method


# virtual methods
.method protected marshallJSConstantServiceType()Lcom/oculus/modules/codegen/ServiceModule$ServiceType;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/oculus/modules/ServiceModuleImpl;->getServiceType()Lcom/oculus/modules/codegen/ServiceModule$ServiceType;

    move-result-object v0

    return-object v0
.end method

.method public onAccessTokenImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "accessToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    sget-object v0, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    .line 20
    .local v0, "application":Lcom/oculus/vrshell/home/HomeApplication;
    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/home/HomeApplication;->onAccessToken(Ljava/lang/String;)V

    .line 21
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 22
    return-void
.end method
