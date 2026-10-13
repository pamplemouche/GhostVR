.class Lcom/oculus/horizon/nux360/TaskCallback$Error;
.super Ljava/lang/Exception;
.source "TaskCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/nux360/TaskCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Error"
.end annotation


# instance fields
.field public final apiError:Lcom/oculus/http/core/base/ApiError;


# direct methods
.method public constructor <init>(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/oculus/horizon/nux360/TaskCallback$Error;->apiError:Lcom/oculus/http/core/base/ApiError;

    .line 24
    return-void
.end method
