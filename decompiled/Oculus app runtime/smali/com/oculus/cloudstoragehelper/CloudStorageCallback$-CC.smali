.class public final synthetic Lcom/oculus/cloudstoragehelper/CloudStorageCallback$-CC;
.super Ljava/lang/Object;
.source "CloudStorageCallback.java"


# direct methods
.method public static synthetic $default$onResult(Lcom/oculus/cloudstoragehelper/CloudStorageCallback;Ljava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Lcom/oculus/cloudstoragehelper/CloudStorageCallback;

    .line 8
    check-cast p1, Lcom/oculus/cloudstoragehelper/CloudStorageResult;

    invoke-interface {p0, p1}, Lcom/oculus/cloudstoragehelper/CloudStorageCallback;->onResult(Lcom/oculus/cloudstoragehelper/CloudStorageResult;)V

    return-void
.end method
