.class public interface abstract Lcom/facebook/common/coldstartexperiments/experiments/DexTricksClassVerifierExperiment;
.super Ljava/lang/Object;
.source "DexTricksClassVerifierExperiment.java"

# interfaces
.implements Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;


# annotations
.annotation build Lcom/facebook/common/coldstartexperiments/annotations/ColdStartExperiment;
    mc = "android_dex_tricks_class_verifier"
.end annotation


# virtual methods
.method public abstract dalvikNopVerifyClass()Z
    .annotation build Lcom/facebook/common/coldstartexperiments/annotations/MobileConfigValue;
        field = "dalvik_nop_verify_class"
    .end annotation
.end method
