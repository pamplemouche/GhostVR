.class public final Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperiments;
.super Ljava/lang/Object;
.source "FbColdStartExperiments.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultValues()Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->defaultValues()Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;

    move-result-object v0

    return-object v0
.end method

.method public static getExperiment()Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;",
            ">()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 21
    invoke-static {}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->getFbColdStartExperimentsValues()Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;

    move-result-object v0

    return-object v0
.end method

.method public static getExperiment(Landroid/content/Context;)Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;",
            ">(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {p0}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->getFbColdStartExperimentsValues(Landroid/content/Context;)Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;

    move-result-object v0

    return-object v0
.end method
