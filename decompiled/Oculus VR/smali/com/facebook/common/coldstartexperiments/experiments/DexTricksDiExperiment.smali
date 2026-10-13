.class public interface abstract Lcom/facebook/common/coldstartexperiments/experiments/DexTricksDiExperiment;
.super Ljava/lang/Object;
.source "DexTricksDiExperiment.java"

# interfaces
.implements Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;


# annotations
.annotation build Lcom/facebook/common/coldstartexperiments/annotations/ColdStartExperiment;
    mc = "android_dex_tricks_di"
.end annotation


# virtual methods
.method public abstract enableLockDexExp()Z
    .annotation build Lcom/facebook/common/coldstartexperiments/annotations/MobileConfigValue;
        field = "enabled"
    .end annotation
.end method

.method public abstract lockDexNum()I
    .annotation build Lcom/facebook/common/coldstartexperiments/annotations/MobileConfigValue;
        field = "dexes_nums_to_lock"
    .end annotation
.end method
