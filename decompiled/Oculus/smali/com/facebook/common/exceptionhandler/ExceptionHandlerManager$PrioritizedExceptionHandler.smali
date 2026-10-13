.class Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandlerManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrioritizedExceptionHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;",
        ">;"
    }
.end annotation


# instance fields
.field handler:Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;

.field priority:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$1;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;)I
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;->priority:I

    iget v1, p1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;->priority:I

    if-ne v0, v1, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;->priority:I

    iget v1, p1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;->priority:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;

    invoke-virtual {p0, p1}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;->compareTo(Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;)I

    move-result v0

    return v0
.end method
