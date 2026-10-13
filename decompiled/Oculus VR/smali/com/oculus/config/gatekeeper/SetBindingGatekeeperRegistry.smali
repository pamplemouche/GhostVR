.class public Lcom/oculus/config/gatekeeper/SetBindingGatekeeperRegistry;
.super Ljava/lang/Object;
.source "SetBindingGatekeeperRegistry.java"

# interfaces
.implements Lcom/oculus/config/gatekeeper/GatekeeperRegistry;


# instance fields
.field private final mGatekeeperSet:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/config/gatekeeper/SetBindingGatekeeperRegistry;->mGatekeeperSet:Lcom/google/common/collect/ImmutableSet;

    .line 15
    return-void
.end method
