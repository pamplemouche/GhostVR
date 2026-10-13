.class public interface abstract Lcom/facebook/common/coldstartexperiments/experiments/NativeSignalHandlingExperiment;
.super Ljava/lang/Object;
.source "NativeSignalHandlingExperiment.java"

# interfaces
.implements Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;


# annotations
.annotation build Lcom/facebook/common/coldstartexperiments/annotations/ColdStartExperiment;
    mc = "android_native_signal_handling"
.end annotation


# virtual methods
.method public abstract useAlternateSignalStackForSigsegv()Z
    .annotation build Lcom/facebook/common/coldstartexperiments/annotations/MobileConfigValue;
        field = "use_alternate_signal_stack_for_sigsegv"
    .end annotation
.end method
