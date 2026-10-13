.class public abstract Lcom/oculus/modules/codegen/PanelCookiesModule;
.super Ljava/lang/Object;
.source "PanelCookiesModule.java"


# static fields
.field protected static final MODULE_NAME:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/oculus/modules/codegen/PanelCookiesModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/PanelCookiesModule;->MODULE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(JILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/modules/codegen/PanelCookiesModule;->nativeInvokeCallback(JILjava/lang/String;)V

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
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "clearCookie"

    const-string v3, "s"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Landroid/util/Pair;

    const-string v2, "DEV_ONLY_clearAllCookies"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Landroid/util/Pair;

    const-string v2, "DEV_ONLY_getAllCookieNames"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Landroid/util/Pair;

    const-string v2, "DEV_ONLY_getCookieExpiration"

    const-string v3, "+sii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Landroid/util/Pair;

    const-string v2, "DEV_ONLY_setCookieWithNoExpiration"

    const-string v3, "ss"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getCookie"

    const-string v3, "+sii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Landroid/util/Pair;

    const-string v2, "setCookie"

    const-string v3, "ssd"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-object v0
.end method

.method private static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method private static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method protected final DEV_ONLY_clearAllCookies()V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/oculus/modules/codegen/PanelCookiesModule;->DEV_ONLY_clearAllCookiesImpl()V

    .line 58
    return-void
.end method

.method protected abstract DEV_ONLY_clearAllCookiesImpl()V
.end method

.method protected final DEV_ONLY_getAllCookieNames(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 60
    new-instance v0, Lcom/oculus/modules/codegen/PanelCookiesModule$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/PanelCookiesModule$1;-><init>(Lcom/oculus/modules/codegen/PanelCookiesModule;II)V

    .line 76
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/PanelCookiesModule;->DEV_ONLY_getAllCookieNamesImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 77
    return-void
.end method

.method protected abstract DEV_ONLY_getAllCookieNamesImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method protected final DEV_ONLY_getCookieExpiration(Ljava/lang/String;II)V
    .locals 1
    .param p1, "cookieName"    # Ljava/lang/String;
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 79
    new-instance v0, Lcom/oculus/modules/codegen/PanelCookiesModule$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/modules/codegen/PanelCookiesModule$2;-><init>(Lcom/oculus/modules/codegen/PanelCookiesModule;II)V

    .line 95
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v0}, Lcom/oculus/modules/codegen/PanelCookiesModule;->DEV_ONLY_getCookieExpirationImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 96
    return-void
.end method

.method protected abstract DEV_ONLY_getCookieExpirationImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final DEV_ONLY_setCookieWithNoExpiration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cookieName"    # Ljava/lang/String;
    .param p2, "cookieValue"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/oculus/modules/codegen/PanelCookiesModule;->DEV_ONLY_setCookieWithNoExpirationImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method protected abstract DEV_ONLY_setCookieWithNoExpirationImpl(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected final clearCookie(Ljava/lang/String;)V
    .locals 0
    .param p1, "cookieName"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/oculus/modules/codegen/PanelCookiesModule;->clearCookieImpl(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method protected abstract clearCookieImpl(Ljava/lang/String;)V
.end method

.method protected final getCookie(Ljava/lang/String;II)V
    .locals 1
    .param p1, "cookieName"    # Ljava/lang/String;
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 101
    new-instance v0, Lcom/oculus/modules/codegen/PanelCookiesModule$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/modules/codegen/PanelCookiesModule$3;-><init>(Lcom/oculus/modules/codegen/PanelCookiesModule;II)V

    .line 117
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v0}, Lcom/oculus/modules/codegen/PanelCookiesModule;->getCookieImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 118
    return-void
.end method

.method protected abstract getCookieImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/oculus/modules/codegen/PanelCookiesModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract marshallJSConstantCookiesAtStartup()Lorg/json/JSONObject;
.end method

.method protected final marshallJSConstants()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .local v0, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "COOKIES_AT_STARTUP"

    invoke-virtual {p0}, Lcom/oculus/modules/codegen/PanelCookiesModule;->marshallJSConstantCookiesAtStartup()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 43
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected final setCookie(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1
    .param p1, "cookieName"    # Ljava/lang/String;
    .param p2, "cookieValue"    # Ljava/lang/String;
    .param p3, "durationInSeconds"    # D

    .prologue
    .line 120
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oculus/modules/codegen/PanelCookiesModule;->setCookieImpl(Ljava/lang/String;Ljava/lang/String;D)V

    .line 121
    return-void
.end method

.method protected abstract setCookieImpl(Ljava/lang/String;Ljava/lang/String;D)V
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method
