.class public final synthetic Luu0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LBu0;


# direct methods
.method public constructor <init>(LBu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luu0;->w:LBu0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Luu0;->w:LBu0;

    .line 1
    iget-boolean v1, v0, LBu0;->A:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, LBu0;->A:Z

    .line 3
    iget-object v0, v0, LBu0;->x:Ls10;

    .line 4
    iget-object v0, v0, Ls10;->a:Lr10;

    invoke-interface {v0}, Lr10;->a()V

    :goto_0
    return-void
.end method
