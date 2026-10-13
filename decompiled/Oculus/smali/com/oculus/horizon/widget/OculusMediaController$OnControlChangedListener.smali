.class public interface abstract Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;
.super Ljava/lang/Object;
.source "OculusMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/widget/OculusMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnControlChangedListener"
.end annotation


# virtual methods
.method public abstract onSeekProgressChanged(Landroid/widget/SeekBar;I)V
.end method

.method public abstract onStartSeeking(Landroid/widget/SeekBar;)V
.end method

.method public abstract onStopSeeking(Landroid/widget/SeekBar;)V
.end method

.method public abstract replay()V
.end method

.method public abstract togglePausePlay(Landroid/view/View;)V
.end method
