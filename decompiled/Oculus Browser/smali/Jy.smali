.class public final synthetic LJy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LJx;


# direct methods
.method public constructor <init>(LJx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJy;->w:LJx;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LJy;->w:LJx;

    .line 1
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object v1

    invoke-interface {v0, v1}, LJx;->a(Ljava/lang/Object;)V

    return-void
.end method
