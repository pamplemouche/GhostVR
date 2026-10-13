.class public interface abstract Lcom/oculus/horizon/bluetooth/CalibrationPresenter$View;
.super Ljava/lang/Object;
.source "CalibrationPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/CalibrationPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract findGyroStepFragment()Landroidx/fragment/app/Fragment;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract findIntroFragment()Landroidx/fragment/app/Fragment;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract findMagStepFragment()Landroidx/fragment/app/Fragment;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract onComplete()V
.end method

.method public abstract onError(Lcom/oculus/horizon/bluetooth/CalibrationPresenter$Reason;)V
.end method

.method public abstract onSkip()V
.end method

.method public abstract showGyroStepFragment()V
.end method

.method public abstract showIntroStepFragment()V
.end method

.method public abstract showMagStepFragment()V
.end method
