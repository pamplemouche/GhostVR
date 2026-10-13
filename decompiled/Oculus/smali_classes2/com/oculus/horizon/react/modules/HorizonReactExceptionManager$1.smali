.class Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager$1;
.super Ljava/lang/Object;
.source "HorizonReactExceptionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager;->handleException(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$handlersCopy:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager;Ljava/util/Set;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager$1;->this$0:Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager;

    iput-object p2, p0, Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager$1;->val$handlersCopy:Ljava/util/Set;

    iput-object p3, p0, Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 115
    const/4 v0, 0x0

    sget v1, Lcom/oculus/horizon/react/HorizonReactModule$UL_id;->$ul_$xXXcom_oculus_horizon_react_HorizonReactNativeHost$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager$1;->this$0:Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager;

    invoke-static {v2}, Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager;->access$000(Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/react/HorizonReactNativeHost;

    invoke-virtual {v0}, Lcom/oculus/horizon/react/HorizonReactNativeHost;->clear()V

    .line 116
    iget-object v0, p0, Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager$1;->val$handlersCopy:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

    .line 117
    iget-object v2, p0, Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager$1;->val$e:Ljava/lang/Exception;

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method
