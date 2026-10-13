.class public abstract Lcom/facebook/ultralight/UltralightRuntime;
.super Ljava/lang/Object;
.source "UltralightRuntime.java"


# static fields
.field public static final NULL_LAZY:Lcom/facebook/inject/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Lazy",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final NULL_PROVIDER:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/facebook/ultralight/UltralightRuntime$1;

    invoke-direct {v0}, Lcom/facebook/ultralight/UltralightRuntime$1;-><init>()V

    sput-object v0, Lcom/facebook/ultralight/UltralightRuntime;->NULL_PROVIDER:Ljavax/inject/Provider;

    .line 21
    new-instance v0, Lcom/facebook/ultralight/UltralightRuntime$2;

    invoke-direct {v0}, Lcom/facebook/ultralight/UltralightRuntime$2;-><init>()V

    sput-object v0, Lcom/facebook/ultralight/UltralightRuntime;->NULL_LAZY:Lcom/facebook/inject/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static throwLocalInjectionTooEarly()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/facebook/ultralight/LocalInjectionBeforeInstanceInjectionException;

    const-string v1, "A local injection was attempted before the constructor completed or before injectMe was called."

    invoke-direct {v0, v1}, Lcom/facebook/ultralight/LocalInjectionBeforeInstanceInjectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
