.class Lcom/oculus/horizon/react/HorizonReactPackage$30;
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
    .line 515
    iput-object p1, p0, Lcom/oculus/horizon/react/HorizonReactPackage$30;->this$0:Lcom/oculus/horizon/react/HorizonReactPackage;

    iput-object p2, p0, Lcom/oculus/horizon/react/HorizonReactPackage$30;->val$reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/react/bridge/NativeModule;
    .locals 5

    .prologue
    .line 518
    new-instance v1, Lcom/oculus/horizon/react/modules/HorizonAnalyticsModule;

    iget-object v2, p0, Lcom/oculus/horizon/react/HorizonReactPackage$30;->val$reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const/4 v0, 0x1

    sget v3, Lcom/oculus/horizon/logging/LoggingModule$UL_id;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXBINDING_ID:I

    iget-object v4, p0, Lcom/oculus/horizon/react/HorizonReactPackage$30;->this$0:Lcom/oculus/horizon/react/HorizonReactPackage;

    invoke-static {v4}, Lcom/oculus/horizon/react/HorizonReactPackage;->access$100(Lcom/oculus/horizon/react/HorizonReactPackage;)Lcom/facebook/inject/InjectionContext;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/logging/OculusLogger;

    invoke-direct {v1, v2, v0}, Lcom/oculus/horizon/react/modules/HorizonAnalyticsModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/oculus/horizon/logging/OculusLogger;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/oculus/horizon/react/HorizonReactPackage$30;->get()Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    return-object v0
.end method
