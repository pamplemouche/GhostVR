.class public Ln01;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lp01;


# direct methods
.method public constructor <init>(Lp01;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln01;->w:Lp01;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln01;->w:Lp01;

    .line 2
    iget-object v0, v0, Lp01;->a:LU01;

    .line 3
    new-instance v1, LT01;

    invoke-direct {v1}, LT01;-><init>()V

    check-cast v0, Li01;

    invoke-virtual {v0, v1}, Li01;->a(LT01;)V

    return-void
.end method
