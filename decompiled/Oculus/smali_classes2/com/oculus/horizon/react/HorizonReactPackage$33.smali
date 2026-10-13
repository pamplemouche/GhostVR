.class Lcom/oculus/horizon/react/HorizonReactPackage$33;
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
    .line 545
    iput-object p1, p0, Lcom/oculus/horizon/react/HorizonReactPackage$33;->this$0:Lcom/oculus/horizon/react/HorizonReactPackage;

    iput-object p2, p0, Lcom/oculus/horizon/react/HorizonReactPackage$33;->val$reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/react/bridge/NativeModule;
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/oculus/horizon/react/HorizonReactPackage$33;->this$0:Lcom/oculus/horizon/react/HorizonReactPackage;

    invoke-static {v0}, Lcom/oculus/horizon/react/HorizonReactPackage;->access$300(Lcom/oculus/horizon/react/HorizonReactPackage;)Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModuleProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/react/HorizonReactPackage$33;->val$reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModuleProvider;->get(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/oculus/horizon/react/HorizonReactPackage$33;->get()Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    return-object v0
.end method
