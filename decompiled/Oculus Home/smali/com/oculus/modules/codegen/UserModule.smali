.class public abstract Lcom/oculus/modules/codegen/UserModule;
.super Ljava/lang/Object;
.source "UserModule.java"


# static fields
.field protected static final MODULE_NAME:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/oculus/modules/codegen/UserModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/UserModule;->MODULE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final describe()Ljava/util/List;
    .locals 1
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
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    return-object v0
.end method

.method private static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method private static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method protected final getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/oculus/modules/codegen/UserModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract marshallJSConstantIsPrimaryUser()Z
.end method

.method protected final marshallJSConstants()Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 33
    .local v0, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "IS_PRIMARY_USER"

    invoke-virtual {p0}, Lcom/oculus/modules/codegen/UserModule;->marshallJSConstantIsPrimaryUser()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 34
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
