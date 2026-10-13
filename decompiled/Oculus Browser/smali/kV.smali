.class public LkV;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LLV;

.field public final synthetic x:LnV;


# direct methods
.method public constructor <init>(LnV;LLV;)V
    .locals 0

    .line 1
    iput-object p1, p0, LkV;->x:LnV;

    iput-object p2, p0, LkV;->w:LLV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LkV;->x:LnV;

    iget-object v0, v0, LnV;->a:LKV;

    iget-object v1, p0, LkV;->w:LLV;

    invoke-interface {v0, v1}, LKV;->b(LLV;)V

    return-void
.end method
