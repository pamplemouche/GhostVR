.class public Lcom/facebook/analytics2/logger/SimpleUploadSchedulerParamsProvider;
.super Ljava/lang/Object;
.source "SimpleUploadSchedulerParamsProvider.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;


# instance fields
.field private final mBackgroundParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

.field private final mForegroundParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/UploadSchedulerParams;Lcom/facebook/analytics2/logger/UploadSchedulerParams;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/facebook/analytics2/logger/SimpleUploadSchedulerParamsProvider;->mForegroundParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    .line 13
    iput-object p2, p0, Lcom/facebook/analytics2/logger/SimpleUploadSchedulerParamsProvider;->mBackgroundParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    return-void
.end method


# virtual methods
.method public getBackgroundParams()Lcom/facebook/analytics2/logger/UploadSchedulerParams;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SimpleUploadSchedulerParamsProvider;->mBackgroundParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    return-object v0
.end method

.method public getForegroundParams()Lcom/facebook/analytics2/logger/UploadSchedulerParams;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SimpleUploadSchedulerParamsProvider;->mForegroundParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    return-object v0
.end method
