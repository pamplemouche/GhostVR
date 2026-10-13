.class public Lcom/facebook/react/config/ReactFeatureFlags;
.super Ljava/lang/Object;
.source "ReactFeatureFlags.java"


# static fields
.field public static enableExtraWebViewLogs:Z

.field public static enableFabricLogs:Z

.field public static lazilyLoadViewManagers:Z

.field public static logDroppedViews:Z

.field public static useArrayNativeAccessor:Z

.field public static useMapNativeAccessor:Z

.field public static useTurboModules:Z

.field public static useViewManagerDelegates:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->lazilyLoadViewManagers:Z

    .line 22
    sput-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->useArrayNativeAccessor:Z

    .line 25
    sput-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->useMapNativeAccessor:Z

    .line 32
    sput-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->useTurboModules:Z

    .line 38
    sput-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->logDroppedViews:Z

    .line 44
    sput-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->enableExtraWebViewLogs:Z

    .line 49
    sput-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->enableFabricLogs:Z

    .line 56
    sput-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->useViewManagerDelegates:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
