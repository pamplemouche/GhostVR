.class public LJQ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LNQ0;


# direct methods
.method public constructor <init>(LNQ0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LJQ0;->w:LNQ0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LJQ0;->w:LNQ0;

    .line 2
    iget-object v1, v0, LNQ0;->J:LYQ0;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, LNQ0;->b()V

    return-void
.end method
