.class Lcom/oculus/logging/funnel/FunnelLoggerManager$1;
.super Ljava/lang/Object;
.source "FunnelLoggerManager.java"

# interfaces
.implements Lcom/facebook/funnellogger/core/FunnelDefinitionAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/logging/funnel/FunnelLoggerManager;-><init>(Lcom/facebook/inject/InjectorLike;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/logging/funnel/FunnelLoggerManager;


# direct methods
.method constructor <init>(Lcom/oculus/logging/funnel/FunnelLoggerManager;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oculus/logging/funnel/FunnelLoggerManager$1;->this$0:Lcom/oculus/logging/funnel/FunnelLoggerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFunnelDefinition(Ljava/lang/String;)Lcom/facebook/funnellogger/core/FunnelDefinition;
    .locals 1

    .prologue
    .line 47
    invoke-static {p1}, Lcom/oculus/logging/funnel/OculusFunnelDefinition;->getFunnelDefinition(Ljava/lang/String;)Lcom/facebook/funnellogger/core/FunnelDefinition;

    move-result-object v0

    return-object v0
.end method
