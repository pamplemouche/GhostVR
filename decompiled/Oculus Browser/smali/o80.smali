.class public final synthetic Lo80;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lu80;


# direct methods
.method public constructor <init>(Lu80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo80;->w:Lu80;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo80;->w:Lu80;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {}, Laa0;->a()LeU0;

    move-result-object v1

    .line 2
    invoke-interface {v1, v0}, LeU0;->a(LdU0;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method
