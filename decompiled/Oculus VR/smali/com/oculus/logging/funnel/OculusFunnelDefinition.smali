.class public Lcom/oculus/logging/funnel/OculusFunnelDefinition;
.super Lcom/facebook/funnellogger/core/FunnelDefinition;
.source "OculusFunnelDefinition.java"


# static fields
.field private static final sFunnelDefinitions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/funnellogger/core/FunnelDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oculus/logging/funnel/OculusFunnelDefinition;->sFunnelDefinitions:Ljava/util/HashMap;

    return-void
.end method

.method public static getFunnelDefinition(Ljava/lang/String;)Lcom/facebook/funnellogger/core/FunnelDefinition;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcom/oculus/logging/funnel/OculusFunnelDefinition;->sFunnelDefinitions:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/funnellogger/core/FunnelDefinition;

    return-object v0
.end method
