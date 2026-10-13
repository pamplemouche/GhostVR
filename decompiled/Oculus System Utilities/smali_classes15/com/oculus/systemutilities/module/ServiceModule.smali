.class public Lcom/oculus/systemutilities/module/ServiceModule;
.super Ljava/lang/Object;
.source "ServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;
    }
.end annotation


# static fields
.field private static MODULE_NAME:Ljava/lang/String;

.field public static SERVICE_TYPE:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/oculus/systemutilities/module/ServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemutilities/module/ServiceModule;->MODULE_NAME:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;->UNKNOWN:Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;

    invoke-virtual {v0}, Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemutilities/module/ServiceModule;->SERVICE_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static describe()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "SERVICE_TYPE"

    const-string v3, "~s"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v1, Landroid/util/Pair;

    const-string v2, "onAccessToken"

    const-string v3, "si"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-object v0
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method

.method public static setServiceType(Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;)V
    .locals 1
    .param p0, "type"    # Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemutilities/module/ServiceModule;->SERVICE_TYPE:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/oculus/systemutilities/module/ServiceModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public onAccessToken(Ljava/lang/String;I)V
    .locals 3
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "callbackID"    # I

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/oculus/systemutilities/module/ServiceModule;->RVRCtxTag:J

    const-string v2, "[]"

    invoke-static {v0, v1, p2, v2}, Lcom/oculus/systemutilities/module/ServiceModule;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 38
    return-void
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
