.class Lcom/oculus/horizon/react/HorizonReactPackage$36;
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


# direct methods
.method constructor <init>(Lcom/oculus/horizon/react/HorizonReactPackage;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/oculus/horizon/react/HorizonReactPackage$36;->this$0:Lcom/oculus/horizon/react/HorizonReactPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/react/bridge/NativeModule;
    .locals 3

    .prologue
    .line 578
    const/4 v0, 0x3

    sget v1, Lcom/oculus/horizon/react/HorizonReactModule$UL_id;->$ul_$xXXcom_oculus_horizon_react_modules_HorizonReactExceptionManager$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/react/HorizonReactPackage$36;->this$0:Lcom/oculus/horizon/react/HorizonReactPackage;

    invoke-static {v2}, Lcom/oculus/horizon/react/HorizonReactPackage;->access$100(Lcom/oculus/horizon/react/HorizonReactPackage;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/oculus/horizon/react/HorizonReactPackage$36;->get()Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    return-object v0
.end method
