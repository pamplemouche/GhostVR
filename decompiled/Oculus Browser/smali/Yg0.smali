.class public final synthetic LYg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LZg0;


# direct methods
.method public constructor <init>(LZg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LYg0;->w:LZg0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LYg0;->w:LZg0;

    .line 1
    iget-object v0, v0, LZg0;->w:Lch0;

    .line 2
    iget-object v1, v0, Lch0;->b:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lch0;->b:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
