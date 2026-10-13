.class final Lcom/facebook/inject/Lazies$1;
.super Ljava/lang/Object;
.source "Lazies.java"

# interfaces
.implements Lcom/facebook/inject/Lazy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/inject/Lazies;->of(Ljava/lang/Object;)Lcom/facebook/inject/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/inject/Lazy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/facebook/inject/Lazies$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/inject/Lazies$1;->val$value:Ljava/lang/Object;

    return-object v0
.end method
