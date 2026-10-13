.class public abstract Lcom/oculus/horizon/react/OculusReactDelegate;
.super Ljava/lang/Object;
.source "OculusReactDelegate.java"


# instance fields
.field private final mDefaultHardwareBackBtnHandler:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/oculus/horizon/react/OculusReactDelegate$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/react/OculusReactDelegate$1;-><init>(Lcom/oculus/horizon/react/OculusReactDelegate;)V

    iput-object v0, p0, Lcom/oculus/horizon/react/OculusReactDelegate;->mDefaultHardwareBackBtnHandler:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    return-void
.end method


# virtual methods
.method public getBackButtonHandler()Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactDelegate;->mDefaultHardwareBackBtnHandler:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    return-object v0
.end method

.method public abstract invokeBaseActivityBackPressed()V
.end method
