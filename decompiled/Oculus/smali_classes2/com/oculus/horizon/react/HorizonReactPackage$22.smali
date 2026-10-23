.class Lcom/oculus/horizon/react/HorizonReactPackage$22;
.super Ljava/lang/Object;
.source "HorizonReactPackage.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/react/HorizonReactPackage;->getNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/facebook/react/bridge/NativeModule;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/react/HorizonReactPackage;

.field final synthetic val$reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/react/HorizonReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/oculus/horizon/react/HorizonReactPackage$22;->this$0:Lcom/oculus/horizon/react/HorizonReactPackage;

    iput-object p2, p0, Lcom/oculus/horizon/react/HorizonReactPackage$22;->val$reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/react/bridge/NativeModule;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 428
    iget-object v0, p0, Lcom/oculus/horizon/react/HorizonReactPackage$22;->this$0:Lcom/oculus/horizon/react/HorizonReactPackage;

    invoke-static {v0}, Lcom/oculus/horizon/react/HorizonReactPackage;->access$000(Lcom/oculus/horizon/react/HorizonReactPackage;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/credentials/Credentials;

    .line 429
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oculus/auth/credentials/Credentials;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 430
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oculus/auth/credentials/Credentials;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 431
    :cond_0
    new-instance v0, Lcom/facebook/catalyst/modules/fbauth/RelayAPIConfigModule;

    iget-object v1, p0, Lcom/oculus/horizon/react/HorizonReactPackage$22;->val$reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 435
    invoke-static {}, Lcom/facebook/fbreact/i18n/FbReactLocalesProvider;->get()Lcom/facebook/common/locale/ILocales;

    move-result-object v4

    const-string v5, "ghostvr.pamplemouche.com"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/facebook/catalyst/modules/fbauth/RelayAPIConfigModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/common/locale/ILocales;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    move-object v3, v2

    .line 429
    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/oculus/horizon/react/HorizonReactPackage$22;->get()Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    return-object v0
.end method
