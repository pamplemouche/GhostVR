.class public LRP0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LG71;


# instance fields
.field public final synthetic a:LSP0;


# direct methods
.method public constructor <init>(LSP0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LRP0;->a:LSP0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LRP0;->a:LSP0;

    .line 2
    iget-object v1, v0, LSP0;->C:Lorg/chromium/base/Callback;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 3
    invoke-virtual {v0}, LSP0;->e()V

    goto :goto_0

    :cond_1
    const-string v1, "Watcher reported error."

    .line 4
    invoke-virtual {v0, p1, v1}, LSP0;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
