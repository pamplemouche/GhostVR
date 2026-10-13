.class public LSg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LE01;


# instance fields
.field public final synthetic a:LCg0;

.field public final synthetic b:LFg0;


# direct methods
.method public constructor <init>(LUg0;LCg0;LFg0;)V
    .locals 0

    .line 1
    iput-object p2, p0, LSg0;->a:LCg0;

    iput-object p3, p0, LSg0;->b:LFg0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, LSg0;->a:LCg0;

    invoke-interface {v0}, LCg0;->d()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, LSg0;->b:LFg0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LFg0;->a(Z)V

    return-void
.end method
