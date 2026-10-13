.class Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;
.super Ljava/lang/Object;
.source "MobileConfigClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/config/mobileconfigclient/MobileConfigClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MobileConfigCombinedResponse"
.end annotation


# instance fields
.field public sessionbased:Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;

.field public sessionless:Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;-><init>()V

    return-void
.end method
