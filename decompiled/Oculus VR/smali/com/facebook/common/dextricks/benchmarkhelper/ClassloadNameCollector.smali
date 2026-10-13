.class public Lcom/facebook/common/dextricks/benchmarkhelper/ClassloadNameCollector;
.super Ljava/lang/Object;
.source "ClassloadNameCollector.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/ThreadConfined;
    value = "ANY"
.end annotation


# static fields
.field public static volatile sEnabled:Z

.field private static final sLoadedClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/dextricks/benchmarkhelper/ClassloadNameCollector;->sLoadedClasses:Ljava/util/List;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/common/dextricks/benchmarkhelper/ClassloadNameCollector;->sEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classLoaded(Ljava/lang/Class;)V
    .locals 2

    .prologue
    .line 23
    sget-boolean v0, Lcom/facebook/common/dextricks/benchmarkhelper/ClassloadNameCollector;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/facebook/common/dextricks/benchmarkhelper/ClassloadNameCollector;->sLoadedClasses:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    return-void
.end method
