.class public LNV;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LOV;


# direct methods
.method public constructor <init>(LOV;)V
    .locals 0

    .line 1
    iput-object p1, p0, LNV;->w:LOV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LNV;->w:LOV;

    iget-object v1, v0, LOV;->c:LRV;

    const/4 v2, 0x0

    .line 2
    iput-object v2, v1, LRV;->g:LLV;

    .line 3
    iget-boolean v2, v0, LOV;->a:Z

    iget-boolean v0, v0, LOV;->b:Z

    invoke-virtual {v1, v2, v0}, LRV;->a(ZZ)Z

    return-void
.end method
