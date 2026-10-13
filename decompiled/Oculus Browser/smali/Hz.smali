.class public final synthetic LHz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LJz;


# direct methods
.method public constructor <init>(LJz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHz;->w:LJz;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LHz;->w:LJz;

    .line 1
    iget-object v0, v0, LJz;->g:Lrw;

    check-cast v0, Lmb0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmb0;->a(I)V

    return-void
.end method
