.class public interface abstract Lcom/facebook/common/coldstartexperiments/experiments/MultiDexClassLoaderV2Experiment;
.super Ljava/lang/Object;
.source "MultiDexClassLoaderV2Experiment.java"

# interfaces
.implements Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;


# annotations
.annotation build Lcom/facebook/common/coldstartexperiments/annotations/ColdStartExperiment;
    mc = "qe_android_multidexclassloader_v2"
.end annotation


# virtual methods
.method public abstract mdclSelector()I
    .annotation build Lcom/facebook/common/coldstartexperiments/annotations/MobileConfigValue;
        field = "mdcl_selector"
    .end annotation
.end method
