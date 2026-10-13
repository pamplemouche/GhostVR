.class Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;
.super Ljava/lang/Object;
.source "CommonUploadSchedulerParams.java"


# instance fields
.field public final marauderTier:Ljava/lang/String;

.field public final priority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

.field public final privacyPolicy:Ljava/lang/Class;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/PrivacyPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public final samplingPolicyConfig:Ljava/lang/Class;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/flexiblesampling/SamplingPolicyConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final uploadJobInstrumentation:Ljava/lang/Class;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/UploadJobInstrumentation;",
            ">;"
        }
    .end annotation
.end field

.field public final uploader:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/Uploader;",
            ">;"
        }
    .end annotation
.end field

.field public final uploaderHandlerThreadFactory:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/HandlerThreadFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/facebook/analytics2/logger/UploadJob$Priority;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/Uploader;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/flexiblesampling/SamplingPolicyConfig;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/PrivacyPolicy;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/HandlerThreadFactory;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/UploadJobInstrumentation;",
            ">;",
            "Lcom/facebook/analytics2/logger/UploadJob$Priority;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->uploader:Ljava/lang/Class;

    .line 26
    iput-object p2, p0, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->samplingPolicyConfig:Ljava/lang/Class;

    .line 27
    iput-object p3, p0, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->privacyPolicy:Ljava/lang/Class;

    .line 28
    iput-object p4, p0, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->uploaderHandlerThreadFactory:Ljava/lang/Class;

    .line 29
    iput-object p5, p0, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->uploadJobInstrumentation:Ljava/lang/Class;

    .line 30
    iput-object p6, p0, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->priority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    .line 31
    iput-object p7, p0, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->marauderTier:Ljava/lang/String;

    .line 32
    return-void
.end method
