.class public Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$Builder;
.super Ljava/lang/Object;
.source "SerialExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mBackingExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "backingExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$Builder;->mBackingExecutor:Ljava/util/concurrent/Executor;

    .line 28
    return-void
.end method

.method static synthetic access$100(Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$Builder;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$Builder;

    .prologue
    .line 19
    iget-object v0, p0, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$Builder;->mBackingExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static getInstance()Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$Builder;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$Builder;

    invoke-static {}, Llibraries/marauder/analytics/utils/concurrent/AppExecutor;->getInstance()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$Builder;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public build()Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;-><init>(Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$Builder;Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$1;)V

    return-object v0
.end method
