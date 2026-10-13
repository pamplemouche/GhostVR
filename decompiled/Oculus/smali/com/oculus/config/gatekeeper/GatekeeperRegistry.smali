.class public interface abstract Lcom/oculus/config/gatekeeper/GatekeeperRegistry;
.super Ljava/lang/Object;
.source "GatekeeperRegistry.java"


# virtual methods
.method public abstract getRegisteredGatekeepers()Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isGatekeeperRegistered(Ljava/lang/String;)Z
.end method
