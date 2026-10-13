.class public Lcom/oculus/horizon/react/modules/HorizonAnalyticsModule;
.super Lcom/facebook/fbreact/specs/NativeAnalyticsSpec;
.source "HorizonAnalyticsModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "Analytics"
.end annotation


# instance fields
.field private final mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/oculus/horizon/logging/OculusLogger;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeAnalyticsSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 21
    iput-object p2, p0, Lcom/oculus/horizon/react/modules/HorizonAnalyticsModule;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    .line 22
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "Analytics"

    return-object v0
.end method

.method public logCounter(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public logEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)V
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/react/modules/HorizonAnalyticsModule;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportEventFromReactNative(Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    return-void
.end method

.method public logRealtimeEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    return-void
.end method
