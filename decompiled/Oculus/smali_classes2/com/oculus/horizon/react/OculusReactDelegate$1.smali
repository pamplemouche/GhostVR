.class Lcom/oculus/horizon/react/OculusReactDelegate$1;
.super Ljava/lang/Object;
.source "OculusReactDelegate.java"

# interfaces
.implements Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/react/OculusReactDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/react/OculusReactDelegate;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/react/OculusReactDelegate;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/oculus/horizon/react/OculusReactDelegate$1;->this$0:Lcom/oculus/horizon/react/OculusReactDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invokeDefaultOnBackPressed()V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactDelegate$1;->this$0:Lcom/oculus/horizon/react/OculusReactDelegate;

    invoke-virtual {v0}, Lcom/oculus/horizon/react/OculusReactDelegate;->invokeBaseActivityBackPressed()V

    .line 15
    return-void
.end method
