.class public Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;
.super Ljava/lang/Object;
.source "SerialExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/common/concurrent/SerialExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mBackingExecutor:Ljava/util/concurrent/Executor;

.field private mMaxmimumComputeTimeMs:I

.field private mMaxmimumDispatchTimeMs:I

.field private mMaxmimumWallclockRuntimeMs:I

.field private mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->mBackingExecutor:Ljava/util/concurrent/Executor;

    .line 60
    iput v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->mMaxmimumComputeTimeMs:I

    .line 61
    iput v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->mMaxmimumWallclockRuntimeMs:I

    .line 62
    iput v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->mMaxmimumDispatchTimeMs:I

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->mBackingExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->mMaxmimumComputeTimeMs:I

    return v0
.end method

.method static synthetic access$400(Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->mMaxmimumWallclockRuntimeMs:I

    return v0
.end method

.method static synthetic access$500(Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->mMaxmimumDispatchTimeMs:I

    return v0
.end method

.method public static create(Ljava/util/concurrent/Executor;)Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;

    invoke-direct {v0, p0}, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static createWithDefaultSharedPool()Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;

    invoke-static {}, Lcom/facebook/rti/common/concurrent/RtiExecutor;->getInstance()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/rti/common/concurrent/SerialExecutor;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/facebook/rti/common/concurrent/SerialExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/rti/common/concurrent/SerialExecutor;-><init>(Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;Lcom/facebook/rti/common/concurrent/SerialExecutor$1;)V

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->mName:Ljava/lang/String;

    .line 67
    return-object p0
.end method
