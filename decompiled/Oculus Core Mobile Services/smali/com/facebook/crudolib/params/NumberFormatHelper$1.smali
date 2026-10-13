.class final Lcom/facebook/crudolib/params/NumberFormatHelper$1;
.super Ljava/lang/ThreadLocal;
.source "NumberFormatHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/crudolib/params/NumberFormatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/facebook/crudolib/params/NumberFormatHelper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public initialValue()Lcom/facebook/crudolib/params/NumberFormatHelper;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/facebook/crudolib/params/NumberFormatHelper;

    invoke-direct {v0}, Lcom/facebook/crudolib/params/NumberFormatHelper;-><init>()V

    return-object v0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/NumberFormatHelper$1;->initialValue()Lcom/facebook/crudolib/params/NumberFormatHelper;

    move-result-object v0

    return-object v0
.end method
