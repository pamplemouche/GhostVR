.class public interface abstract Lcom/oculus/os/enterprise/Mode;
.super Ljava/lang/Object;
.source "Mode.java"


# virtual methods
.method public abstract getApplications()[Ljava/lang/String;
.end method

.method public abstract getAuiCapabilities()[Lcom/oculus/os/enterprise/AUICapability;
.end method

.method public abstract getDefaultApplication()Ljava/lang/String;
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getHomeButtonBehaviour()Lcom/oculus/os/enterprise/HomeButtonBehaviour;
.end method

.method public abstract getPin()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
