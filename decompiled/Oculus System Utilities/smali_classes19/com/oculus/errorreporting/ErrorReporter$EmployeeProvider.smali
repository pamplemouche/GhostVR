.class final Lcom/oculus/errorreporting/ErrorReporter$EmployeeProvider;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/errorreporting/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmployeeProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/facebook/common/util/TriState;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsTrustedUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "isTrustedUserProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/oculus/errorreporting/ErrorReporter$EmployeeProvider;->mIsTrustedUserProvider:Ljavax/inject/Provider;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Ljavax/inject/Provider;Lcom/oculus/errorreporting/ErrorReporter$1;)V
    .locals 0
    .param p1, "x0"    # Ljavax/inject/Provider;
    .param p2, "x1"    # Lcom/oculus/errorreporting/ErrorReporter$1;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/oculus/errorreporting/ErrorReporter$EmployeeProvider;-><init>(Ljavax/inject/Provider;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/common/util/TriState;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oculus/errorreporting/ErrorReporter$EmployeeProvider;->mIsTrustedUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/facebook/common/util/TriState;->valueOf(Ljava/lang/Boolean;)Lcom/facebook/common/util/TriState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/oculus/errorreporting/ErrorReporter$EmployeeProvider;->get()Lcom/facebook/common/util/TriState;

    move-result-object v0

    return-object v0
.end method
