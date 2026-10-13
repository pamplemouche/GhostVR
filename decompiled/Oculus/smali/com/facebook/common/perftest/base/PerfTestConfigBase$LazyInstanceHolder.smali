.class final Lcom/facebook/common/perftest/base/PerfTestConfigBase$LazyInstanceHolder;
.super Ljava/lang/Object;
.source "PerfTestConfigBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/perftest/base/PerfTestConfigBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyInstanceHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/facebook/common/perftest/base/PerfTestConfigBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/facebook/common/perftest/base/PerfTestConfigBase;

    invoke-direct {v0}, Lcom/facebook/common/perftest/base/PerfTestConfigBase;-><init>()V

    sput-object v0, Lcom/facebook/common/perftest/base/PerfTestConfigBase$LazyInstanceHolder;->sInstance:Lcom/facebook/common/perftest/base/PerfTestConfigBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/facebook/common/perftest/base/PerfTestConfigBase;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/facebook/common/perftest/base/PerfTestConfigBase$LazyInstanceHolder;->sInstance:Lcom/facebook/common/perftest/base/PerfTestConfigBase;

    return-object v0
.end method
