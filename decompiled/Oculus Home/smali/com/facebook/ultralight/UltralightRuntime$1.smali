.class final Lcom/facebook/ultralight/UltralightRuntime$1;
.super Ljava/lang/Object;
.source "UltralightRuntime.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ultralight/UltralightRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/facebook/ultralight/UltralightRuntime;->throwLocalInjectionTooEarly()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
