.class public abstract Lcom/oculus/modules/codegen/UserManagerModule;
.super Ljava/lang/Object;
.source "UserManagerModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;
    }
.end annotation


# static fields
.field protected static final MODULE_NAME:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/oculus/modules/codegen/UserManagerModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/UserManagerModule;->MODULE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(JILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/modules/codegen/UserManagerModule;->nativeInvokeCallback(JILjava/lang/String;)V

    return-void
.end method

.method protected static final describe()Ljava/util/List;
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
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "addUser"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getUsers"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Landroid/util/Pair;

    const-string v2, "isSystemUser"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Landroid/util/Pair;

    const-string v2, "removeSelf"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Landroid/util/Pair;

    const-string v2, "removeUser"

    const-string v3, "d"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-object v0
.end method

.method private static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method private static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method protected final addUser()V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/oculus/modules/codegen/UserManagerModule;->addUserImpl()V

    .line 52
    return-void
.end method

.method protected abstract addUserImpl()V
.end method

.method protected final getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/oculus/modules/codegen/UserManagerModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final getUsers(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 54
    new-instance v0, Lcom/oculus/modules/codegen/UserManagerModule$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/UserManagerModule$1;-><init>(Lcom/oculus/modules/codegen/UserManagerModule;II)V

    .line 70
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/UserManagerModule;->getUsersImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 71
    return-void
.end method

.method protected abstract getUsersImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;",
            ">;>;)V"
        }
    .end annotation
.end method

.method protected final isSystemUser(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 73
    new-instance v0, Lcom/oculus/modules/codegen/UserManagerModule$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/UserManagerModule$2;-><init>(Lcom/oculus/modules/codegen/UserManagerModule;II)V

    .line 89
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/UserManagerModule;->isSystemUserImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 90
    return-void
.end method

.method protected abstract isSystemUserImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract marshallJSConstantIsMultiUserEnabled()Z
.end method

.method protected final marshallJSConstants()Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .local v0, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "isMultiUserEnabled"

    invoke-virtual {p0}, Lcom/oculus/modules/codegen/UserManagerModule;->marshallJSConstantIsMultiUserEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 42
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected final removeSelf()V
    .locals 0

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/oculus/modules/codegen/UserManagerModule;->removeSelfImpl()V

    .line 93
    return-void
.end method

.method protected abstract removeSelfImpl()V
.end method

.method protected final removeUser(D)V
    .locals 1
    .param p1, "userId"    # D

    .prologue
    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/oculus/modules/codegen/UserManagerModule;->removeUserImpl(D)V

    .line 96
    return-void
.end method

.method protected abstract removeUserImpl(D)V
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method
