.class final Lcom/facebook/common/dextricks/MultiDexClassLoader$1;
.super Ljava/lang/Object;
.source "MultiDexClassLoader.java"

# interfaces
.implements Lcom/facebook/acra/CustomReportDataSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/common/dextricks/MultiDexClassLoader;->install(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/facebook/common/coldstartexperiments/experiments/MultiDexClassLoaderV2Experiment;ZZ)Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomData(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 423
    invoke-static {}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->access$100()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 424
    instance-of v1, v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;

    if-eqz v1, :cond_0

    .line 425
    check-cast v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;

    .line 426
    invoke-virtual {v0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->getRecentFailedClasses()[Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
