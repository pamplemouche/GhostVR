.class Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$MobileConfigSchemasFromMetadataJson;
.super Ljava/lang/Object;
.source "MobileConfigUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MobileConfigSchemasFromMetadataJson"
.end annotation


# instance fields
.field public schemas:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "schema"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$ConfigDetailsFromMetadataJson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
