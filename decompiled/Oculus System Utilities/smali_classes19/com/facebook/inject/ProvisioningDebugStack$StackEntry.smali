.class Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;
.super Ljava/lang/Object;
.source "ProvisioningDebugStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/inject/ProvisioningDebugStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StackEntry"
.end annotation


# instance fields
.field final key:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation
.end field

.field final stackType:Lcom/facebook/inject/ProvisioningDebugStack$StackType;


# direct methods
.method constructor <init>(Lcom/facebook/inject/ProvisioningDebugStack$StackType;Lcom/google/inject/Key;)V
    .locals 0
    .param p1, "stackType"    # Lcom/facebook/inject/ProvisioningDebugStack$StackType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/ProvisioningDebugStack$StackType;",
            "Lcom/google/inject/Key",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;->stackType:Lcom/facebook/inject/ProvisioningDebugStack$StackType;

    .line 28
    iput-object p2, p0, Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;->key:Lcom/google/inject/Key;

    .line 29
    return-void
.end method
