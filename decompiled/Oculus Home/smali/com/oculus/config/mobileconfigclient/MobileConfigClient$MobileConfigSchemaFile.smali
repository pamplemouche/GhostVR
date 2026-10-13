.class Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchemaFile;
.super Ljava/lang/Object;
.source "MobileConfigClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/config/mobileconfigclient/MobileConfigClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MobileConfigSchemaFile"
.end annotation


# instance fields
.field public schemas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchema;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchemaFile;-><init>()V

    return-void
.end method
