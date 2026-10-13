.class final Lcom/facebook/common/dextricks/MultiDexClassLoader$2;
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
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomData(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    invoke-static {}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->access$100()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
