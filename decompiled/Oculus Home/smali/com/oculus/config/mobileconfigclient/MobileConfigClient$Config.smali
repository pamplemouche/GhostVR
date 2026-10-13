.class Lcom/oculus/config/mobileconfigclient/MobileConfigClient$Config;
.super Ljava/lang/Object;
.source "MobileConfigClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/config/mobileconfigclient/MobileConfigClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Config"
.end annotation


# instance fields
.field public fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;",
            ">;"
        }
    .end annotation
.end field

.field public hash:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$Config;-><init>()V

    return-void
.end method
