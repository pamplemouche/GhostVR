.class public LoF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LvF0;


# instance fields
.field public final synthetic a:LpF0;


# direct methods
.method public constructor <init>(LpF0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LoF0;->a:LpF0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, LoF0;->a:LpF0;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, LpF0;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
