.class public Lzn0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LAn0;


# direct methods
.method public constructor <init>(LAn0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzn0;->w:LAn0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzn0;->w:LAn0;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, LAn0;->b(Z)V

    return-void
.end method
