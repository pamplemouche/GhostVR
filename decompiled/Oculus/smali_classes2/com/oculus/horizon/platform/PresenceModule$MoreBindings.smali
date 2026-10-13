.class public interface abstract Lcom/oculus/horizon/platform/PresenceModule$MoreBindings;
.super Ljava/lang/Object;
.source "PresenceModule.java"


# annotations
.annotation build Lcom/facebook/inject/Bindings;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/platform/PresenceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MoreBindings"
.end annotation


# virtual methods
.method public abstract addPresenceInit(Lcom/oculus/horizon/platform/PresenceInit;)Lcom/oculus/common/init/INeedInit;
    .annotation build Lcom/facebook/inject/MultiBind;
    .end annotation
.end method
