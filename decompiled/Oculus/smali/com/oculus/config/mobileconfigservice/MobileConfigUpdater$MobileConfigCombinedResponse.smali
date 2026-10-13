.class Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$MobileConfigCombinedResponse;
.super Ljava/lang/Object;
.source "MobileConfigUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MobileConfigCombinedResponse"
.end annotation


# instance fields
.field public sessionbased:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$MobileConfigResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sessionbased"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$1;)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$MobileConfigCombinedResponse;-><init>()V

    return-void
.end method
