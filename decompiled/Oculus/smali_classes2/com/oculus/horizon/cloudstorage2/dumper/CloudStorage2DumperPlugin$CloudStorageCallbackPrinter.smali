.class Lcom/oculus/horizon/cloudstorage2/dumper/CloudStorage2DumperPlugin$CloudStorageCallbackPrinter;
.super Ljava/lang/Object;
.source "CloudStorage2DumperPlugin.java"

# interfaces
.implements Lcom/oculus/cloudstoragehelper/CloudStorageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cloudstorage2/dumper/CloudStorage2DumperPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloudStorageCallbackPrinter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/cloudstorage2/dumper/CloudStorage2DumperPlugin$1;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/oculus/horizon/cloudstorage2/dumper/CloudStorage2DumperPlugin$CloudStorageCallbackPrinter;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/oculus/cloudstoragehelper/CloudStorageResult;)V
    .locals 3

    .prologue
    .line 178
    const-string v0, "cloudstorage"

    const-string v1, "CloudStorage dumper result = %s"

    invoke-virtual {p1}, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 175
    check-cast p1, Lcom/oculus/cloudstoragehelper/CloudStorageResult;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/dumper/CloudStorage2DumperPlugin$CloudStorageCallbackPrinter;->onResult(Lcom/oculus/cloudstoragehelper/CloudStorageResult;)V

    return-void
.end method
