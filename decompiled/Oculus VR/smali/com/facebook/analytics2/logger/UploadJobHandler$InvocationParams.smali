.class public Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;
.super Ljava/lang/Object;
.source "UploadJobHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/UploadJobHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvocationParams"
.end annotation


# instance fields
.field public final jobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

.field public final jobId:I

.field public final startServiceHackAction:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILcom/facebook/analytics2/logger/UploadJobConfig;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput p1, p0, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->jobId:I

    .line 345
    iput-object p2, p0, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->jobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    .line 346
    iput-object p3, p0, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->startServiceHackAction:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public static forJob(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;)Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 339
    new-instance v0, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

    invoke-direct {v0, p0, p2, p1}, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;-><init>(ILcom/facebook/analytics2/logger/UploadJobConfig;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forLogoutJob(ILcom/facebook/analytics2/logger/UploadJobConfig;Ljava/lang/String;)Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;
    .locals 1

    .prologue
    .line 334
    new-instance v0, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;-><init>(ILcom/facebook/analytics2/logger/UploadJobConfig;Ljava/lang/String;)V

    return-object v0
.end method
