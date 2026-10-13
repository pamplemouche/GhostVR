.class Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;
.super Ljava/lang/Object;
.source "MobileConfigClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/config/mobileconfigclient/MobileConfigClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MobileConfigResponse"
.end annotation


# instance fields
.field public configs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/config/mobileconfigclient/MobileConfigClient$Config;",
            ">;"
        }
    .end annotation
.end field

.field public queryHash:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;-><init>()V

    return-void
.end method
