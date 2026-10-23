.class public final Lcom/facebook/catalyst/modules/fbauth/RelayAPIConfigModule;
.super Lcom/facebook/fbreact/specs/NativeRelayConfigSpec;
.source "RelayAPIConfigModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RelayAPIConfig"
.end annotation


# instance fields
.field private final mAccessToken:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mActorID:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mGraphDomain:Ljava/lang/String;

.field private final mGraphSubdomain:Ljava/lang/String;

.field private final mLocales:Lcom/facebook/common/locale/ILocales;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/common/locale/ILocales;)V
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 45
    const-string v5, "ghostvr.pamplemouche.com"

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/catalyst/modules/fbauth/RelayAPIConfigModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/common/locale/ILocales;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/common/locale/ILocales;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeRelayConfigSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 56
    iput-object p2, p0, Lcom/facebook/catalyst/modules/fbauth/RelayAPIConfigModule;->mAccessToken:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/facebook/catalyst/modules/fbauth/RelayAPIConfigModule;->mActorID:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/facebook/catalyst/modules/fbauth/RelayAPIConfigModule;->mLocales:Lcom/facebook/common/locale/ILocales;

    .line 59
    iput-object p5, p0, Lcom/facebook/catalyst/modules/fbauth/RelayAPIConfigModule;->mGraphDomain:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Lcom/facebook/catalyst/modules/fbauth/RelayAPIConfigModule;->mGraphSubdomain:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private getGraphURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/catalyst/modules/fbauth/RelayAPIConfigModule;->mGraphDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/catalyst/modules/fbauth/RelayAPIConfigModule;->mLocales:Lcom/facebook/common/locale/ILocales;

    invoke-interface {v1}, Lcom/facebook/common/locale/ILocales;->getFacebookPlatformLocaleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSandboxSubdomainForGraphURI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    const-string/jumbo v1, "sandbox_subdomain"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "RelayAPIConfig"

    return-object v0
.end method

.method public getSandbox(Lcom/facebook/react/bridge/Callback;)V
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/RelayAPIConfigModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/catalyst/modules/fbauth/RelayAPIConfigModule;->getSandboxSubdomainForGraphURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 103
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method protected getTypedExportedConstants()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    const-string v1, "accessToken"

    iget-object v2, p0, Lcom/facebook/catalyst/modules/fbauth/RelayAPIConfigModule;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "actorID"

    iget-object v2, p0, Lcom/facebook/catalyst/modules/fbauth/RelayAPIConfigModule;->mActorID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "fetchTimeout"

    const/16 v2, 0x7530

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v1, "retryDelays"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0xbb8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v1, "xhrEncoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "graphBatchURI"

    const-string v2, "/graphqlbatch"

    invoke-direct {p0, v2}, Lcom/facebook/catalyst/modules/fbauth/RelayAPIConfigModule;->getGraphURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "graphURI"

    const-string v2, "/graphql"

    invoke-direct {p0, v2}, Lcom/facebook/catalyst/modules/fbauth/RelayAPIConfigModule;->getGraphURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-object v0
.end method

.method public setSandbox(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/RelayAPIConfigModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    const-string/jumbo v1, "sandbox_subdomain"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    return-void
.end method
