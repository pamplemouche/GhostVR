.class Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$2;
.super Ljava/lang/Object;
.source "OVRHorizonLibraryModule.java"

# interfaces
.implements Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule;->monitorForAppChange(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule;

.field final synthetic val$monitorPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$2;->this$0:Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule;

    iput-object p2, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$2;->val$monitorPackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$2;->this$0:Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule;

    invoke-static {v0}, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule;->access$100(Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 120
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v1, "appChanged"

    iget-object v2, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$2;->this$0:Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$2;->val$monitorPackageName:Ljava/lang/String;

    .line 121
    :cond_0
    invoke-static {v2, p1}, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule;->access$000(Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    return-void
.end method
