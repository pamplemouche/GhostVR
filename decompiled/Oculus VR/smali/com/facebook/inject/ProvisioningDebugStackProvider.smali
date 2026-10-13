.class public Lcom/facebook/inject/ProvisioningDebugStackProvider;
.super Ljava/lang/Object;
.source "ProvisioningDebugStackProvider.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DEBUG_CLASS_GRAPH_BUILDER:Lcom/facebook/inject/DebugClassGraphBuilder;


# instance fields
.field private final mDelegate:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mKey:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/facebook/inject/DebugClassGraphBuilder;->DEBUG_CLASS_GRAPH_BUILDER:Lcom/facebook/inject/DebugClassGraphBuilder;

    sput-object v0, Lcom/facebook/inject/ProvisioningDebugStackProvider;->DEBUG_CLASS_GRAPH_BUILDER:Lcom/facebook/inject/DebugClassGraphBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/google/inject/Key;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Ljavax/inject/Provider",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/inject/ProvisioningDebugStackProvider;->mKey:Lcom/google/inject/Key;

    .line 24
    iput-object p2, p0, Lcom/facebook/inject/ProvisioningDebugStackProvider;->mDelegate:Ljavax/inject/Provider;

    .line 25
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/facebook/inject/ProvisioningDebugStack$StackType;->INSTANCE_GET:Lcom/facebook/inject/ProvisioningDebugStack$StackType;

    iget-object v1, p0, Lcom/facebook/inject/ProvisioningDebugStackProvider;->mKey:Lcom/google/inject/Key;

    invoke-static {v0, v1}, Lcom/facebook/inject/ProvisioningDebugStack;->push(Lcom/facebook/inject/ProvisioningDebugStack$StackType;Lcom/google/inject/Key;)V

    .line 35
    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/facebook/debug/log/BLog;->isLoggable(I)Z

    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    const-string v0, "Provider.get %s"

    iget-object v2, p0, Lcom/facebook/inject/ProvisioningDebugStackProvider;->mKey:Lcom/google/inject/Key;

    invoke-static {v0, v2}, Lcom/facebook/debug/tracer/Tracer;->startTracer(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 40
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/inject/ProvisioningDebugStackProvider;->DEBUG_CLASS_GRAPH_BUILDER:Lcom/facebook/inject/DebugClassGraphBuilder;

    iget-object v2, p0, Lcom/facebook/inject/ProvisioningDebugStackProvider;->mKey:Lcom/google/inject/Key;

    .line 41
    invoke-virtual {v0, v2}, Lcom/facebook/inject/DebugClassGraphBuilder;->startProviderCall(Lcom/google/inject/Key;)Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 43
    const/4 v3, 0x0

    .line 45
    :try_start_2
    iget-object v0, p0, Lcom/facebook/inject/ProvisioningDebugStackProvider;->mDelegate:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 49
    :try_start_3
    sget-object v3, Lcom/facebook/inject/ProvisioningDebugStackProvider;->DEBUG_CLASS_GRAPH_BUILDER:Lcom/facebook/inject/DebugClassGraphBuilder;

    invoke-virtual {v3, v2, v0}, Lcom/facebook/inject/DebugClassGraphBuilder;->stopProviderCall(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    const-wide/16 v2, 0xa

    :try_start_4
    invoke-static {v2, v3}, Lcom/facebook/debug/tracer/Tracer;->stopTracer(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 57
    :cond_1
    invoke-static {}, Lcom/facebook/inject/ProvisioningDebugStack;->pop()V

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_5
    sget-object v4, Lcom/facebook/inject/ProvisioningDebugStackProvider;->DEBUG_CLASS_GRAPH_BUILDER:Lcom/facebook/inject/DebugClassGraphBuilder;

    invoke-virtual {v4, v2, v3}, Lcom/facebook/inject/DebugClassGraphBuilder;->stopProviderCall(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;Ljava/lang/Object;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 52
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_2

    .line 53
    const-wide/16 v2, 0xa

    :try_start_6
    invoke-static {v2, v3}, Lcom/facebook/debug/tracer/Tracer;->stopTracer(J)V

    :cond_2
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 57
    :catchall_2
    move-exception v0

    invoke-static {}, Lcom/facebook/inject/ProvisioningDebugStack;->pop()V

    throw v0
.end method
