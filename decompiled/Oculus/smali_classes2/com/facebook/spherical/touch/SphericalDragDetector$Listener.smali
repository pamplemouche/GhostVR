.class public interface abstract Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;
.super Ljava/lang/Object;
.source "SphericalDragDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/spherical/touch/SphericalDragDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDrag(FF)V
.end method

.method public abstract onDragEndWithFling(FF)V
.end method

.method public abstract onDragStart()V
.end method

.method public abstract useJoystick()Z
.end method
